package com.example.algamoney.api.repository.filter;

import lombok.Data;

import java.time.LocalDate;

@Data
public class LancamentoFilter {
    private String descricao;
    private LocalDate dataVencimentoDe;
    private LocalDate dataVencimentoAte;
}
