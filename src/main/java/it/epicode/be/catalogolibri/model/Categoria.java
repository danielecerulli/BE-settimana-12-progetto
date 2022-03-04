package it.epicode.be.catalogolibri.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;


import lombok.Data;

@Data
@Entity
public class Categoria {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String nomeCategoria;
	
	@ManyToMany
	@JoinTable(name = "categria_libro",
	joinColumns = @JoinColumn(name = "categoria_id", referencedColumnName = "id"),
	inverseJoinColumns = @JoinColumn(name = "libro_id", referencedColumnName = "id"))
	private List<Libro> libri = new ArrayList<>();

}
