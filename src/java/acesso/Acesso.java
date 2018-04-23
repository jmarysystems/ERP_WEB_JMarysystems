/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package acesso;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author pc
 */
@Entity
@Table(name = "ACESSO", catalog = "", schema = "SCHEMAJMARY")
@NamedQueries({
    @NamedQuery(name = "Acesso.findAll", query = "SELECT a FROM Acesso a"),
    @NamedQuery(name = "Acesso.findById", query = "SELECT a FROM Acesso a WHERE a.id = :id"),
    @NamedQuery(name = "Acesso.findByComandodoacesso", query = "SELECT a FROM Acesso a WHERE a.comandodoacesso = :comandodoacesso"),
    @NamedQuery(name = "Acesso.findByDescricaodoacesso", query = "SELECT a FROM Acesso a WHERE a.descricaodoacesso = :descricaodoacesso"),
    @NamedQuery(name = "Acesso.findByIdUsuario", query = "SELECT a FROM Acesso a WHERE a.idUsuario = :idUsuario")})
public class Acesso implements Serializable {
    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "COMANDODOACESSO")
    private String comandodoacesso;
    @Column(name = "DESCRICAODOACESSO")
    private String descricaodoacesso;
    @Basic(optional = false)
    @Column(name = "ID_USUARIO")
    private int idUsuario;

    public Acesso() {
    }

    public Acesso(Integer id) {
        this.id = id;
    }

    public Acesso(Integer id, int idUsuario) {
        this.id = id;
        this.idUsuario = idUsuario;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        Integer oldId = this.id;
        this.id = id;
        changeSupport.firePropertyChange("id", oldId, id);
    }

    public String getComandodoacesso() {
        return comandodoacesso;
    }

    public void setComandodoacesso(String comandodoacesso) {
        String oldComandodoacesso = this.comandodoacesso;
        this.comandodoacesso = comandodoacesso;
        changeSupport.firePropertyChange("comandodoacesso", oldComandodoacesso, comandodoacesso);
    }

    public String getDescricaodoacesso() {
        return descricaodoacesso;
    }

    public void setDescricaodoacesso(String descricaodoacesso) {
        String oldDescricaodoacesso = this.descricaodoacesso;
        this.descricaodoacesso = descricaodoacesso;
        changeSupport.firePropertyChange("descricaodoacesso", oldDescricaodoacesso, descricaodoacesso);
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        int oldIdUsuario = this.idUsuario;
        this.idUsuario = idUsuario;
        changeSupport.firePropertyChange("idUsuario", oldIdUsuario, idUsuario);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Acesso)) {
            return false;
        }
        Acesso other = (Acesso) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "teste.Acesso[ id=" + id + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
