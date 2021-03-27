package com.example.algamoney.api.model;


import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Data
@Table(name = "pessoa")
public class Pessoa {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long codigo;

    @NotNull
    @Size(min = 2, max = 20)
    private String nome;

    @NotNull
    private boolean ativo;

    @Embedded
    private Endereco endereco;

}
