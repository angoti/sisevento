package com.professorangoti.sisevento.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode
@NoArgsConstructor
@Entity(name = "tb_atividade")
public class Atividade {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nome;
	private String descricao;
	private Double preco;
	@ManyToMany
	@JoinTable(name="tb_atividade_participante", joinColumns = @JoinColumn(name="atividade_id"), inverseJoinColumns = @JoinColumn(name="participante_id"))
	private Set<Participante> participantes = new HashSet<>();
	@OneToMany(mappedBy = "atividade")
	private List<Bloco> blocos = new ArrayList<>();
	@ManyToOne
	@JoinColumn(name = "categoria_id")
	private Categoria categoria;

}
