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

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import lombok.Data;

@Data
@Entity
public class Autore {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@JsonProperty("id")
	private Integer id;
	private String nome;
	private String cognome;
	
	/*@ManyToMany
	@JoinTable(name = "autore_libro",
	joinColumns = @JoinColumn(name = "autore_id", referencedColumnName = "id"),
	inverseJoinColumns = @JoinColumn(name = "libro_id", referencedColumnName = "id"))
	@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
	private List<Libro> libri = new ArrayList<>();*/

}
