/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package usuario;

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
@Table(name = "USUARIO", catalog = "", schema = "SCHEMAJMARY")
@NamedQueries({
    @NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u"),
    @NamedQuery(name = "Usuario.findById", query = "SELECT u FROM Usuario u WHERE u.id = :id"),
    @NamedQuery(name = "Usuario.findByPermitiracesso", query = "SELECT u FROM Usuario u WHERE u.permitiracesso = :permitiracesso"),
    @NamedQuery(name = "Usuario.findByLogin", query = "SELECT u FROM Usuario u WHERE u.login = :login"),
    @NamedQuery(name = "Usuario.findBySenha", query = "SELECT u FROM Usuario u WHERE u.senha = :senha"),
    @NamedQuery(name = "Usuario.findByCadastrarmateria", query = "SELECT u FROM Usuario u WHERE u.cadastrarmateria = :cadastrarmateria"),
    @NamedQuery(name = "Usuario.findByCadastrarcategoria", query = "SELECT u FROM Usuario u WHERE u.cadastrarcategoria = :cadastrarcategoria"),
    @NamedQuery(name = "Usuario.findByCadastrarsubcategoria", query = "SELECT u FROM Usuario u WHERE u.cadastrarsubcategoria = :cadastrarsubcategoria"),
    @NamedQuery(name = "Usuario.findByCadastrarassunto", query = "SELECT u FROM Usuario u WHERE u.cadastrarassunto = :cadastrarassunto"),
    @NamedQuery(name = "Usuario.findByAlterarmateria", query = "SELECT u FROM Usuario u WHERE u.alterarmateria = :alterarmateria"),
    @NamedQuery(name = "Usuario.findByAlterarcategoria", query = "SELECT u FROM Usuario u WHERE u.alterarcategoria = :alterarcategoria"),
    @NamedQuery(name = "Usuario.findByAlterarsubcategoria", query = "SELECT u FROM Usuario u WHERE u.alterarsubcategoria = :alterarsubcategoria"),
    @NamedQuery(name = "Usuario.findByAlterarassunto", query = "SELECT u FROM Usuario u WHERE u.alterarassunto = :alterarassunto"),
    @NamedQuery(name = "Usuario.findByExcluirmateria", query = "SELECT u FROM Usuario u WHERE u.excluirmateria = :excluirmateria"),
    @NamedQuery(name = "Usuario.findByExcluircategoria", query = "SELECT u FROM Usuario u WHERE u.excluircategoria = :excluircategoria"),
    @NamedQuery(name = "Usuario.findByExcluirsubcategoria", query = "SELECT u FROM Usuario u WHERE u.excluirsubcategoria = :excluirsubcategoria"),
    @NamedQuery(name = "Usuario.findByExcluirassunto", query = "SELECT u FROM Usuario u WHERE u.excluirassunto = :excluirassunto"),
    @NamedQuery(name = "Usuario.findByPesquisarmateria", query = "SELECT u FROM Usuario u WHERE u.pesquisarmateria = :pesquisarmateria"),
    @NamedQuery(name = "Usuario.findByPesquisarcategoria", query = "SELECT u FROM Usuario u WHERE u.pesquisarcategoria = :pesquisarcategoria"),
    @NamedQuery(name = "Usuario.findByPesquisarsubcategoria", query = "SELECT u FROM Usuario u WHERE u.pesquisarsubcategoria = :pesquisarsubcategoria"),
    @NamedQuery(name = "Usuario.findByPesquisarassunto", query = "SELECT u FROM Usuario u WHERE u.pesquisarassunto = :pesquisarassunto")})
