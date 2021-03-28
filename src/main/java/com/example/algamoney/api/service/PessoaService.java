package com.example.algamoney.api.service;

import com.example.algamoney.api.model.Pessoa;
import com.example.algamoney.api.repository.PessoaRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.BeanUtils;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@AllArgsConstructor
@Service
public class PessoaService {

    private final PessoaRepository pessoaRepository;

    public Pessoa atualizar(Long codigo, Pessoa pessoa){
        Pessoa pessoaSalva = buscarPessoaPeloCodigo(codigo);
        BeanUtils.copyProperties(pessoa, pessoaSalva,"codigo");
        return pessoaRepository.save(pessoaSalva);
    }

    public void atualizarPropriedadeAtivo(Long codigo, Boolean ativo){
        Pessoa pessoaSalva = buscarPessoaPeloCodigo(codigo);
        pessoaSalva.setAtivo(ativo);
        pessoaRepository.save(pessoaSalva);

    }

    private Pessoa buscarPessoaPeloCodigo(Long codigo) {
        Optional<Pessoa> op = pessoaRepository.findById(codigo);
        if (!op.isPresent()) {
            throw new EmptyResultDataAccessException(1);
        }
        return op.get();
    }
}