public class Usuario implements Serializable {
    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID", nullable = false)
    private Integer id;
    @Column(name = "PERMITIRACESSO")
    private Boolean permitiracesso;
    @Column(name = "LOGIN", length = 300)
    private String login;
    @Column(name = "SENHA", length = 300)
    private String senha;
    @Column(name = "CADASTRARMATERIA")
    private Boolean cadastrarmateria;
    @Column(name = "CADASTRARCATEGORIA")
    private Boolean cadastrarcategoria;
    @Column(name = "CADASTRARSUBCATEGORIA")
    private Boolean cadastrarsubcategoria;
    @Column(name = "CADASTRARASSUNTO")
    private Boolean cadastrarassunto;
    @Column(name = "ALTERARMATERIA")
    private Boolean alterarmateria;
    @Column(name = "ALTERARCATEGORIA")
    private Boolean alterarcategoria;
    @Column(name = "ALTERARSUBCATEGORIA")
    private Boolean alterarsubcategoria;
    @Column(name = "ALTERARASSUNTO")
    private Boolean alterarassunto;
    @Column(name = "EXCLUIRMATERIA")
    private Boolean excluirmateria;
    @Column(name = "EXCLUIRCATEGORIA")
    private Boolean excluircategoria;
    @Column(name = "EXCLUIRSUBCATEGORIA")
    private Boolean excluirsubcategoria;
    @Column(name = "EXCLUIRASSUNTO")
    private Boolean excluirassunto;
    @Column(name = "PESQUISARMATERIA")
    private Boolean pesquisarmateria;
    @Column(name = "PESQUISARCATEGORIA")
    private Boolean pesquisarcategoria;
    @Column(name = "PESQUISARSUBCATEGORIA")
    private Boolean pesquisarsubcategoria;
    @Column(name = "PESQUISARASSUNTO")
    private Boolean pesquisarassunto;

    public Usuario() {
    }

    public Usuario(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        Integer oldId = this.id;
        this.id = id;
        changeSupport.firePropertyChange("id", oldId, id);
    }

    public Boolean getPermitiracesso() {
        return permitiracesso;
    }

    public void setPermitiracesso(Boolean permitiracesso) {
        Boolean oldPermitiracesso = this.permitiracesso;
        this.permitiracesso = permitiracesso;
        changeSupport.firePropertyChange("permitiracesso", oldPermitiracesso, permitiracesso);
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        String oldLogin = this.login;
        this.login = login;
        changeSupport.firePropertyChange("login", oldLogin, login);
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        String oldSenha = this.senha;
        this.senha = senha;
        changeSupport.firePropertyChange("senha", oldSenha, senha);
    }

    public Boolean getCadastrarmateria() {
        return cadastrarmateria;
    }

    public void setCadastrarmateria(Boolean cadastrarmateria) {
        Boolean oldCadastrarmateria = this.cadastrarmateria;
        this.cadastrarmateria = cadastrarmateria;
        changeSupport.firePropertyChange("cadastrarmateria", oldCadastrarmateria, cadastrarmateria);
    }

    public Boolean getCadastrarcategoria() {
        return cadastrarcategoria;
    }

    public void setCadastrarcategoria(Boolean cadastrarcategoria) {
        Boolean oldCadastrarcategoria = this.cadastrarcategoria;
        this.cadastrarcategoria = cadastrarcategoria;
        changeSupport.firePropertyChange("cadastrarcategoria", oldCadastrarcategoria, cadastrarcategoria);
    }

    public Boolean getCadastrarsubcategoria() {
        return cadastrarsubcategoria;
    }

    public void setCadastrarsubcategoria(Boolean cadastrarsubcategoria) {
        Boolean oldCadastrarsubcategoria = this.cadastrarsubcategoria;
        this.cadastrarsubcategoria = cadastrarsubcategoria;
        changeSupport.firePropertyChange("cadastrarsubcategoria", oldCadastrarsubcategoria, cadastrarsubcategoria);
    }

    public Boolean getCadastrarassunto() {
        return cadastrarassunto;
    }

    public void setCadastrarassunto(Boolean cadastrarassunto) {
        Boolean oldCadastrarassunto = this.cadastrarassunto;
        this.cadastrarassunto = cadastrarassunto;
        changeSupport.firePropertyChange("cadastrarassunto", oldCadastrarassunto, cadastrarassunto);
    }

    public Boolean getAlterarmateria() {
        return alterarmateria;
    }

    public void setAlterarmateria(Boolean alterarmateria) {
        Boolean oldAlterarmateria = this.alterarmateria;
        this.alterarmateria = alterarmateria;
        changeSupport.firePropertyChange("alterarmateria", oldAlterarmateria, alterarmateria);
    }

    public Boolean getAlterarcategoria() {
        return alterarcategoria;
    }

    public void setAlterarcategoria(Boolean alterarcategoria) {
        Boolean oldAlterarcategoria = this.alterarcategoria;
        this.alterarcategoria = alterarcategoria;
        changeSupport.firePropertyChange("alterarcategoria", oldAlterarcategoria, alterarcategoria);
    }

    public Boolean getAlterarsubcategoria() {
        return alterarsubcategoria;
    }

    public void setAlterarsubcategoria(Boolean alterarsubcategoria) {
        Boolean oldAlterarsubcategoria = this.alterarsubcategoria;
        this.alterarsubcategoria = alterarsubcategoria;
        changeSupport.firePropertyChange("alterarsubcategoria", oldAlterarsubcategoria, alterarsubcategoria);
    }

    public Boolean getAlterarassunto() {
        return alterarassunto;
    }

    public void setAlterarassunto(Boolean alterarassunto) {
        Boolean oldAlterarassunto = this.alterarassunto;
        this.alterarassunto = alterarassunto;
        changeSupport.firePropertyChange("alterarassunto", oldAlterarassunto, alterarassunto);
    }

    public Boolean getExcluirmateria() {
        return excluirmateria;
    }

    public void setExcluirmateria(Boolean excluirmateria) {
        Boolean oldExcluirmateria = this.excluirmateria;
        this.excluirmateria = excluirmateria;
        changeSupport.firePropertyChange("excluirmateria", oldExcluirmateria, excluirmateria);
    }

    public Boolean getExcluircategoria() {
        return excluircategoria;
    }

    public void setExcluircategoria(Boolean excluircategoria) {
        Boolean oldExcluircategoria = this.excluircategoria;
        this.excluircategoria = excluircategoria;
        changeSupport.firePropertyChange("excluircategoria", oldExcluircategoria, excluircategoria);
    }

    public Boolean getExcluirsubcategoria() {
        return excluirsubcategoria;
    }

    public void setExcluirsubcategoria(Boolean excluirsubcategoria) {
        Boolean oldExcluirsubcategoria = this.excluirsubcategoria;
        this.excluirsubcategoria = excluirsubcategoria;
        changeSupport.firePropertyChange("excluirsubcategoria", oldExcluirsubcategoria, excluirsubcategoria);
    }

    public Boolean getExcluirassunto() {
        return excluirassunto;
    }

    public void setExcluirassunto(Boolean excluirassunto) {
        Boolean oldExcluirassunto = this.excluirassunto;
        this.excluirassunto = excluirassunto;
        changeSupport.firePropertyChange("excluirassunto", oldExcluirassunto, excluirassunto);
    }

    public Boolean getPesquisarmateria() {
        return pesquisarmateria;
    }

    public void setPesquisarmateria(Boolean pesquisarmateria) {
        Boolean oldPesquisarmateria = this.pesquisarmateria;
        this.pesquisarmateria = pesquisarmateria;
        changeSupport.firePropertyChange("pesquisarmateria", oldPesquisarmateria, pesquisarmateria);
    }

    public Boolean getPesquisarcategoria() {
        return pesquisarcategoria;
    }

    public void setPesquisarcategoria(Boolean pesquisarcategoria) {
        Boolean oldPesquisarcategoria = this.pesquisarcategoria;
        this.pesquisarcategoria = pesquisarcategoria;
        changeSupport.firePropertyChange("pesquisarcategoria", oldPesquisarcategoria, pesquisarcategoria);
    }

    public Boolean getPesquisarsubcategoria() {
        return pesquisarsubcategoria;
    }

    public void setPesquisarsubcategoria(Boolean pesquisarsubcategoria) {
        Boolean oldPesquisarsubcategoria = this.pesquisarsubcategoria;
        this.pesquisarsubcategoria = pesquisarsubcategoria;
        changeSupport.firePropertyChange("pesquisarsubcategoria", oldPesquisarsubcategoria, pesquisarsubcategoria);
    }

    public Boolean getPesquisarassunto() {
        return pesquisarassunto;
    }

    public void setPesquisarassunto(Boolean pesquisarassunto) {
        Boolean oldPesquisarassunto = this.pesquisarassunto;
        this.pesquisarassunto = pesquisarassunto;
        changeSupport.firePropertyChange("pesquisarassunto", oldPesquisarassunto, pesquisarassunto);
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
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "teste.Usuario[ id=" + id + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
