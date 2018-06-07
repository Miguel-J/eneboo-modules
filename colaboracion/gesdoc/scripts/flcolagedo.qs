/***************************************************************************
                 flcolagedo.qs  -  description
                             -------------------
    begin                : jue jul 20 2006
    copyright            : (C) 2006 by InfoSiAL S.L.
    email                : mail@infosial.com
 ***************************************************************************/
/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

/** @file */

/** @class_declaration interna */
////////////////////////////////////////////////////////////////////////////
//// DECLARACION ///////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//// INTERNA /////////////////////////////////////////////////////
class interna {
	var ctx;
	function interna( context ) { this.ctx = context; }
	function init() {
		this.ctx.interna_init();
	}
	function beforeCommit_gd_documentos(curDocumento) {
		return this.ctx.interna_beforeCommit_gd_documentos(curDocumento);
	}
	function afterCommit_gd_documentos(curDocumento) {
		return this.ctx.interna_afterCommit_gd_documentos(curDocumento);
	}
	function afterCommit_gd_conexiones(curC) {
		return this.ctx.interna_afterCommit_gd_conexiones(curC);
	}
}
//// INTERNA /////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////

/** @class_declaration oficial */
//////////////////////////////////////////////////////////////////
//// OFICIAL /////////////////////////////////////////////////////
class oficial extends interna {
	var version_ = "2.4.0";
	var cxBdRepo_;
	var tipoActual_;
	var itemActual_;
	var pathLocal;
	var tipoRepositorio_;
	var urlRepositorio_;
	var container_;
	var cursor_;
	var tipoObjetoRaiz_;
	var curDocumento_;
	var comandoCP_;
	function oficial( context ) { interna( context ); }
	function valoresIniciales() {
		return this.ctx.oficial_valoresIniciales();
	}
	function siguienteNumero(tipoDoc) {
		return this.ctx.oficial_siguienteNumero(tipoDoc);
	}
	function gestionDocumentalOn(container, datosGD) {
		return this.ctx.oficial_gestionDocumentalOn(container, datosGD);
	}
	function gestionDocumentalOff() {
		return this.ctx.oficial_gestionDocumentalOff();
	}
	function ejecutarComando(comando, workdir) {
		return this.ctx.oficial_ejecutarComando(comando, workdir);
	}
	function ejecutarQry(tabla, campos, where, listaTablas) {
		return this.ctx.oficial_ejecutarQry(tabla, campos, where, listaTablas);
	}
	function cerosIzquierda(numero, totalCifras) {
		return this.ctx.oficial_cerosIzquierda(numero, totalCifras);
	}
	function bdBorrarDocRepo(codigo, idConexion) {
		return this.ctx.oficial_bdBorrarDocRepo(codigo, idConexion);
	}
	function ejecutarComandoAsincrono(comando) {
		return this.ctx.oficial_ejecutarComandoAsincrono(comando);
	}
	function obtenerRevision(codDocumento) {
		return this.ctx.oficial_obtenerRevision(codDocumento);
	}
	function verificarDirLocal(url) {
		return this.ctx.oficial_verificarDirLocal(url);
	}
	function svnUp(nombre, version, revision, rutaReposotorio) {
		return this.ctx.oficial_svnUp(nombre, version, revision, rutaReposotorio);
	}
	function svnStatus(nombre, version) {
		return this.ctx.oficial_svnStatus(nombre, version);
	}
	function dirUp(nombre, version) {
		return this.ctx.oficial_dirUp(nombre, version);
	}
	function distUp(nombre, rutaRepositorio) {
		return this.ctx.oficial_distUp(nombre, rutaRepositorio);
	}
	function dirStatus(nombre, version) {
		return this.ctx.oficial_dirStatus(nombre, version);
	}
	function distStatus(nombre, rutaRepositorio) {
		return this.ctx.oficial_distStatus(nombre, rutaRepositorio);
	}
	function borrarDocRepo(codigo, idConexion) {
		return this.ctx.oficial_borrarDocRepo(codigo, idConexion);
	}
	function dirBorrarDocRepo(codigo) {
		return this.ctx.oficial_dirBorrarDocRepo(codigo);
	}
	function dameCxBdDocs(nomCx) {
		return this.ctx.oficial_dameCxBdDocs(nomCx);
	}
	function conectaBdDocs(nombreBd, dbDocs) {
		return this.ctx.oficial_conectaBdDocs(nombreBd, dbDocs);
	}
	function bdSubirDocumento(curD, comentario, rutaDoc) {
		return this.ctx.oficial_bdSubirDocumento(curD, comentario, rutaDoc);
	}
	function subirDocumento(nombre, comentario, rutaDoc) {
		return this.ctx.oficial_subirDocumento(nombre, comentario, rutaDoc);
	}
	function dirSubirDocumento(nombre, comentario) {
		return this.ctx.oficial_dirSubirDocumento(nombre, comentario);
	}
	function distSubirDocumento(curDocumento, comentario) {
		return this.ctx.oficial_distSubirDocumento(curDocumento, comentario);
	}
	function copiarDocRepo(codDocumento, pathDoc, version) {
		return this.ctx.oficial_copiarDocRepo(codDocumento, pathDoc, version);
	}
	function obtenerPathLocal() {
		return this.ctx.oficial_obtenerPathLocal();
	}
	function bdObtenerDocumento(codDocumento, pathDirectorio, version, revision, rutaRepositorio) {
		return this.ctx.oficial_bdObtenerDocumento(codDocumento, pathDirectorio, version, revision, rutaRepositorio);
	}
	function obtenerDocumento(codDocumento, pathDirectorio, version, revision, rutaRepositorio) {
		return this.ctx.oficial_obtenerDocumento(codDocumento, pathDirectorio, version, revision, rutaRepositorio);
	}
	function obtenerCodigoDoc(tipo) {
		return this.ctx.oficial_obtenerCodigoDoc(tipo);
	}
	function asociarDocumento(idDocumento, tipoObjeto, idContenedor) {
		return this.ctx.oficial_asociarDocumento(idDocumento, tipoObjeto, idContenedor);
	}
	function abrirDocumentoGD(item) {
		return this.ctx.oficial_abrirDocumentoGD(item);
	}
	function cambiarSeleccionGD(item) {
		return this.ctx.oficial_cambiarSeleccionGD(item);
	}
	function editarDocumentoGD(item) {
		return this.ctx.oficial_editarDocumentoGD(item);
	}
	function enviarDocEmail() {
		return this.ctx.oficial_enviarDocEmail();
	}
	function asociarDoc_clickedGD() {
		return this.ctx.oficial_asociarDoc_clickedGD();
	}
	function quitarDoc_clickedGD() {
		return this.ctx.oficial_quitarDoc_clickedGD();
	}
	function comprobarDependenciasGD(idDocumento, tipoObjeto, idContenedor) {
		return this.ctx.oficial_comprobarDependenciasGD(idDocumento, tipoObjeto, idContenedor);
	}
	function crearDocumentoGD() {
		return this.ctx.oficial_crearDocumentoGD();
	}
	function borrarDocumentoGD() {
		return this.ctx.oficial_borrarDocumentoGD();
	}
	function verDocumentoGD() {
		return this.ctx.oficial_verDocumentoGD();
	}
	function bajarDocumentoGD() {
		return this.ctx.oficial_bajarDocumentoGD();
	}
	function vincularDocumentoGD() {
		return this.ctx.oficial_vincularDocumentoGD();
	}
	function verificarConfiguracion() {
		return this.ctx.oficial_verificarConfiguracion();
	}
	function datosUsrFecha(idUsuario, fecha, hora) {
		return this.ctx.oficial_datosUsrFecha(idUsuario, fecha, hora);
	}
	function datosItemActual() {
		return this.ctx.oficial_datosItemActual();
	}
	function abrirItemActual() {
		return this.ctx.oficial_abrirItemActual();
	}
	function mostrarDocsRelacionados(item, tipoObjeto, clave) {
		return this.ctx.oficial_mostrarDocsRelacionados(item, tipoObjeto, clave);
	}
	function nombreObjetoContenedor(tipoObjeto, clave) {
		return this.ctx.oficial_nombreObjetoContenedor(tipoObjeto, clave);
	}
	function dameObjetoVinculado(eVinculos, tipoObjeto) {
		return this.ctx.oficial_dameObjetoVinculado(eVinculos, tipoObjeto);
	}
	function crearDocumento(codTipo, nombre, prefijo, masDatos) {
		return this.ctx.oficial_crearDocumento(codTipo, nombre, prefijo, masDatos);
	}
	function valorCampoPlantilla(codTipo, campo, eDoc) {
		return this.ctx.oficial_valorCampoPlantilla(codTipo, campo, eDoc);
	}
	function generarProcesoDoc(curDocumento) {
		return this.ctx.oficial_generarProcesoDoc(curDocumento);
	}
	function borrarDocumento(idDocumento) {
		return this.ctx.oficial_borrarDocumento(idDocumento);
	}
	function borrarContenidoContenedor(idDocContenedor) {
		return this.ctx.oficial_borrarContenidoContenedor(idDocContenedor);
	}
	function datosDocumento(datos) {
		return this.ctx.oficial_datosDocumento(datos);
	}
	function adaptarRuta(ruta) {
		return this.ctx.oficial_adaptarRuta(ruta);
	}
	function obtenerTipoRepositorio() {
		return this.ctx.oficial_obtenerTipoRepositorio();
	}
	function valorTablaPlantilla(codTipo, campos, eDoc) {
		return this.ctx.oficial_valorTablaPlantilla(codTipo, campos, eDoc);
	}
	function tbnCreaMultiGD_clicked() {
		return this.ctx.oficial_tbnCreaMultiGD_clicked();
	}
	function subirDocCursor(cursor, pathFichero) {
		return this.ctx.oficial_subirDocCursor(cursor, pathFichero);
	}
	function comprobarDocumentosBD() {
		return this.ctx.oficial_comprobarDocumentosBD();
	}
}
//// OFICIAL /////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////

/** @class_declaration head */
/////////////////////////////////////////////////////////////////
//// DESARROLLO /////////////////////////////////////////////////
class head extends oficial {
	function head( context ) { oficial ( context ); }
}
//// DESARROLLO /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_declaration ifaceCtx */
/////////////////////////////////////////////////////////////////
//// INTERFACE  /////////////////////////////////////////////////
class ifaceCtx extends head {
	function ifaceCtx( context ) { head( context ); }
	function pub_gestionDocumentalOn(container, datosGD) {
		return this.gestionDocumentalOn(container, datosGD);
	}
	function pub_gestionDocumentalOff() {
		return this.gestionDocumentalOff();
	}
	function pub_svnUp(nombre, version, revision, rutaRepositorio) {
		return this.svnUp(nombre, version, revision, rutaRepositorio);
	}
	function pub_svnStatus(nombre, version) {
		return this.svnStatus(nombre, version);
	}
	function pub_copiarDocRepo(codDocumento, pathDoc, version) {
		return this.copiarDocRepo(codDocumento, pathDoc, version);
	}
	function pub_obtenerPathLocal() {
		return this.obtenerPathLocal();
	}
	function pub_ejecutarComando(comando, workdir) {
		return this.ejecutarComando(comando, workdir);
	}
	function pub_ejecutarComandoAsincrono(comando) {
		return this.ejecutarComandoAsincrono(comando);
	}
	function pub_obtenerDocumento(codDocumento, pathDirectorio, version, revision, rutaRepositorio) {
		return this.obtenerDocumento(codDocumento, pathDirectorio, version, revision, rutaRepositorio);
	}
	function pub_obtenerCodigoDoc(tipo) {
		return this.obtenerCodigoDoc(tipo);
	}
	function pub_subirDocumento(nombre, comentario, rutaDoc) {
		return this.subirDocumento(nombre, comentario, rutaDoc);
	}
	function pub_asociarDocumento(idDocumento, tipoObjeto, idContenedor) {
		return this.asociarDocumento(idDocumento, tipoObjeto, idContenedor);
	}
	function pub_datosItemActual() {
		return this.datosItemActual();
	}
	function pub_abrirItemActual() {
		return this.abrirItemActual();
	}
	function pub_dameObjetoVinculado(eVinculos, tipoObjeto) {
		return this.dameObjetoVinculado(eVinculos, tipoObjeto);
	}
	function pub_crearDocumento(codTipo, nombre, prefijo, masDatos) {
		return this.crearDocumento(codTipo, nombre, prefijo, masDatos);
	}
	function pub_valorCampoPlantilla(codTipo, campo, eDoc) {
		return this.valorCampoPlantilla(codTipo, campo, eDoc);
	}
	function pub_adaptarRuta(ruta) {
		return this.adaptarRuta(ruta);
	}
	function pub_obtenerTipoRepositorio() {
		return this.obtenerTipoRepositorio();
	}
	function pub_valorTablaPlantilla(codTipo, campos, eDoc) {
		return this.valorTablaPlantilla(codTipo, campos, eDoc);
	}
	function pub_subirDocCursor(cursor, pathFichero) {
		return this.subirDocCursor(cursor, pathFichero);
	}
}

const iface = new ifaceCtx( this );
//// INTERFACE  /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition interna */
////////////////////////////////////////////////////////////////////////////
//// DEFINICION ////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////
//// INTERNA /////////////////////////////////////////////////////
function interna_init()
{
	var _i = this.iface;

	var cursor = new FLSqlCursor("gd_tiposdoc");
	cursor.select();
	if (!cursor.first()) {
		sys.infoMsgBox(sys.translate("Se insertar�n los tipos de documento por defecto para empezar a trabajar."));
		_i.valoresIniciales();
		this.execMainScript("gd_config");
	}
	
	if(!_i.verificarConfiguracion())
		return false;
	_i.comprobarDocumentosBD();
}

function interna_beforeCommit_gd_documentos(curDocumento:FLSqlCursor):Boolean
{
	var util:FLUtil = new FLUtil;
	switch (curDocumento.modeAccess()) {
		/** \C Alta: Se obtiene un c�digo �nico que ser� el nombre del documento en el repositorio
		\end */
		case curDocumento.Insert: {
			var codigo:String;
			if (curDocumento.valueBuffer("codigo") == "0") {
				codigo = this.iface.obtenerCodigoDoc("general");
				curDocumento.setValueBuffer("codigo", codigo);
			}
			if (curDocumento.isNull("estado")) {
				var estado:String = util.sqlSelect("gd_tiposdoc", "estadoinicial", "codtipo = '" + curDocumento.valueBuffer("codtipo") + "'");
				curDocumento.setValueBuffer("estado", estado);
			}
			break;
		}
		case curDocumento.Del: {
			if (util.sqlSelect("gd_tiposdoc", "contenedor", "codtipo = '" + curDocumento.valueBuffer("codtipo") + "'")) {
				if (!this.iface.borrarContenidoContenedor(curDocumento.valueBuffer("iddocumento"))) {
					return false;
				}
			}
			break;
		}
	}
	return true;
}

function interna_afterCommit_gd_documentos(curDocumento)
{
	var _i = this.iface;

	switch (curDocumento.modeAccess()) {
		/** \C Alta: El documento se asocia al contenedor desde donde se ha creado
		\end */
		case curDocumento.Insert: {
			if (sys.isLoadedModule("flcolaproc")) {
				if (!_i.generarProcesoDoc(curDocumento)) {
					return false;
				}
			}
			break;
		}
		case curDocumento.Edit: {
			break;
		}
		case curDocumento.Del: {
			if (sys.isLoadedModule("flcolaproc")) {
				if (!flcolaproc.iface.pub_borrarProcesosAsociados("gd_documentos", curDocumento.valueBuffer("iddocumento"))) {
					sys.warnMsgBox(sys.translate("Error al borrar los procesos asociados al documento %1: %2").arg(curDocumento.valueBuffer("codigo")).arg(curDocumento.valueBuffer("nombre")));
					return false;
				}
			}
			break;
		}
	}
	return true;
}

function interna_afterCommit_gd_conexiones(curC)
{
	var _i = this.iface;

	if(!_i.cxBdRepo_ || _i.cxBdRepo_ == undefined)
		return true;

	if(curC.modeAccess() == curC.Insert) {
		var objConn = {};
		objConn.servidor = curC.valueBuffer("servidor");
		objConn.puerto = curC.valueBuffer("puerto");
		objConn.contrasena = curC.valueBuffer("contrasena");
		objConn.nombrebd = curC.valueBuffer("nombrebd");
		objConn.usuario = curC.valueBuffer("usuario");
		objConn.driver = curC.valueBuffer("driver");
		objConn.cambiaConexion = true;
		_i.cxBdRepo_.push(objConn);
		return true;
	}
	else if(curC.modeAccess() == curC.Edit) {
		for(var i = 0; i < _i.cxBdRepo_.length; i++) {
			if(_i.cxBdRepo_[i].nombre == curC.valueBuffer("descripcion")) {
				_i.cxBdRepo_[i].servidor = curC.valueBuffer("servidor");
				_i.cxBdRepo_[i].puerto = curC.valueBuffer("puerto");
				_i.cxBdRepo_[i].contrasena = curC.valueBuffer("contrasena");
				_i.cxBdRepo_[i].nombrebd = curC.valueBuffer("nombrebd");
				_i.cxBdRepo_[i].usuario = curC.valueBuffer("usuario");
				_i.cxBdRepo_[i].driver = curC.valueBuffer("driver");
				_i.cxBdRepo_[i].cambiaConexion = true;
				return true;
			}
		}
	}

	return true;
}

//// INTERNA /////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition oficial */
//////////////////////////////////////////////////////////////////
//// OFICIAL /////////////////////////////////////////////////////
/** \D
Obtiene el siguiente n�mero de la secuencia de documentos
@param tipoDoc: Tipo de documento
@return N�mero correspondiente al siguiente documento o false si hay error
\end */
function oficial_siguienteNumero(tipoDoc:String):Number
{
	var numero:Number = 1;
	var util:FLUtil = new FLUtil;
	
	/** \C
	Para minimizar bloqueos las secuencias se han separado en distintos registros de otra tabla
	llamada secuencias
	\end */
	var cursorSecs:FLSqlCursor = new FLSqlCursor( "gd_secuencias" );
	cursorSecs.setContext( this );
	cursorSecs.setActivatedCheckIntegrity( false );
	/** \C
	Si el registro no existe lo crea inicializandolo con su antiguo valor del campo correspondiente
	en la tabla secuenciasejercicios.
	\end */
	cursorSecs.select( "nombre='" + tipoDoc + "'" );
	if ( !cursorSecs.next() ) {
// 		var pass:String = util.readSettingEntry( "DBA/password");
// 		var port:String = util.readSettingEntry( "DBA/port");
// 		if (!sys.addDatabase(sys.nameDriver(), sys.nameBD(), sys.nameUser(), pass, sys.nameHost(), port, "conAux")) {
// 			MessageBox.warning(util.translate("scripts", "Ha habido un error al establecer una conexi�n auxiliar con la base de datos %1").arg(sys.nameBD()), MessageBox.Ok, MessageBox.NoButton);
// 			return false;
// 		}
// 		var curSecuencia:FLSqlCursor = new FLSqlCursor("gd_secuencias", "conAux");
		var curSecuencia:FLSqlCursor = new FLSqlCursor("gd_secuencias");
		curSecuencia.setModeAccess(curSecuencia.Insert);
		curSecuencia.refreshBuffer();
		curSecuencia.setValueBuffer("nombre", tipoDoc);
		curSecuencia.setValueBuffer("valorout", 2);
		if (!curSecuencia.commitBuffer()) {
			return false;
		}
	} else {
		cursorSecs.setModeAccess( cursorSecs.Edit );
		cursorSecs.refreshBuffer();
		numero = cursorSecs.valueBuffer( "valorout" );
		cursorSecs.setValueBuffer( "valorout", numero + 1);
		cursorSecs.commitBuffer();
	}
	cursorSecs.setActivatedCheckIntegrity( true );
	return numero;
}

/** \D
Ejecuta un comando externo
@param comando: Comando a ejecutar
@param workdir: Directorio de trabajo donde se iniciar� el comando
@return Array con dos datos:
	ok: True si no hay error, false en caso contrario
	salida: Mensaje de stdout o stderr obtenido
\end */
function oficial_ejecutarComando(comando, workdir):Array
{
debug("workdir = " + workdir);
	var res = new Array("ok", "salida");
	var proc = new Process;
	if (workdir != undefined && !workdir.isEmpty()) {
		proc.workingDirectory = workdir;
	} else {
		proc.workingDirectory = Dir.home;
	}
debug("WD = " + proc.workingDirectory);
	proc.arguments = comando;
	debug(proc.workingDirectory  + " " +  workdir + " $ " + proc.arguments.join(" "));

	proc.start();
	sys.processEvents();
	while (proc.running) {}
	sys.processEvents();

	var stdErr = proc.readStderr();
	if (!stdErr.isEmpty()) {
		res["ok"] = false;
		res["salida"] = stdErr;
	} else {
		res["ok"] = true;
		res["salida"] = proc.readStdout();
		debug("Ok\n" + res["salida"]);
	}
	return res;
}

/** \D
Ejecuta un comando externo de forma as�ncrona
@param	comando: Comando a ejecutar
@return	Array con dos datos: 
	ok: True si no hay error, false en caso contrario
	salida: Mensaje de stdout o stderr obtenido
\end */
function oficial_ejecutarComandoAsincrono(comando:String):Array
{
	var res:Array = [];
	Process.execute(comando);
	if (Process.stderr != "") {
		res["ok"] = false;
		res["salida"] = Process.stderr;
	} else {
			res["ok"] = true;
			res["salida"] = Process.stdout;
	}
	return res;
}

/** \D Obtiene la revisi�n del documento en subversion
@param	codDocumento: Nombre del documento en el repositorio
@return	C�digo de la revisi�n o false si hay error
\end */
function oficial_obtenerRevision(codDocumento:String):String
{
	var util:FLUtil = new FLUtil();
/*
	var fichSVN = this.iface.pathLocal + codDocumento + "/.svn/entries";
	if (!File.exists(fichSVN)) {
		MessageBox.critical(util.translate("scripts", "%1\nno se encuentra bajo control de versiones. Imposible obtener el n�mero de revisi�n").arg(this.iface.pathLocal + codDocumento), MessageBox.Ok, MessageBox.Cancel);
		return false;
	}

	var svnEntradas:FLDomDocument = new FLDomDocument;
	if (!svnEntradas.setContent(File.read(fichSVN)))
		return false;

	var entradas:FLDomNodeList = svnEntradas.elementsByTagName("entry");
	var revision:String;
	for (var i:Number = 0; i < entradas.length(); i++) {
		if (entradas.item(i).toElement().attribute("name") == codDocumento) {
			revision = entradas.item(i).toElement().attribute("committed-rev");
			break;
		}
	}
*/

	var dirModulo:String = this.iface.pathLocal + codDocumento;
	var comando:String = ["svn", "info", dirModulo];
	var res:Array = this.iface.ejecutarComando(comando);
	if (res["ok"] == false) {
		MessageBox.critical(util.translate("scripts", "Error al buscar la revisi�n del documento %1").arg(codDocumento), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	var info:String = res["salida"];
// 	var caracteresRev:Number = 10;
// 	var iRevision:Number = info.find("Revisi�n: ");
// 	if (iRevision < 0) {
// 		iRevision = info.find("Revision: ");
// 	}
// 	if (iRevision < 0) {
// 		iRevision = info.find("Revisi�: ");
// 		caracteresRev = 9;
// 	}
// 	var iFinRevision:Number;
// 	if (iRevision >= 0) {
// 		iFinRevision = info.find("\n", iRevision);
// 	}
// 	revision = info.substring(iRevision + caracteresRev, iFinRevision);
	var iRevision:Number = info.find("Revisi");
	if (iRevision < 0) {
		return 1;
	}
	iRevision = info.find(": ", iRevision);
	if (iRevision < 0) {
		return 1;
	}
	var iFinRevision:Number;
	iFinRevision = info.find("\n", iRevision);
	revision = info.substring(iRevision + 2, iFinRevision);

	return revision;
}


function oficial_obtenerTipoRepositorio():String
{
	return this.iface.tipoRepositorio_;
}

/** \D Comprueba que el directorio local existe y est� asociado al repositorio. Si no existe, lo crea.
@param	url: U.R.L. del repositorio
@return	True si la verificaci�n se realiza con �xito, false en caso contrario
\end */
function oficial_verificarDirLocal(url:String):Boolean
{
	var util:FLUtil = new FLUtil;
	var comando:String;
	var resComando:Array;
	if (!File.exists(Dir.home + "/tmp")) {
		var dir:Dir = new Dir(Dir.home);
		dir.mkdir("tmp");
	}
	var nombreBD:String = sys.nameBD();
	switch (this.iface.tipoRepositorio_) {
		case "Directorio":
		case "Distribuido": {
			if (!File.exists(Dir.home + "/tmp/bqdoc_" + nombreBD)) {
				var dir:Dir = new Dir(Dir.home + "/tmp");
				dir.mkdir("bqdoc_" + nombreBD);
			}
			break;
		}
		case "Repositorio Subversion": {
			if (!File.exists(Dir.home + "/tmp/bqdoc_" + nombreBD)) {
				//comando = "svn co -N " + url + " " + Dir.home + "/tmp/fldoc";
				comando = ["svn", "co", "-N", url, Dir.home + "/tmp/bqdoc_" + nombreBD];
				resComando = this.iface.ejecutarComando(comando);
				if (resComando.ok == false) {
					MessageBox.warning(util.translate("scripts", "Error al conectar con el repositorio.\n%1\n%2").arg(comando).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
					return false;
				}
			}
		
			//comando = "svn status " + Dir.home + "/tmp/fldoc";
			comando = ["svn", "status", Dir.home + "/tmp/bqdoc_" + nombreBD];
			resComando = this.iface.ejecutarComando(comando);
			if (resComando.ok == false) {
				MessageBox.warning(util.translate("scripts", "Error al comprobar el directorio local.\n%1\n%2").arg(comando).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
				return false;
			}
			break;
		}
	}
	return true;
}

/** \D Comprueba si un documento existe actualmente en el repositorio
@param: nombre: Nombre del documento en el repositorio
@param: versi�n a obtener: Si no est� definida se toma la �ltima 
@param: revisi�n a obtener: Si no est� definida se toma la �ltima (HEAD)
@param rutaRepositorio: Ruta del fichero en el repositorio (para el tipo de repositorio distribuido)
@return	Los posibles valores son:
<p/>X: El documento no existe
<p/>XX: El directorio que contiene el documento no existe
<p/>?: El documento existe pero no est� incluido en el control de versiones
<p/>??: El directorio del documento existe pero no est� incluido en el control de versiones
<p/>U: El documento existe y est� sincronizado con el repositorio
<p/>M: El documento existe y est� modificado respecto al repositorio
<p/>A: El documento existe y est� planificado para ser a�adido al repositorio
<p/>C: El documento tiene un conflicto
\end */
function oficial_svnUp(nombre:String, version:String, revision:String, rutaRepositorio:String):String
{
	switch (this.iface.tipoRepositorio_) {
		case "Directorio": {
			return this.iface.dirUp(nombre, version);
			break;
		}
		case "Distribuido": {
			return this.iface.distUp(nombre, rutaRepositorio);
			break;
		}
	}

	var util:FLUtil = new FLUtil;
	//var comando:String = "svn up " + this.iface.pathLocal + nombre;
	var comando:String = ["svn", "up", this.iface.pathLocal + nombre];
	if (revision) {
		//comando += " -r " + revision;
		comando[3] = "-r";
		comando[4] = revision;
	}
	var resComando:Array = this.iface.ejecutarComando(comando);
	if (resComando.ok == false) {
		MessageBox.warning(util.translate("scripts", "Error al obtener el fichero.\n%1\n%2").arg(comando).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	var resultado:String = this.iface.svnStatus(nombre);
	return resultado;
}

/** \D Comprueba si un documento existe actualmente en el repositorio
@param: nombre: Nombre del documento en el repositorio
@param: revision: Es la versi�n del documento a obtener
@return	Los posibles valores son:
<p/>X: El documento no existe
<p/>XX: El directorio que contiene el documento no existe
<p/>?: El documento existe pero no est� incluido en el control de versiones
<p/>??: El directorio del documento existe pero no est� incluido en el control de versiones
<p/>U: El documento existe y est� sincronizado con el repositorio
<p/>M: El documento existe y est� modificado respecto al repositorio
<p/>A: El documento existe y est� planificado para ser a�adido al repositorio
<p/>C: El documento tiene un conflicto
\end */
function oficial_dirUp(nombre:String, version:String):String
{
	var util:FLUtil = new FLUtil;

	if (!version) {
		version = util.sqlSelect("gd_documentos d INNER JOIN gd_versionesdoc vd ON d.idversionactual = vd.idversion", "vd.version", "d.codigo = '" + nombre + "'", "gd_versionesdoc,gd_documentos");
		if (!version) {
			return false;
		}
	}
	if (File.exists(this.iface.urlRepositorio_ + "/" + nombre + "/" + nombre + "-" + version)) {
		if (!File.exists(this.iface.pathLocal + nombre )) {
			var dir:Dir = new Dir(this.iface.pathLocal);
			dir.mkdir(nombre);
		}
		//var comando:String = "cp " + this.iface.urlRepositorio_ + "/" + nombre + "/" + nombre + "-" + version + " " + this.iface.pathLocal + nombre + "/" + nombre;
		var comando:String = [this.iface.comandoCP_, this.iface.urlRepositorio_ + "/" + nombre + "/" + nombre + "-" + version, this.iface.pathLocal + nombre + "/" + nombre];
		var resComando:Array = this.iface.ejecutarComando(comando);
		if (resComando.ok == false) {
			MessageBox.warning(util.translate("scripts", "Error al obtener el fichero.\n%1\n%2").arg(comando).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
			return false;
		}
	}
	var resultado:String = this.iface.dirStatus(nombre, version);
	return resultado;
}

function oficial_distUp(nombre:String, rutaRepositorio:String):String
{
debug("oficial_distUp");
	var util:FLUtil = new FLUtil;

	if (File.exists(rutaRepositorio + "/" + nombre)) {
		if (!File.exists(this.iface.pathLocal + nombre )) {
			var dir:Dir = new Dir(this.iface.pathLocal);
			dir.mkdir(nombre);
		}
		var comando:String = [this.iface.comandoCP_, rutaRepositorio + "/" + nombre, this.iface.pathLocal + nombre];
		var resComando:Array = this.iface.ejecutarComando(comando);
		if (resComando.ok == false) {
			MessageBox.warning(util.translate("scripts", "Error al obtener el fichero.\n%1\n%2").arg(comando).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
			return false;
		}
	}
	var resultado:String = this.iface.distStatus(nombre, rutaRepositorio);
	return resultado;
}

/** \D Comprueba el estado de la versi�n local de un documento respecto a la versi�n del repositorio
@param nombre: Nombre del documento en el repositorio
@param version: Version del documento
@return	Los posibles valores son:
<p/>X: El documento no existe
<p/>XX: El directorio que contiene el documento no existe
<p/>?: El documento existe pero no est� incluido en el control de versiones
<p/>??: El directorio del documento existe pero no est� incluido en el control de versiones
<p/>U: El documento existe y est� sincronizado con el repositorio
<p/>M: El documento existe y est� modificado respecto al repositorio
<p/>A: El documento existe y est� planificado para ser a�adido al repositorio
<p/>C: El documento tiene un conflicto
\end */
function oficial_svnStatus(nombre:String, version:String):String
{
	if (this.iface.tipoRepositorio_ == "Directorio")
		return this.iface.dirStatus(nombre, version);

	var util:FLUtil = new FLUtil;
	var comando:String;
	var resComando:Array;
	if (!File.exists(this.iface.pathLocal + nombre))
		return "XX";

	if (!File.exists(this.iface.pathLocal + nombre + "/" + nombre))
		return "X";
/*
	if (!File.exists(this.iface.pathLocal + nombre + "/.svn"))
		return "??";
*/
	//comando = "svn status " + this.iface.pathLocal + nombre + "/" + nombre;
	comando = ["svn", "status", this.iface.pathLocal + nombre + "/" + nombre];
	resComando = this.iface.ejecutarComando(comando);
	if (resComando.ok == false) {
		MessageBox.warning(util.translate("scripts", "Error obtener el estado del documento:\n%1\n%2").arg(comando).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	var salida:Array = resComando.salida.split("\n");
	if (salida[0] == "")
		return "U";
	var resultado:String = resComando.salida.charAt(0);
	return resultado;
}

/** \D Comprueba el estado de la versi�n local de un documento respecto a la versi�n del repositorio
@param: nombre: Nombre del documento en el repositorio
@param: version: Versi�n del documento en el repositorio
@return	Los posibles valores son:
<p/>X: El documento no existe
<p/>XX: El directorio que contiene el documento no existe
<p/>?: El directorio del documento no existe en el repositorio
<p/>??: El documento existe no existe en el repositorio
<p/>U: El documento existe y est� sincronizado con el repositorio
\end */
function oficial_dirStatus(nombre:String, version:String):String
{
	var util:FLUtil = new FLUtil;
	var comando:String;
	var resComando:Array;

	if (!File.exists(this.iface.pathLocal + nombre))
		return "XX";

	if (!File.exists(this.iface.pathLocal + nombre + "/" + nombre))
		return "X";
debug(this.iface.urlRepositorio_ + nombre);
	if (!File.exists(this.iface.urlRepositorio_ + nombre))
		return "?";

debug(this.iface.urlRepositorio_ + nombre + "/" + nombre + "-" + version);
	if (!File.exists(this.iface.urlRepositorio_ + nombre + "/" + nombre + "-" + version))
		return "??";

	/********** C Controlar fechas ************/
	
	return "U";
}

/** \D Comprueba el estado de la versi�n local de un documento respecto a la versi�n del repositorio
@param: nombre: Nombre del documento en el repositorio
@param: version: Versi�n del documento en el repositorio
@return	Los posibles valores son:
<p/>X: El documento no existe
<p/>XX: El directorio que contiene el documento no existe
<p/>?: El directorio del documento no existe en el repositorio
<p/>??: El documento existe no existe en el repositorio
<p/>U: El documento existe y est� sincronizado con el repositorio
\end */
function oficial_distStatus(nombre:String, rutaRepositorio:String):String
{
	var util:FLUtil = new FLUtil;
	var comando:String;
	var resComando:Array;
// debug(this.iface.pathLocal + nombre);
// 	if (!File.exists(this.iface.pathLocal + nombre)) {
// 		return "X";
// 	}
debug(this.iface.urlRepositorio_ + rutaRepositorio);
	if (!File.exists(rutaRepositorio)) {
		return "?";
	}

debug(this.iface.urlRepositorio_ + rutaRepositorio + "/" + nombre);
	if (!File.exists(rutaRepositorio + "/" + nombre)) {
		return "??";
	}

	/********** C Controlar fechas ************/
	
	return "U";
}


/** \D Borra un documento del repositorio
@param	codigo: Nombre del documento en el repositorio
@return	True si el documento es eliminado correctamente, false en caso contrario
\end */
function oficial_borrarDocRepo(codigo, idConexion)
{
	var _i = this.iface;

	if (_i.tipoRepositorio_ == "Directorio")
		return _i.dirBorrarDocRepo(codigo);

	if (_i.tipoRepositorio_ == "Base de datos")
		return _i.bdBorrarDocRepo(codigo, idConexion);
	
	var urlRepo = AQUtil.sqlSelect("gd_config", "urlrepositorio", "1 = 1");
	if (!urlRepo)
		return false;

	var estado = _i.svnUp(codigo);
	switch (estado) {
		case "C": {
			sys.warnMsgBox(sys.translate("No puede actualizar el documento en el repositorio.\nHay un conflicto entre la versi�n local y la del repositorio"));
			return false;
		}
		case "XX":
		case "X":
		case "??":
		case "?": {
			break;
		}
		case "A": {
			comando = ["svn", "revert", codigo];
			resComando = _i.ejecutarComando(comando, _i.pathLocal);
			if (resComando.ok == false) {
				sys.warnMsgBox(sys.translate("Error al revertir el estado del documento %1:\n%2").arg(codigo).arg(resComando.salida));
				return false;
			}
			break;
		}
		case "U":
		case "M": {
			//comando = "svn del " + this.iface.pathLocal + codigo;
			comando = ["svn", "del", codigo];
			resComando = _i.ejecutarComando(comando, _i.pathLocal);
			if (resComando.ok == false) {
				sys.warnMsgBox(sys.translate("Error al borrar el documento %1:\n%2").arg(codigo).arg(resComando.salida));
				return false;
			}
			comando = ["svn", "commit", codigo, "-m", "HOLA"];
			resComando = _i.ejecutarComando(comando, this.iface.pathLocal);

// 			comando = ["svn", "commit", this.iface.pathLocal + codigo, "-m", "HOLA"];
// 			resComando = this.iface.ejecutarComando(comando);
			if (resComando.ok == false) {
				sys.warnMsgBox(sys.translate("Error al borrar el documento %1 en el repositorio:\n%2").arg(codigo).arg(resComando.salida));
				return false;
			}
			break;
		}
		default: {
			return false;
		}
	}
	return true;
}

/** \D Borra un documento del repositorio
@param	codigo: Nombre del documento en el repositorio
@return	True si el documento es eliminado correctamente, false en caso contrario
\end */
function oficial_dirBorrarDocRepo(codigo:String):Boolean
{
	//var comando:String = "rm -rf " + this.iface.pathLocal + codigo;
	var comando:String = ["rm", "-rf", this.iface.pathLocal + codigo];
	var resComando:Array = this.iface.ejecutarComando(comando);
	if (resComando.ok == false) {
		MessageBox.warning(util.translate("scripts", "Error al borrar el documento %1:\n%2").arg(codigo).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	//comando = "rm -rf  " + this.iface.urlRepositorio_ + codigo;
	comando = ["rm", "-rf", this.iface.urlRepositorio_ + codigo];
	resComando = this.iface.ejecutarComando(comando);
	if (resComando.ok == false) {
		MessageBox.warning(util.translate("scripts", "Error al borrar el documento %1 en el repositorio:\n%2").arg(codigo).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	return true;
}

function oficial_dameCxBdDocs(nomCx)
{
	var _i = this.iface;
	if (_i.cxBdRepo_ == "undefined") {
		return false;
	}

	var nombreBd;
	if(nomCx && nomCx != "")
		nombreBd = nomCx;
	else if("nombre" in _i.cxBdRepo_) {
		nombreBd = _i.cxBdRepo_.nombre;

		if (nombreBd == "default") {
			return nombreBd;
		}
	}
	
	var dbDocs = AQSql.database(nombreBd);
	if (!_i.conectaBdDocs(nombreBd, dbDocs)) {
		return false;
	}
	return nombreBd;
}

function oficial_conectaBdDocs(nombreBd, dbDocs)
{
	var _i = this.iface;

	if (_i.cxBdRepo_ == "undefined")
		return false;

	var cx = false;
	for(var i = 0; i < _i.cxBdRepo_.length; i++) {
		if(_i.cxBdRepo_[i].nombre == nombreBd) {
			cx = _i.cxBdRepo_[i];
			break;
		}
	}

	if(!cx)
		return false;

	if (dbDocs && dbDocs.connectionName() == nombreBd && dbDocs.isOpen() && (!("cambiaConexion" in cx) || !cx.cambiaConexion))
		return true;

	var datosConexion = "";
	var nombreBD = cx.nombrebd;
	datosConexion += "\n" + sys.translate("Base de datos %1").arg(nombreBD);
	var host = cx.servidor;
	datosConexion += "\n" + sys.translate("Servidor %1").arg(host);
	var driver = cx.driver;
	datosConexion += "\n" + sys.translate("Driver %1").arg(driver);
	var puerto = cx.puerto;
	datosConexion += "\n" + sys.translate("Puerto %1").arg(puerto);

	if (!driver || !nombreBD || !host) {
		sys.warnMsgBox(sys.translate("Debe indicar los datos de conexi�n a la base de datos Central en la opci�n Configuraci�n de este m�dulo"));
		return false;
	}

	var tipoDriver;
	if (sys.nameDriver().search("PSQL") > -1)
		tipoDriver = "PostgreSQL";
	else
		tipoDriver = "MySQL";

	var usuario = cx.usuario;
	var password = cx.contrasena;
	var conName = cx.nombre;
	if (!sys.addDatabase(driver, nombreBD, usuario, password, host, puerto, conName)) {
		sys.warnMsgBox(sys.translate("Error en la conexi�n:%1").arg(datosConexion));
		return false;
	}
	debug("Conexi�n " + conName + " establecida con �xito");

	return true;
}

function oficial_bdSubirDocumento(curD, comentario, rutaDoc)
{
	var _i = this.iface;
	
	var codigo = curD.valueBuffer("codigo");
	if (!rutaDoc) {
		rutaDoc = _i.pathLocal + codigo + "/" + codigo;
	}
	var file = new QFile(rutaDoc);
	if (!file.open(File.ReadOnly)) {
		return false;
	}
	var ba = file.readAll();

	var cx = AQUtil.sqlSelect("gd_documentos", "idconexion", "codigo = '" + codigo + "'");
	if(!cx || cx == "")
		return false;

	var nomCx = AQUtil.sqlSelect("gd_conexiones", "descripcion", "id = " + cx);
	if(!nomCx || nomCx == "")
		return false;

	var cxBd = _i.dameCxBdDocs(nomCx);
	if (!cxBd) {
		sys.warnMsgBox(sys.translate("No hay conexi�n con la base de datos de documentos"));
		return false;
	}
	if (cxBd == "default") {
		if (!AQSql.update("gd_versionesdoc", ["contenido"], [ba], "idversion = " + curD.valueBuffer("idversionactual"))) {
			AQUtil.destroyProgressDialog();
			return false;
		}
	} else {
		if (!AQUtil.sqlSelect("gd_tiposdoc", "codtipo", "codtipo = '" + curD.valueBuffer("codtipo") + "'", "gd_tiposdoc", cxBd)) {
			
			var descTipo = AQUtil.sqlSelect("gd_tiposdoc", "descripcion","codtipo = '" + curD.valueBuffer("codtipo") + "'");
			if(!descTipo)
				descTipo = "-";
			
			var contenedor = AQUtil.sqlSelect("gd_tiposdoc", "contenedor","codtipo = '" + curD.valueBuffer("codtipo") + "'");
			
			if (!AQSql.insert("gd_tiposdoc", ["codtipo", "descripcion", "contenedor"], [curD.valueBuffer("codtipo"), descTipo, contenedor], cxBd)) {
				return false;
			}
		}
		if (!AQUtil.sqlSelect("gd_documentos", "iddocumento", "iddocumento = " + curD.valueBuffer("iddocumento"), "gd_documentos", cxBd)) {
			if (!AQSql.insert("gd_documentos", ["iddocumento", "codigo", "codtipo", "nombre", "creadopor", "fechacreacion", "horacreacion", "idversionactual", "fichero", "extension", "comentarios"], [curD.valueBuffer("iddocumento"), curD.valueBuffer("codigo"), curD.valueBuffer("codtipo"), curD.valueBuffer("nombre"), curD.valueBuffer("creadopor"), curD.valueBuffer("fechacreacion"), curD.valueBuffer("horacreacion"), curD.valueBuffer("idversionactual"), curD.valueBuffer("fichero"), curD.valueBuffer("extension"), curD.valueBuffer("comentarios")], cxBd)) {
				return false;
			}
		} else {
			if (!AQSql.update("gd_documentos", ["idversionactual", "nombre", "fichero", "extension", "comentarios"], [curD.valueBuffer("idversionactual"), curD.valueBuffer("nombre"), curD.valueBuffer("fichero"), curD.valueBuffer("extension"), curD.valueBuffer("comentarios")], "iddocumento = " + curD.valueBuffer("iddocumento"), cxBd)) {
				return false;
			}
		}
		var curVD = new AQSqlCursor("gd_versionesdoc");
		curVD.select("idversion = " + curD.valueBuffer("idversionactual"));
		if (!curVD.first()) {
			return false;
		}
		curVD.setModeAccess(AQSql.Browse);
		curVD.refreshBuffer();
		if (!AQUtil.sqlSelect("gd_versionesdoc", "idversion", "idversion = " + curD.valueBuffer("idversionactual"), "gd_versionesdoc", cxBd)) {
			if (!AQSql.insert("gd_versionesdoc", ["idversion", "iddocumento", "version", "fecha", "fichero", "comentarios", "modificadopor", "fechamodif", "horamodif", "contenido"], [curVD.valueBuffer("idversion"), curVD.valueBuffer("iddocumento"),  curVD.valueBuffer("version"), curVD.valueBuffer("fecha"), curVD.valueBuffer("fichero"), curVD.valueBuffer("comentarios"), curVD.valueBuffer("modificadopor"), curVD.valueBuffer("fechamodif"), curVD.valueBuffer("horamodif"), ba], cxBd)) {
				return false;
			}
		} else {
			if (!AQSql.update("gd_versionesdoc", ["iddocumento", "version", "fecha", "fichero", "comentarios", "modificadopor", "fechamodif", "horamodif", "contenido"], [curVD.valueBuffer("iddocumento"),  curVD.valueBuffer("version"), curVD.valueBuffer("fecha"), curVD.valueBuffer("fichero"), curVD.valueBuffer("comentarios"), curVD.valueBuffer("modificadopor"), curVD.valueBuffer("fechamodif"), curVD.valueBuffer("horamodif"), ba], "idversion = " + curD.valueBuffer("idversionactual"), cxBd)) {
				return false;
			}
		}
	}
	return true;
}

/** \D Sube un documento al repositorio
@param: curDocumento: Cursor con los datos del documento
@param: comentario: texto con el que se etiquetar� la nueva versi�n
@return	revisi�n actual si el documento es actualizado correctamente en el repositorio, false en caso contrario
\end */
function oficial_subirDocumento(curDocumento, comentario, rutaDoc)
{
	var _i = this.iface;
	var codigo = curDocumento.valueBuffer("codigo");

	debug("oficial_subirDocumento " + _i.tipoRepositorio_);

	switch (_i.tipoRepositorio_) {
		case "Base de datos": {
			return _i.bdSubirDocumento(curDocumento, comentario, rutaDoc);
			break;
		}
		case "Directorio": {
			return _i.dirSubirDocumento(curDocumento, comentario);
			break;
		}
		case "Distribuido": {
			return _i.distSubirDocumento(curDocumento, comentario);
			break;
		}
	}

	AQUtil.createProgressDialog(sys.translate("Actualizando documento en el repositorio"), 5);
	AQUtil.setProgress(1);
	AQUtil.setLabelText(sys.translate("Comprobado estado..."));
	var estado = _i.svnStatus(codigo);
	switch (estado) {
		case "C": {
			sys.warnMsgBox(sys.translate("No puede actualizar el documento en el repositorio.\nHay un conflicto entre la versi�n local y la del repositorio"));
			AQUtil.destroyProgressDialog();
			return false;
		}
		case "U": {
			// El documento est� actualizado, no hace falta subirlo
			break;;
		}
		case "XX":
		case "X": {
			sys.warnMsgBox(sys.translate("No ha especificado el documento a enviar."));
			AQUtil.destroyProgressDialog();
			return false;
		}
		case "??":
		case "?": {
			AQUtil.setProgress(2);
			AQUtil.setLabelText(sys.translate("A�adiendo nuevo fichero..."));
			if (estado == "??") {
				//comando = "svn add " + _i.pathLocal + codigo;
				comando = ["svn", "add", _i.pathLocal + codigo];
			} else {
				//comando = "svn add " + _i.pathLocal + codigo + "/" + codigo;
				comando = ["svn", "add", _i.pathLocal + codigo + "/" + codigo];
			}
			resComando = _i.ejecutarComando(comando);
			if (resComando.ok == false) {
				sys.warnMsgBox(sys.translate("Error al a�adir el documento %1 al repositorio:\n%2").arg(codigo).arg(resComando.salida));
				AQUtil.destroyProgressDialog();
				return false;
			}
		}
		case "M":
		case "A": {
			AQUtil.setProgress(3);
			AQUtil.setLabelText(sys.translate("Actualizando el repositorio..."));
			//comando = "svn commit " + _i.pathLocal + codigo + " -m HOLA";
			comando = ["svn", "commit", codigo, "-m", "HOLA"];
			resComando = _i.ejecutarComando(comando, _i.pathLocal);
			if (resComando.ok == false) {
				sys.warnMsgBox(sys.translate("Error al subir el documento %1 al repositorio:\n%2").arg(codigo).arg(resComando.salida));
				AQUtil.destroyProgressDialog();
				return false;
			}
			break;
		}
		default: {
			AQUtil.destroyProgressDialog();
			return false;
		}
	}
	AQUtil.setProgress(4);
	AQUtil.setLabelText(sys.translate("Obteniendo �ltima revisi�n..."));
	var revision = _i.obtenerRevision(codigo);
	if (!revision) {
		sys.warnMsgBox(sys.translate("Error al obtener la revisi�n actual del documento %1:\n%2").arg(codigo).arg(resComando.salida));
		AQUtil.destroyProgressDialog();
		return false;
	}
	AQUtil.setProgress(5);
	AQUtil.setLabelText(sys.translate("Actualizando versi�n actual..."));
	if (!AQUtil.sqlUpdate("gd_versionesdoc", "versionrep", revision, "idversion = " + curDocumento.valueBuffer("idversionactual"))) {
		AQUtil.destroyProgressDialog();
		return false;
	}
	AQUtil.destroyProgressDialog();
	return true;
}

/** \D Sube un documento al repositorio
@param: curDocumento: Cursor con los datos del documento
@param: comentario: texto con el que se etiquetar� la nueva versi�n
@return	revisi�n actual si el documento es actualizado correctamente en el repositorio, false en caso contrario
\end */
function oficial_dirSubirDocumento(curDocumento:FLSqlCursor, comentario:String):String
{
	var util:FLUtil = new FLUtil;
	var codigo:String = curDocumento.valueBuffer("codigo");
	util.createProgressDialog(util.translate("scripts", "Actualizando documento en el repositorio"), 4);
	util.setProgress(1);
	util.setLabelText(util.translate("scripts", "Comprobado estado..."));
	var version:String = util.sqlSelect("gd_versionesdoc", "version", "idversion = " + curDocumento.valueBuffer("idversionactual"));
	if (!version) {
		MessageBox.warning(util.translate("scripts", "No es posible enviar el documento al repositorio:\nNo se ha establecido correctamente la versi�n del documento"), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	var estado:String = this.iface.dirStatus(codigo, version);

	switch (estado) {
		case "C": {
			var res:Number = MessageBox.warning(util.translate("scripts", "La fecha de la versi�n local es anterior a la del repositorio. �Desea continuar enviando el documento?"), MessageBox.Yes, MessageBox.No);
			if (res != MessageBox.Yes) {
				util.destroyProgressDialog();
				return false;
			}
			break;
		}
		case "XX":
		case "X": {
			MessageBox.warning(util.translate("scripts", "No ha especificado el documento a enviar."), MessageBox.Ok, MessageBox.NoButton);
			util.destroyProgressDialog();
			return false;
		}
		case "?": {
			var rutaDir:String = this.iface.adaptarRuta(this.iface.urlRepositorio_);
			var dir:Dir = new Dir(rutaDir);
			dir.mkdir(codigo);
		}
		case "U":
		case "??":
		case "M":
		case "A": {
			util.setProgress(3);
			util.setLabelText(util.translate("scripts", "Actualizando el repositorio..."));
			//comando = "cp " + this.iface.pathLocal + codigo + "/" + codigo + " " + this.iface.urlRepositorio_ + codigo + "/" + codigo + "-" + version;
			comando = [this.iface.comandoCP_, this.iface.pathLocal + codigo + "/" + codigo, this.iface.urlRepositorio_ + codigo + "/" + codigo + "-" + version];
			resComando = this.iface.ejecutarComando(comando);
			if (resComando.ok == false) {
				MessageBox.warning(util.translate("scripts", "Error al subir el documento %1 al repositorio:\n%2").arg(codigo).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
				util.destroyProgressDialog();
				return false;
			}
			break;
		}
		default: {
			util.destroyProgressDialog();
			return false;
		}
	}
	util.setProgress(4);
	util.setLabelText(util.translate("scripts", "Actualizando versi�n actual..."));
	if (!util.sqlUpdate("gd_versionesdoc", "versionrep", version, "idversion = " + curDocumento.valueBuffer("idversionactual"))) {
		util.destroyProgressDialog();
		return false;
	}
	util.destroyProgressDialog();
	return true;
}

/** \D Sube un documento al repositorio en repositorios distribuidos
@param: curDocumento: Cursor con los datos del documento
@param: comentario: texto con el que se etiquetar� la nueva versi�n
@return	revisi�n actual si el documento es actualizado correctamente en el repositorio, false en caso contrario
\end */
function oficial_distSubirDocumento(curDocumento:FLSqlCursor, comentario:String):String
{
	var util:FLUtil = new FLUtil;
	var codigo:String = curDocumento.valueBuffer("codigo");
	util.createProgressDialog(util.translate("scripts", "Actualizando documento en el repositorio"), 4);
	util.setProgress(1);
	util.setLabelText(util.translate("scripts", "Comprobado estado..."));
	var version:String = util.sqlSelect("gd_versionesdoc", "version", "idversion = " + curDocumento.valueBuffer("idversionactual"));
	if (!version) {
		MessageBox.warning(util.translate("scripts", "No es posible enviar el documento al repositorio:\nNo se ha establecido correctamente la versi�n del documento"), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	var fichero:String = curDocumento.valueBuffer("fichero");
	var rutaRepositorio:String = curDocumento.valueBuffer("rutarepositorio");
	var estado:String = this.iface.distStatus(fichero, rutaRepositorio);

	switch (estado) {
		case "C": {
			break;
		}
		case "XX":
		case "X": {
			return false;
		}
		case "?": {
			var dir:Dir = new Dir(rutaRepositorio);
		}
		case "U":
		case "??":
		case "M":
		case "A": {
			util.setProgress(3);
			util.setLabelText(util.translate("scripts", "Actualizando el repositorio..."));
			//comando = "cp " + this.iface.pathLocal + codigo + "/" + codigo + " " + this.iface.urlRepositorio_ + codigo + "/" + codigo + "-" + version;
			comando = [this.iface.comandoCP_, this.iface.pathLocal + fichero, rutaRepositorio + "/" + fichero];
			resComando = this.iface.ejecutarComando(comando);
			if (resComando.ok == false) {
				MessageBox.warning(util.translate("scripts", "Error al subir el documento %1 al repositorio:\n%2").arg(fichero).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
				util.destroyProgressDialog();
				return false;
			}
			break;
		}
		default: {
			util.destroyProgressDialog();
			return false;
		}
	}
	util.setProgress(4);
	util.setLabelText(util.translate("scripts", "Actualizando versi�n actual..."));
	if (!util.sqlUpdate("gd_versionesdoc", "versionrep", version, "idversion = " + curDocumento.valueBuffer("idversionactual"))) {
		util.destroyProgressDialog();
		return false;
	}
	util.destroyProgressDialog();
	return true;
}

/** \D Copia un documento al directorio local del repositorio
@param	codDocumento: Nombre del documento en el repositorio
@param	pathDoc: Ruta al fichero que contiene el documento a copiar
@return	true si la copia se realiza correctamente, false en caso contrario
\end */
function oficial_copiarDocRepo(codDocumento:String, pathDoc:String, version:String):Boolean
{
	var util:FLUtil = new FLUtil;
	var comando:String;
	var resComando:Array;
	var dirExiste = true;

	if (!this.iface.pathLocal) {
		if (!this.iface.verificarConfiguracion()) {
			return true;
		}
	}

	var pathRepo:String;
	switch (this.iface.tipoRepositorio_) {
		case "Distribuido": {
			pathRepo = this.iface.pathLocal + codDocumento;
			break;
		}
		default: {
			if (!File.exists(this.iface.pathLocal + codDocumento)) {
				dirExiste = false;
				var directorio = new Dir(this.iface.pathLocal);
				directorio.mkdir(codDocumento);
			}
			pathRepo = this.iface.pathLocal + codDocumento + "/" + codDocumento;
		}
	}


	if (File.exists(pathRepo)) {
		var fileRepo = new File(pathRepo);
		var fileLocal = new File(pathDoc);
		if (!fileLocal) {
			return false;
		}
		
// 		if (fileRepo.lastModified > fileLocal.lastModified) {
// 			var res:Number = MessageBox.warning(util.translate("scripts", "La versi�n del repositorio es m�s reciente (%1) que la versi�n local (%2) de:\n%3\n�Desea continuar y sobreescribir la versi�n del repositorio?").arg(fileRepo.lastModified).arg(fileLocal.lastModified).arg(pathDoc), MessageBox.Yes, MessageBox.No);
// 			if (res != MessageBox.Yes)
// 				return false;
// 		}
		
		comando = ["chmod", "u+w",  pathRepo];
		resComando = this.iface.ejecutarComando(comando);
		if (resComando.ok == false) {
			MessageBox.warning(util.translate("scripts", "Error en el fichero.\n%1\n%2").arg(comando).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
			return false;
		}
	}
	
	//comando = "cp " + pathDoc+ " " + pathRepo;
	comando = [this.iface.comandoCP_, pathDoc, pathRepo];
	resComando = this.iface.ejecutarComando(comando);
	if (resComando.ok == false) {
		MessageBox.warning(util.translate("scripts", "Error al copiar el fichero.\n%1\n%2").arg(comando).arg(resComando.salida), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	return true;
}

function oficial_obtenerPathLocal():String
{
	return this.iface.pathLocal;
}

function oficial_bdObtenerDocumento(codDocumento, pathDirectorio, version, revision, rutaRepositorio)
{
	var _i = this.iface;

	var cx = AQUtil.sqlSelect("gd_documentos", "idconexion", "codigo = '" + codDocumento + "'");
	if(!cx || cx == "")
		return false;

	var nomCx = AQUtil.sqlSelect("gd_conexiones", "descripcion", "id = " + cx);
	if(!nomCx || nomCx == "")
		return false;

	var cxBd = _i.dameCxBdDocs(nomCx);
	if (!cxBd) {
		sys.warnMsgBox(sys.translate("No hay conexi�n con la base de datos de documentos"));
		return false;
	}
	
	var idVer = false;
	if(version && version != "")
		idVer = AQUtil.sqlSelect("gd_documentos d INNER JOIN gd_versionesdoc vd ON d.iddocumento = vd.iddocumento", "vd.idversion", "d.codigo = '" + codDocumento + "' AND version = '" + version + "'", "gd_documentos", cxBd);
	if(!idVer)
		idVer = AQUtil.sqlSelect("gd_documentos d INNER JOIN gd_versionesdoc vd ON d.iddocumento = vd.iddocumento", "vd.idversion", "d.codigo = '" + codDocumento + "' ORDER BY version DESC", "gd_documentos", cxBd);
	if (!idVer)
		return false;
	
	/** Bytearray */
	var curV = new FLSqlCursor("gd_versionesdoc", cxBd);
	curV.select("idversion = " + idVer);
	if (!curV.first()) {
		debug("!curV.first");
		return false;
	}
	curV.setModeAccess(curV.Browse);
	curV.refreshBuffer();
	var ba = new QByteArray(curV.valueBuffer("contenido"));

	var fileName = pathDirectorio;
	var file = new QFile(fileName);

	if (!file.open(File.WriteOnly)) {
		sys.errorMsgBox(file.errorString());
		return false;
	}

	file.writeBlock(ba);
	file.close();
	return true;
}

/** \D Baja un documento del repositorio y lo copia en el directorio especificado
@param: codDocumento: Nombre del documento en el repositorio
@param: pathDirectorio: Ruta al directorio de destino
@param: version: Versi�n a obtener. Si no est� definida se obtiene la �ltima
@param: revisi�n: Revisi�n a obtener. Si no est� definida se obtiene la �ltima
@param: rutaRepositorio: Ruta del documento en el repositorio (tipo de repositorio distribuido)
@return	true si el documento se obtiene correctamente, false en caso contrario
\end */
function oficial_obtenerDocumento(codDocumento, pathDirectorio, version, revision, rutaRepositorio)
{
	var _i = this.iface;
	
	debug("oficial_obtenerDocumento");
	
	switch (_i.tipoRepositorio_) {
		case "Base de datos": {
			return _i.bdObtenerDocumento(codDocumento, pathDirectorio, version, revision, rutaRepositorio);
			break;
		}
	}
	
	/**/
	var comando;
	var resComando;

	var estado = _i.svnUp(codDocumento, version, revision, rutaRepositorio);
	switch (estado) {
		case "X":
		case "XX": {
			sys.warnMsgBox(sys.translate("Error al obtener el fichero:\nEl documento no est� incluido en el repositorio."));
			return false;
		}
		case "U": {
			break;
		}
		default: {
			sys.warnMsgBox(sys.translate("Error al obtener el fichero."));
			return false;
		}
	}
	
	if (File.exists(pathDirectorio)) {
		var fileRepo = new File(_i.pathLocal + codDocumento + "/" + codDocumento);
		if (!fileRepo)
			return false;
		var fileLocal = new File(pathDirectorio);
		if (fileRepo.lastModified < fileLocal.lastModified) {
			var res = MessageBox.warning(sys.translate("El fichero local %1\n ha sido modificado m�s recientemente (%2) que el fichero del repositorio (%3).\n�Desea continuar y sobreescribir el fichero local?").arg(pathDirectorio).arg(fileLocal.lastModified).arg(fileRepo.lastModified), MessageBox.Yes, MessageBox.No);
			if (res != MessageBox.Yes)
				return false;
		}
	}

	//comando = "cp " + this.iface.pathLocal + codDocumento + "/" + codDocumento + " " + pathDirectorio;
	switch (_i.tipoRepositorio_) {
		case "Distribuido": {
			comando = [_i.comandoCP_, _i.pathLocal + codDocumento, pathDirectorio];
			break;
		}
		default: {
			comando = [_i.comandoCP_, _i.pathLocal + codDocumento + "/" + codDocumento, pathDirectorio];
			break;
		}
	}
	resComando = _i.ejecutarComando(comando);
	if (resComando.ok == false) {
		sys.warnMsgBox(sys.translate("Error al copiar el fichero.\n%1\n%2").arg(comando).arg(resComando.salida));
		return false;
	}

	if (revision && _i.tipoRepositorio_ == "Repositorio Subversion") {
		if (!_i.svnUp(codDocumento)) {
			sys.warnMsgBox(sys.translate("Error al obtener la �ltima versi�n del documento"));
			return false;
		}
	}
	return true;
}

/** \D Obtiene un nuevo c�digo �nico de documento
@param	tipo: Tipo del documento
@return	C�digo del documento o false si hay error
\end */
function oficial_obtenerCodigoDoc(tipo)
{
	var _i = this.iface;
	var numero = _i.siguienteNumero(tipo);
	if (!numero) {
		return false;
	}
	var codigo = _i.cerosIzquierda(numero, 10);
	return codigo;
}

/** \D Asocia un documento a otro de tipo contenedor
@param	idDocumento: Identificador del documento 
@param	tipoObjeto: Tipo del documento contenedor
@param	idContenedor: Identificador del documento contenedor
@return	True si la asociaci�n se realiza correctamente, false en caso contrario.
\end */
function oficial_asociarDocumento(idDocumento:String, tipoObjeto:String, idContenedor:String):Boolean
{
debug("1idContenedor " + idContenedor);
	var util:FLUtil = new FLUtil;

	if (tipoObjeto == "gd_documentos") {
		if (util.sqlSelect("gd_documentos d INNER JOIN gd_tiposdoc td ON d.codtipo = td.codtipo", "td.contenedor", "d.iddocumento = " + idDocumento, "gd_documentos,gd_tiposdoc")) {
			if (!this.iface.comprobarDependenciasGD(idDocumento, tipoObjeto, idContenedor)) {
				MessageBox.warning(util.translate("scripts", "No puede asociar el documento al contenedor ya que el documento contiene a su vez al contenedor"), MessageBox.Ok, MessageBox.NoButton);
				return false;
			}
		}
	}

/// El idContenedor debe llegar ya sin la parte de tipoObjeto + "-" + ...
// 	if (isNaN(idContenedor)) {
// 		var iSep:Number = idContenedor.toString().find("-");
// 		if (iSep >= 0) {
// 			idContenedor = idContenedor.right(idContenedor.length - iSep - 1);
// 		}
// 	}
	
	var curObjetoDoc:FLSqlCursor = new FLSqlCursor("gd_objetosdoc");
	curObjetoDoc.select("iddocumento = " + idDocumento + " AND tipoobjeto = '" + tipoObjeto + "' AND clave = '" + idContenedor + "'");
	if (!curObjetoDoc.first()) {
		with (curObjetoDoc) {
			setModeAccess(curObjetoDoc.Insert);
			refreshBuffer();
debug("idDocumento " + idDocumento);
debug("tipoObjeto " + tipoObjeto);
debug("idContenedor " + idContenedor);
			setValueBuffer("iddocumento", idDocumento);
			setValueBuffer("tipoobjeto", tipoObjeto);
			setValueBuffer("clave", idContenedor);
			if (!commitBuffer())
				return false;
		}
	}

	
	return true;
}

/** \D Inicia los elementos de gesti�n documental de un formulario
@param	container: Formulario contenedor. Debe contener un groupBox con los controles a los que se hace referencia en la funci�n
@param	datosGD: Array con los siguientes datos<ul>
<li>txtRa�z: Texto del elemento ra�z<li/>
<li>tipoRa�z: Tipo de objeto del elemento ra�z<li/>
<li>idRa�z: Identificador del elemento ra�z<li/>
</ul>
@return	True se la iniciaci�n se hace correctamente, false en caso contrario
\end */
function oficial_gestionDocumentalOn(container, datosGD)
{
	var _i = this.iface;

	if (!_i.verificarConfiguracion()) {
		sys.warnMsgBox(sys.translate("No tiene definidos los par�metros de configuraci�n de gesti�n documental.\nLa gesti�n de documentos puede fallar por esta causa.\nDebe definir estos par�metros en el formulario de configuraci�n del m�dulo \"Gesti�n documental\"."));
		return false;
	}

	if (!container)
		return false;
	
	if (_i.container_) {
		_i.gestionDocumentalOff();
	}

	if (_i.cursor_) {
		delete _i.cursor_;
	}
	_i.cursor_ = new FLSqlCursor("gd_documentos");


	var lvwDocumentos = container.child("lvwGDDocumentos");
	lvwDocumentos.setColumnText(0, sys.translate("Documento"));
	lvwDocumentos.addColumn(sys.translate("Ver."));
	lvwDocumentos.addColumn(sys.translate("Estado"));
	lvwDocumentos.addColumn(sys.translate("Creaci�n"));
	lvwDocumentos.addColumn(sys.translate("�ltima modificaci�n"));
	lvwDocumentos.addColumn(sys.translate("C�digo"));
	lvwDocumentos.addColumn(sys.translate("Tipo"));
	
	lvwDocumentos.clear();
	var raiz = new FLListViewItem(lvwDocumentos);
	raiz.setText(0, datosGD.txtRaiz);
	raiz.setKey(datosGD.tipoRaiz + "-" + datosGD.idRaiz);
	raiz.setExpandable(true);

	_i.container_ = container;
	_i.tipoObjetoRaiz_ = datosGD.tipoRaiz;

	connect (lvwDocumentos, "doubleClicked(FLListViewItemInterface)", _i, "editarDocumentoGD()");
	connect (lvwDocumentos, "expanded(FLListViewItemInterface)", _i, "abrirDocumentoGD()");
	connect (lvwDocumentos, "selectionChanged(FLListViewItemInterface)", _i, "cambiarSeleccionGD()");
	connect (container.child("tbnAsociarDocGD"), "clicked()", _i, "asociarDoc_clickedGD()");
	connect (_i.container_.child("tbnQuitarDocGD"), "clicked()", _i, "quitarDoc_clickedGD()");
	connect (_i.container_.child("toolButtonInsertGD"), "clicked()", _i, "crearDocumentoGD");
	connect (_i.container_.child("toolButtonEditGD"), "clicked()", _i, "editarDocumentoGD");
	connect (_i.container_.child("toolButtonDeleteGD"), "clicked()", _i, "borrarDocumentoGD");
	connect (_i.container_.child("toolButtonZoomGD"), "clicked()", _i, "verDocumentoGD");
	if (_i.container_.child("tbnCreaMultiGD")) {
		connect (_i.container_.child("tbnCreaMultiGD"), "clicked()", _i, "tbnCreaMultiGD_clicked");
	}
	
	if(flfactppal.iface.pub_extension("envio_mail")) {
		try {
			sys.connectSS(_i.container_.child("tbnEnviarMailGD"), "clicked()", _i, "enviarDocEmail");
		} catch (e) {
			if (_i.container_.child("tbnEnviarMailGD")) {
				connect(_i.container_.child("tbnEnviarMailGD"), "clicked()", _i, "enviarDocEmail");
			}
		}
	}
	else {
		if (_i.container_.child("tbnEnviarMailGD")) {
			_i.container_.child("tbnEnviarMailGD").close();
		}
	}
// 	connect (_i.cursor_, "bufferCommited()", this, "iface.abrirDocumentoGD()");
	//connect (_i.container_, "closed()", this, "iface.gestionDocumentalOff()");
	
	_i.tipoActual_ = _i.tipoObjetoRaiz_;
	_i.itemActual_ = raiz;
	_i.abrirDocumentoGD(raiz);
}

function oficial_gestionDocumentalOff()
{
	var _i = this.iface;

	if (!_i.container_)
		return;

	var lvwDocumentos = _i.container_.child("lvwGDDocumentos");
	if (!lvwDocumentos)
		return;
	disconnect(lvwDocumentos, "doubleClicked(FLListViewItemInterface)", _i, "editarDocumentoGD()");
	disconnect(lvwDocumentos, "expanded(FLListViewItemInterface)", _i, "abrirDocumentoGD()");
	disconnect(lvwDocumentos, "selectionChanged(FLListViewItemInterface)", _i, "cambiarSeleccionGD()");
	disconnect(_i.container_.child("tbnAsociarDocGD"), "clicked()", _i, "asociarDoc_clickedGD()");
	disconnect(_i.container_.child("tbnQuitarDocGD"), "clicked()", _i, "quitarDoc_clickedGD()");
	disconnect (_i.container_.child("toolButtonInsertGD"), "clicked()", _i, "crearDocumentoGD");
	disconnect (_i.container_.child("toolButtonEditGD"), "clicked()", _i, "editarDocumentoGD");
	disconnect (_i.container_.child("toolButtonDeleteGD"), "clicked()", _i, "borrarDocumentoGD");
	disconnect (_i.container_.child("toolButtonZoomGD"), "clicked()", _i, "verDocumentoGD");
// 	disconnect (_i.cursor_, "bufferCommited()", _i, "abrirDocumentoGD()");
}


/** \D Lanza el formulario de inserci�n de documentos, comprobando que se ha seleccionado un documento que es contenedor o el elemento ra�z
\end */
function oficial_crearDocumentoGD()
{
	var util:FLUtil = new FLUtil;
	var clave:String = this.iface.itemActual_.key();
	if (this.iface.tipoActual_ == "gd_documentos") {
		if (!util.sqlSelect("gd_documentos d INNER JOIN gd_tiposdoc td ON d.codtipo = td.codtipo", "td.contenedor", "d.iddocumento = " + clave, "gd_documentos,gd_tiposdoc")) {
			MessageBox.warning(util.translate("scripts", "El documento seleccionado no es de tipo contenedor"), MessageBox.Ok, MessageBox.NoButton);
			return false;
		}
	}
	if (!this.iface.itemActual_.isExpandable()) {
		return true;
	}
// 	if (!this.iface.cursor_.isValid()) {
// 		this.iface.cursor_.select("1 = 1");
// 		this.iface.cursor_.first();
// 	}
	disconnect(this.iface.cursor_, "bufferCommited()", this, "iface.vincularDocumentoGD");
	delete this.iface.cursor_;
	this.iface.cursor_ = new FLSqlCursor("gd_documentos");
	connect (this.iface.cursor_, "bufferCommited()", this, "iface.vincularDocumentoGD");

	this.iface.cursor_.insertRecord();
}

function oficial_vincularDocumentoGD():Boolean
{
	var util:FLUtil = new FLUtil;
	
	try {
		var idContenedor:String = this.iface.itemActual_.key();
		var tipoObjeto:String = this.iface.tipoActual_;
		
		var iSep:Number = idContenedor.find("-");
		if (iSep >= 0) {
			idContenedor = idContenedor.right(idContenedor.length - iSep - 1);
		}
	
		if (!idContenedor || !tipoObjeto) {
			throw (util.translate("scripts", "No puede asociarse el documento a ning�n documento contenedor"));
		}
		if (!this.iface.asociarDocumento(this.iface.cursor_.valueBuffer("iddocumento"), tipoObjeto, idContenedor)) {
			throw (util.translate("scripts", "Error al vincular el documeto al item seleccionado"));
		}
	} catch (e) {
		MessageBox.warning(e, MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	this.iface.abrirDocumentoGD();
}

/** \D Borra el documento y todas sus versiones, as� como su vinculaci�n al contenedor y su espacio en el repositorio
\end */
function oficial_borrarDocumentoGD()
{
	var _i = this.iface;

	if (!_i.itemActual_) {
		sys.warnMsgBox(sys.translate("No ha seleccionado ning�n elemento"));
		return false;
	}

	var padre = _i.itemActual_.parent();
	if (!padre) {
		return false;
	}

	if (_i.tipoActual_ != "gd_documentos") {
		return true;
	}

	var res = MessageBox.information(sys.translate("El documento seleccionado ser� eliminado del repositorio.\n�Est� seguro?"), MessageBox.Yes, MessageBox.No);
	if (res != MessageBox.Yes)
		return false;

	var idDocumento = _i.itemActual_.key();
	
	if (!_i.borrarDocumento(idDocumento)) {
		return false;
	}
	_i.abrirDocumentoGD(padre);
}

function oficial_borrarDocumento(idDocumento)
{
	var _i = this.iface;

	var relaciones = AQUtil.sqlSelect("gd_objetosdoc", "COUNT(idrelacion)", "iddocumento = " + idDocumento);
	if (relaciones && relaciones > 1) {
		var nombreDoc = AQUtil.sqlSelect("gd_documentos", "nombre", "iddocumento = " + idDocumento);
		res = MessageBox.information(sys.translate("El documento \"%1\" tiene m�s de un v�nculo.\n�Desea continuar?").arg(nombreDoc), MessageBox.Yes, MessageBox.No);
		if (res != MessageBox.Yes)
			return false;
	}
	
	var curDocumento = new FLSqlCursor("gd_documentos");
	var codigo, idConexion = false;
	curDocumento.transaction(false);
	try {
		with (curDocumento) {
			select("iddocumento = " + idDocumento);
			if (!first())
				throw sys.translate("No existe el documento");
			setModeAccess(Del);
			refreshBuffer();
			codigo = curDocumento.valueBuffer("codigo");
			idConexion = curDocumento.valueBuffer("idconexion");
			if (!commitBuffer())
				throw sys.translate("Fall� la eliminaci�n del documento");
		}
		if (!_i.borrarDocRepo(codigo, idConexion))
			throw sys.translate("Hubo un error al borrar el documento en el repositorio.\nDebe eliminarlo manualmente.");
		
		curDocumento.commit();
	}
	catch (e) {
		curDocumento.rollback();
		if (!e || e == "")
			e = sys.translate("Fall� la eliminaci�n del documento");
		sys.errorMsgBox(sys.translate("Hubo un error al borrar el documento:") + "\n" + e);
		return false;
	}
	return true;
}

function oficial_borrarContenidoContenedor(idDocContenedor:String):Boolean
{
	var qryContenido:FLSqlQuery = new FLSqlQuery;
	with (qryContenido) {
		setTablesList("gd_objetosdoc");
		setSelect("iddocumento");
		setFrom("gd_objetosdoc");
		setWhere("tipoobjeto = 'gd_documentos' AND clave = '" + idDocContenedor + "'");
		setForwardOnly(true);
	}
	if (!qryContenido.exec()) {
		return false;
	}
	while (qryContenido.next()) {
		if (!this.iface.borrarDocumento(qryContenido.value("iddocumento"))) {
			return false;
		}
	}
	return true;
}


/** \C Muestra el contenido de un objeto de tipo contenedor
@param	item: Elemento de la lista correspondiente al documento seleccionado
\end */
function oficial_abrirDocumentoGD(item:FLListViewItem):Boolean
{
	if (!item) {
		item = this.iface.itemActual_; 
		if (item && !item.isExpandable()) {
			item = item.parent();
			if (item) {
				this.iface.cambiarSeleccionGD(item);
			}
		}
	}
	if (!item) {
		return false;
	}

	if (!item.isExpandable()) {
		return true;
	}

	var tipoObjeto:String;
	var clave:String = item.key();
	var iSep:Number = clave.find("-");
	if (iSep >= 0) {
		tipoObjeto = clave.left(iSep);
		clave = clave.right(clave.length - iSep - 1);
	} else {
		tipoObjeto = this.iface.tipoActual_;
	}
	
	var hermano;
	for (var hijo = item.firstChild(); hijo; hijo = hermano) {
		hermano = hijo.nextSibling();
		hijo.del();
	}

	var util:FLUtil = new FLUtil;
	var qryDocs:FLSqlQuery = new FLSqlQuery;
	qryDocs.setTablesList("gd_objetosdoc,gd_documentos,gd_tiposdoc");
	qryDocs.setSelect("d.iddocumento, d.codigo, d.estado, d.nombre, d.creadopor, d.fechacreacion, d.horacreacion, td.descripcion, td.contenedor, td.icono, vd.version, vd.modificadopor, vd.fechamodif, vd.horamodif");
	qryDocs.setFrom("gd_objetosdoc od INNER JOIN gd_documentos d ON od.iddocumento = d.iddocumento LEFT OUTER JOIN gd_tiposdoc td ON d.codtipo = td.codtipo LEFT OUTER JOIN gd_versionesdoc vd ON d.idversionactual = vd.idversion");
	qryDocs.setWhere("od.tipoobjeto = '" + tipoObjeto + "' AND od.clave = '" + clave + "'");
	qryDocs.setForwardOnly(true);
	if (!qryDocs.exec()) {
		return false;
	}

	var itemHijo;
	var icono:String;
	while (qryDocs.next()) {
		itemHijo = new FLListViewItem(item);
		itemHijo.setKey(qryDocs.value("d.iddocumento"));
		itemHijo.setText(0, qryDocs.value("d.nombre"));
		itemHijo.setText(1, qryDocs.value("vd.version"));
		itemHijo.setText(2, qryDocs.value("d.estado"));
		itemHijo.setText(3, this.iface.datosUsrFecha(qryDocs.value("d.creadopor"), qryDocs.value("d.fechacreacion"), qryDocs.value("d.horacreacion")));
		itemHijo.setText(4, this.iface.datosUsrFecha(qryDocs.value("vd.modificadopor"), qryDocs.value("vd.fechamodif"), qryDocs.value("vd.horamodif")));
		itemHijo.setText(5, qryDocs.value("d.codigo"));
		itemHijo.setText(6, qryDocs.value("td.descripcion"));
		
		icono = qryDocs.value("td.icono");
		if (icono && icono != "")
			itemHijo.setPixmap(0, icono);
		
		if (qryDocs.value("td.contenedor"))
			itemHijo.setExpandable(true);
	}
	if (!this.iface.mostrarDocsRelacionados(item, tipoObjeto, clave)) {
		return false;
	}
	item.setOpen(true);
}

/** \D Establece como documento actual el correspondiente al elemento de la lista seleccionado
@param	item: Elemento de la lista seleccionado
\end */
function oficial_cambiarSeleccionGD(item:FLListViewItem)
{
	this.iface.itemActual_ = item;
	if (this.iface.itemActual_.parent()) {
		var keyItem:String = this.iface.itemActual_.key();
		var iSep:Number = keyItem.find("-");
		if (iSep >= 0) {
			this.iface.tipoActual_ = keyItem.left(iSep);
		} else {
			this.iface.tipoActual_ = "gd_documentos";
		}
	} else {
		this.iface.tipoActual_ = this.iface.tipoObjetoRaiz_;
	}
}

function oficial_enviarDocEmail()
{
	return true;
}

/** \D Selecciona el documento actual y lanza el formulario de edici�n
@param	item: Elemento de la lista seleccionado
\end */
function oficial_editarDocumentoGD(item:FLListViewItem)
{
	if (!item) {
		item = this.iface.itemActual_;
		if (!item) {
			return;
		}
	} else {
		this.iface.cambiarSeleccionGD(item);
	}
	if (this.iface.tipoActual_ != "gd_documentos") {
		return false;
	}

	disconnect(this.iface.cursor_, "bufferCommited()", this, "iface.abrirDocumentoGD");
	delete this.iface.cursor_;
	this.iface.cursor_ = new FLSqlCursor("gd_documentos");
	connect (this.iface.cursor_, "bufferCommited()", this, "iface.abrirDocumentoGD");

	this.iface.cursor_.select("iddocumento = " + item.key());
	if (!this.iface.cursor_.first()) {
		return false;
	}
	if (!this.iface.cursor_.valueBuffer("iddocumento")) {
		return false;
	}
	this.iface.cursor_.editRecord();
}

/** \D Selecciona el documento actual y lanza el formulario de edici�n
@param	item: Elemento de la lista seleccionado
\end */
function oficial_verDocumentoGD()
{
	var util:FLUtil = new FLUtil;
	if (!this.iface.itemActual_) {
		MessageBox.warning(util.translate("scripts", "No ha seleccionado ning�n elemento"), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}

	if (this.iface.tipoActual_ == this.iface.tipoObjetoRaiz_) {
		return false;
	}

	disconnect(this.iface.cursor_, "bufferCommited()", this, "iface.abrirDocumentoGD");
	delete this.iface.cursor_;
	this.iface.cursor_ = new FLSqlCursor("gd_documentos");
	connect (this.iface.cursor_, "bufferCommited()", this, "iface.abrirDocumentoGD");

	this.iface.cursor_.select("iddocumento = " + this.iface.itemActual_.key());
	if (!this.iface.cursor_.first()) {
		return false;
	}
	if (!this.iface.cursor_.valueBuffer("iddocumento")) {
		return false;
	}
	this.iface.cursor_.browseRecord();
}

/** \C Permite al usuario seleccionar un documento del repositorio para asignarlo al documento contenedor seleccionado
@param	item: Elemento de la lista seleccionado
\end */
function oficial_asociarDoc_clickedGD()
{
	if (!this.iface.itemActual_)
		return false;
	
	var util:FLUtil = new FLUtil;
	var clave:String = this.iface.itemActual_.key();
	if (isNaN(clave)) {
		var iSep:Number = clave.find("-");
		if (iSep >= 0) {
			clave = clave.right(clave.length - iSep - 1);
		}
	}

	if (this.iface.tipoActual_ == "gd_documentos") {
		if (!util.sqlSelect("gd_documentos d INNER JOIN gd_tiposdoc td ON d.codtipo = td.codtipo", "td.contenedor", "d.iddocumento = " + clave, "gd_documentos,gd_tiposdoc")) {
			MessageBox.warning(util.translate("scripts", "El documento seleccionado no es de tipo contenedor"), MessageBox.Ok, MessageBox.NoButton);
			return false;
		}
	}

	var f:Object = new FLFormSearchDB("gd_buscardoc");
	var curDocumentos:FLSqlCursor = f.cursor();
	
	f.setMainWidget();
	var idDocumento:String = f.exec("iddocumento");

	if (idDocumento) {
		this.iface.asociarDocumento(idDocumento, this.iface.tipoActual_, clave);
		this.iface.abrirDocumentoGD(this.iface.itemActual_);
	}
}

/** \D Comprueba que un documento puede asociarse a un contenedor sin establecer un bucle, es decir, que el documento no contenga a su vez al contenedor
@param	idDocumento: Identificador del documento
@param	tipoObjeto: Tipo del objeto contenedor
@param	idContenedor: Identificador del contenedor
@return	true si la comprobaci�n indica que no hay bucles, false en caso contrario
\end */
function oficial_comprobarDependenciasGD(idDocumento:String, tipoObjeto:String, idContenedor:String):Boolean
{
	if (tipoObjeto != "gd_documentos")
		return true;

	var qryContenedores:FLSqlQuery = new FLSqlQuery;
	qryContenedores.setTablesList("gd_objetosdoc");
	qryContenedores.setSelect("tipoobjeto, clave");
	qryContenedores.setFrom("gd_objetosdoc");
	qryContenedores.setWhere("iddocumento = " + idContenedor);
	qryContenedores.setForwardOnly(true);
	if (!qryContenedores.exec())
		return false;
	while (qryContenedores.next()) {
		// Se llega al elemento ra�z sin obtener coincidencias
		if (qryContenedores.value("tipoobjeto") != "gd_documentos")
			return true;
		// Se llega a un contenedor que resulta ser el documento. Bucle encontrado
		if (qryContenedores.value("tipoobjeto") == "gd_documentos" && qryContenedores.value("clave") == idDocumento)
			return false;
		// Se comprueba si los documentos que contienen el contenedor actual coinciden con el documento
		if (!this.iface.comprobarDependenciasGD(idDocumento, qryContenedores.value("tipoobjeto"), qryContenedores.value("clave")))
			return false;
	}
	return true;
}

/** \C Elimina la asociaci�n entre un documento y su contenedor
\end */
function oficial_quitarDoc_clickedGD()
{
	var util:FLUtil = new FLUtil;
	if (!this.iface.itemActual_) {
		MessageBox.warning(util.translate("scripts", "No ha seleccionado ning�n elemento"), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}
	if (this.iface.tipoActual_ != "gd_documentos")
		return true;

	var padre:Object = this.iface.itemActual_.parent();
	if (!padre)
		return false;

	var tipoObjeto:String;
	var idContenedor:String = padre.key();
	var iSep:Number = idContenedor.find("-");
	if (iSep >= 0) {
		tipoObjeto = idContenedor.left(iSep);
		idContenedor = idContenedor.right(idContenedor.length - iSep - 1);
	} else {
		tipoObjeto = "gd_documentos";
	}
	var idDocumento:String = this.iface.itemActual_.key();

	if (!util.sqlSelect("gd_objetosdoc", "idrelacion", "iddocumento = " + idDocumento + " AND (tipoobjeto <> '" + tipoObjeto + "' OR clave <> '" + idContenedor + "')")) {
		MessageBox.warning(util.translate("scripts", "Los documentos deben estar asociados al menos a un contenedor.\nEl documento seleccionado s�lo est� asociado al contenedor que se muestra."), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}

	var res:Number = MessageBox.information(util.translate("scripts", "Va a eliminar el v�nculo del documento seleccionado con el contenedor que se muestra.\n�Desea continuar?"), MessageBox.Yes, MessageBox.No);
	if (res != MessageBox.Yes)
		return true;

	if (!util.sqlDelete("gd_objetosdoc", "iddocumento = " + idDocumento + " AND tipoobjeto = '" + tipoObjeto + "' AND clave = '" + idContenedor + "'")) {
		MessageBox.warning(util.translate("scripts", "Fall� la acci�n de desasignar el documento"), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}

	this.iface.abrirDocumentoGD(padre);

	return true;
}

/** \D Comprueba que los par�metros de configuraci�n de la gesti�n documental est�n correctamente establecidos
\return	True si la comprobaci�n es satisfactoria, false en caso contrario
\end */
function oficial_verificarConfiguracion()
{
	var _i = this.iface;

	_i.tipoRepositorio_ = AQUtil.sqlSelect("gd_config", "tiporepositorio", "1 = 1");
	if (!_i.tipoRepositorio_) {
		sys.warnMsgBox(sys.translate("No tiene establecido el tipo de repositorio.\nPara usar este m�dulo es necesario establecer este dato en el formulario de configuraci�n"));
		return false;
	}
	_i.urlRepositorio_ = AQUtil.sqlSelect("gd_config", "urlrepositorio", "1 = 1");
	if (_i.tipoRepositorio_ == "Base de datos") {

		if(!AQUtil.sqlSelect("gd_config", "usarbdlocal", "1 = 1")) {
			var idConDef = AQUtil.sqlSelect("gd_config", "idconexion", "1 = 1");
			var datosCx = _i.ejecutarQry("gd_conexiones", "descripcion,servidor,puerto,contrasena,nombrebd,usuario,driver", "1 = 1");
			if (datosCx.result != 1 || !idConDef || idConDef == "") {

				datosCx = _i.ejecutarQry("gd_config", "servidor,puerto,contrasena,nombrebd,usuario,driver", "1 = 1");
				if (datosCx.result != 1) {
					sys.warnMsgBox(sys.translate("No tiene definidos los par�metros de conexi�n a la base de datos de documentos"));
					return false;
				}

				if(!AQUtil.sqlInsert("gd_conexiones", ["descripcion","servidor","puerto","contrasena","nombrebd","usuario","driver"], [datosCx[0].nombrebd, datosCx[0].servidor, datosCx[0].puerto, datosCx[0].contrasena, datosCx[0].nombrebd, datosCx[0].usuario, datosCx[0].driver])) {
					sys.warnMsgBox(sys.translate("No tiene definidos los par�metros de conexi�n a la base de datos de documentos"));
					return false;
				}
				idConDef = AQUtil.sqlSelect("gd_conexiones", "id", "descripcion = '" + datosCx[0].nombrebd + "'");
				if(!AQUtil.sqlUpdate("gd_config", ["idconexion"], [idConDef], "1 = 1")) {
					sys.warnMsgBox(sys.translate("No tiene definidos los par�metros de conexi�n a la base de datos de documentos"));
					return false;
				}
			}			

			_i.cxBdRepo_ = datosCx;
			for(var i = 0; i < _i.cxBdRepo_.length; i++) {
				if("descripcion" in _i.cxBdRepo_[i])
					_i.cxBdRepo_[i].nombre = _i.cxBdRepo_[i].descripcion;
				else if ("nombrebd" in _i.cxBdRepo_[i])
					_i.cxBdRepo_[i].nombre = _i.cxBdRepo_[i].nombrebd;
			}
		}
		else {
			_i.cxBdRepo_ = {};
			_i.cxBdRepo_.nombre = "default";
		}

	} else {
		if (!_i.urlRepositorio_) {
			sys.warnMsgBox(sys.translate("No tiene establecida la URL del repositorio.\nPara usar este m�dulo es necesario establecer este dato en el formulario de configuraci�n"));
			return false;
		}
		if (!_i.urlRepositorio_.endsWith("/"))
			_i.urlRepositorio_ += "/";
	}
	if (!_i.pathLocal) {
		if (!_i.verificarDirLocal(_i.urlRepositorio_)) {
			return false;
		}
		var nombreBD = sys.nameBD();
		_i.pathLocal = Dir.home + "/tmp/bqdoc_" + nombreBD + "/";
	}

	_i.comandoCP_ = AQUtil.readSettingEntry("scripts/flcolagedo/comandocp");
	if (!_i.comandoCP_) {
		_i.comandoCP_ = "cp";
	}
	return true;
}

function oficial_valoresIniciales()
{
	var cursor:FLSqlCursor = new FLSqlCursor("gd_tiposdoc");
	var tiposDoc:Array =
		[["Carpeta", "Carpeta de documentos", true, "/* XPM */\nstatic char * folder_yellow_xpm[] = {\n\"16 16 54 1\",\n\" 	c None\",\n\".	c #F5A400\",\n\"+	c #F4A300\",\n\"@	c #FFFBB3\",\n\"#	c #FFFAA5\",\n\"$	c #F4A100\",\n\"%	c #FFF866\",\n\"&	c #F7B100\",\n\"*	c #F39F00\",\n\"=	c #FFF436\",\n\"-	c #FFF42F\",\n\";	c #F39C00\",\n\">	c #FFF116\",\n\",	c #F29600\",\n\"'	c #F29900\",\n\")	c #FFEC06\",\n\"!	c #FFED07\",\n\"~	c #FEDF00\",\n\"{	c #FFFDD8\",\n\"]	c #FFE500\",\n\"^	c #F29700\",\n\"/	c #FFE701\",\n\"(	c #FDD600\",\n\"_	c #FED900\",\n\":	c #F19500\",\n\"<	c #FFE300\",\n\"[	c #F19100\",\n\"}	c #FCCC00\",\n\"|	c #F19200\",\n\"1	c #FEDD00\",\n\"2	c #EF8C00\",\n\"3	c #FABF00\",\n\"4	c #F9BE00\",\n\"5	c #F19000\",\n\"6	c #EE8500\",\n\"7	c #F7B200\",\n\"8	c #EE8400\",\n\"9	c #F08F00\",\n\"0	c #FDD400\",\n\"a	c #EC7D00\",\n\"b	c #F5A800\",\n\"c	c #F5A700\",\n\"d	c #FCCF00\",\n\"e	c #EA7400\",\n\"f	c #FFFEEB\",\n\"g	c #EA7500\",\n\"h	c #EF8A00\",\n\"i	c #E76C00\",\n\"j	c #EF8800\",\n\"k	c #FBC600\",\n\"l	c #E56400\",\n\"m	c #EE8600\",\n\"n	c #E25B00\",\n\"o	c #E25A00\",\n\"  ......        \",\n\" +@#@###+       \",\n\"$%%%%%%%&$$$$$$ \",\n\"*=====-===-====*\",\n\";>>>>>>>>,,,,,,,\",\n\"'))!)!)),~{{{{],\",\n\"^//,,,,,({_____,\",\n\":<[}{{{{{}}}}}}[\",\n\"|123334333333342\",\n\"5_677777777\n7778\",\n\"90abbbbbbbcbcbba\",\n\"2defffffffffff(g\",\n\"hdifffffffffff(i\",\n\"jkl((((((((((((l\",\n\" mnnonnnnnnnnnn \",\n\"                \"};"],
		["Documento", "Documento gen�rico", false, "/* XPM */\nstatic char * document2_xpm[] = {\n\"16 16 86 1\",\n\" 	c None\",\n\".	c #8F8F8F\",\n\"+	c #FFFFFF\",\n\"@	c #C2D7FC\",\n\"#	c #B4CDF9\",\n\"$	c #A1C1F6\",\n\"%	c #71A0EB\",\n\"&	c #6699E8\",\n\"*	c #5C93E4\",\n\"=	c #518BE0\",\n\"-	c #4683DC\",\n\";	c #3C7CD8\",\n\">	c #2F73D2\",\n\",	c #246CCE\",\n\"'	c #1764CA\",\n\")	c #CDD2DA\",\n\"!	c #D1D6DF\",\n\"~	c #C7CDD6\",\n\"{	c #D4DBE6\",\n\"]	c #C4CBD7\",\n\"^	c #C4CDD9\",\n\"/	c #C3CCD8\",\n\"(	c #C0C9D6\",\n\"_	c #C1CAD8\",\n\":	c #D3DCEB\",\n\"<	c #D8E3F1\",\n\"[	c #D4DFEE\",\n\"}	c #E5E5E3\",\n\"|	c #E4E3E2\",\n\"1	c #DCDBDA\",\n\"2	c #E5E4E2\",\n\"3	c #E0DFDC\",\n\"4	c #DFDEDB\",\n\"5	c #DFDEDC\",\n\"6	c #F0EEEC\",\n\"7	c #F7F5F2\",\n\"8	c #FAF8F5\",\n\"9	c #FAF8F6\",\n\"0	c #F9F7F4\",\n\"a	c #EAEAEA\",\n\"b	c #E9E9E9\",\n\"c	c #E8E8E8\",\n\"d	c #E4E4E4\",\n\"e	c #E5E5E5\",\n\"f	c #DFDFDF\",\n\"g	c #E0E0E0\",\n\"h	c #DEDEDE\",\n\"i	c #D3D3D3\",\n\"j	c #DBDBDB\",\n\"k	c #D7D7D7\",\n\"l	c #D2D2D2\",\n\"m	c #D5D5D5\",\n\"n	c #D0D0D0\",\n\"o	c #D6D6D6\",\n\"p	c #CCCCCC\",\n\"q	c #CFCFCF\",\n\"r	c #CDCDCD\",\n\"s	c #DDDDDD\",\n\"t	c #DCDCDC\",\n\n\"u	c #D4D4D4\",\n\"v	c #D9D9D9\",\n\"w	c #D1D1D1\",\n\"x	c #CBCBCB\",\n\"y	c #E7E7E7\",\n\"z	c #E1E1E1\",\n\"A	c #DADADA\",\n\"B	c #E6E6E6\",\n\"C	c #ECECEC\",\n\"D	c #E2E2E2\",\n\"E	c #F7F7F7\",\n\"F	c #F4F4F4\",\n\"G	c #F2F2F2\",\n\"H	c #F1F1F1\",\n\"I	c #F0F0F0\",\n\"J	c #EFEFEF\",\n\"K	c #EEEEEE\",\n\"L	c #D8D8D8\",\n\"M	c #C8C8C8\",\n\"N	c #CACACA\",\n\"O	c #F5F5F5\",\n\"P	c #F9F9F9\",\n\"Q	c #FAFAFA\",\n\"R	c #F3F3F3\",\n\"S	c #A8A8A8\",\n\"T	c #C5C5C5\",\n\"U	c #CECECE\",\n\"................\",\n\".+@#$%&*=-;>,'+.\",\n\".+)!~{]^/(_:<[+.\",\n\".+}|1234567890+.\",\n\".+abbacdecffgh+.\",\n\".+ijkklmnoplqr+.\",\n\".+os\ntjuvwnlrxx+.\",\n\".+baabyezzetAf+.\",\n\".+BCDcEFGHIJKJ+.\",\n\".+lurLLlLiMiNM+.\",\n\".+gshDshvumLlw+.\",\n\".+zdgftOPQRSSSS.\",\n\".+LjzjkzdBjS++. \",\n\".+riiwTpwUpS+.  \",\n\".+thoeGRRRHS.   \",\n\"............    \"};"]];
	for (var i:Number = 0; i < tiposDoc.length; i++) {
		with(cursor) {
			setModeAccess(cursor.Insert);
			refreshBuffer();
			setValueBuffer("codtipo", tiposDoc[i][0]);
			setValueBuffer("descripcion", tiposDoc[i][1]);
			setValueBuffer("contenedor", tiposDoc[i][2]);
			setValueBuffer("icono", tiposDoc[i][3]);
			commitBuffer();
		}
	}
	delete cursor;
}

/** \D Construye una cadena con los datos de usuario, fecha y hora
@param	idUsuario: Identificador (login) del usuario
@param	fecha: Fecha en formato ISO
@param	hora: Hora en formato ISO
@return Cadena
\end */
function oficial_datosUsrFecha(idUsuario:String, fecha:String, hora:String):String
{
	var util:FLUtil = new FLUtil;
	var datosUsrFecha:String = "";
	if (fecha) {
		fecha = util.dateAMDtoDMA(fecha);
		fecha = fecha.toString().left(10);
		datosUsrFecha += fecha
	} else 
		datosUsrFecha += "          ";
	if (hora && !hora.toString().endsWith("00:00:00")) {
		hora = hora.toString().right(8);
		datosUsrFecha += ", " + hora
	} else 
		datosUsrFecha += "        ";

	if (idUsuario)
		datosUsrFecha += " (" + idUsuario + ")"

	return datosUsrFecha;
}

/** \D Baja el documento actual del repositorio al directorio local de documentos
\end */
function oficial_bajarDocumentoGD():Boolean
{
	var util:FLUtil = new FLUtil;
	if (!this.iface.itemActual_) {
		MessageBox.warning(util.translate("scripts", "No ha seleccionado ning�n elemento"), MessageBox.Ok, MessageBox.NoButton);
		return false;
	}

	if (this.iface.tipoActual_ == this.iface.tipoObjetoRaiz_)
		return false;

	var codDocumento:String = util.sqlSelect("gd_documentos", "codigo", "iddocumento = " + this.iface.itemActual_.key());
	if (!codDocumento)
		return false;
	
	var pathFichero:String = this.iface.pathLocal;
	if (!File.isDir(pathFichero)) {
		pathFichero = FileDialog.getExistingDirectory(Dir.home, util.translate("scripts", "Seleccione directorio"));
		if (!pathFichero)
			return false;
	}

	if (!this.iface.pub_obtenerDocumento(codDocumento, pathFichero + "/" + cursor.valueBuffer("fichero"), false, false, cursor.valueBuffer("rutarepositorio"))) {
		return false;
	}

	return true;
}

function oficial_datosItemActual():Array
{
	var valor:Array = [];
	valor["tipoObjeto"] = this.iface.tipoActual_;
	if (this.iface.itemActual_)
		valor["idObjeto"] = this.iface.itemActual_.key();
	else
		valor["idObjeto"] = false;
	return valor;
}

function oficial_abrirItemActual()
{
	this.iface.abrirDocumentoGD(this.iface.itemActual_);
}

function oficial_mostrarDocsRelacionados(item:FLListViewItem, tipoObjeto:String, clave:String):Boolean
{
	var util:FLUtil = new FLUtil;
	switch (tipoObjeto) {
		case "cl_proyectos": {
			var qrySP:FLSqlQuery = new FLSqlQuery;
			with (qrySP) {
				setTablesList("cl_subproyectos");
				setSelect("codsubproyecto, descripcion");
				setFrom("cl_subproyectos");
				setWhere("codproyecto = '" + clave + "'");
				setForwardOnly(true);
			}
			if (!qrySP.exec())
				return false;
		
			while (qrySP.next()) {
				itemHijo = new FLListViewItem(item);
				itemHijo.setKey("cl_subproyectos" + "-" + qrySP.value("codsubproyecto"));
				itemHijo.setText(0, this.iface.nombreObjetoContenedor("cl_subproyectos", qrySP.value("codsubproyecto")));
				itemHijo.setText(1, "");
				itemHijo.setText(2, "");
				itemHijo.setText(3, "");
				itemHijo.setText(4, "");
		
				icono = util.sqlSelect("cl_configproy", "iconosubproyecto", "1 = 1");
				if (icono && icono != "")
					itemHijo.setPixmap(0, icono);
				
				itemHijo.setExpandable(true);
			 }
			break;
		}
		case "clientes": {
			if (!sys.isLoadedModule("flcolaproy")) {
				break;
			}
			var qrySP:FLSqlQuery = new FLSqlQuery;
			with (qrySP) {
				setTablesList("cl_proyectos");
				setSelect("codproyecto");
				setFrom("cl_proyectos");
				setWhere("codcliente = '" + clave + "'");
				setForwardOnly(true);
			}
			if (!qrySP.exec())
				return false;
		
			while (qrySP.next()) {
				itemHijo = new FLListViewItem(item);
				itemHijo.setKey("cl_proyectos" + "-" + qrySP.value("codproyecto"));
				itemHijo.setText(0, this.iface.nombreObjetoContenedor("cl_proyectos", qrySP.value("codproyecto")));
				itemHijo.setText(1, "");
				itemHijo.setText(2, "");
				itemHijo.setText(3, "");
				itemHijo.setText(4, "");
		
				icono = util.sqlSelect("cl_configproy", "iconoproyecto", "1 = 1");
				if (icono && icono != "")
					itemHijo.setPixmap(0, icono);
				
				itemHijo.setExpandable(true);
			 }
			break;
		}
	}
	return true;
}

function oficial_nombreObjetoContenedor(tipoObjeto:String, clave:String):String
{
	var util:FLUtil = new FLUtil();
	var nombre:String;
	switch (tipoObjeto) {
		case "cl_proyectos": {
			var desSP:String = util.sqlSelect("cl_proyectos", "descripcion", "codproyecto = '" + clave + "'");
			nombre = util.translate("scripts", "Proy. %1 - %2").arg(clave).arg(desSP);
			break;
		}
		case "cl_subproyectos": {
			var desSP:String = util.sqlSelect("cl_subproyectos", "descripcion", "codsubproyecto = '" + clave + "'");
			nombre = util.translate("scripts", "Subp. %1 - %2").arg(clave).arg(desSP);
			break;
		}
	}

	return nombre;
}

function oficial_dameObjetoVinculado(eVinculos:FLDomElement, tipoObjeto:String):String
{
	var objetos:FLDomNodeList = eVinculos.elementsByTagName("Objeto");
	if (!objetos || objetos == undefined) {
		return false;
	}

	for (var i:Number = 0; i < objetos.length(); i++) {
		if (objetos.item(i).toElement().attribute("Tipo") == tipoObjeto) {
    		return objetos.item(i).toElement().attribute("IdObjeto");
  		}
	}

	return false;
}

/** \D Crea un registro de documento
\end */
function oficial_crearDocumento(codTipo:String, nombre:String, prefijo:String, masDatos:Array):String
{
	var _i = this.iface;
	var numero = _i.siguienteNumero(prefijo);
	if (!numero) {
		return false;
	}
	var codigo:String = codTipo + _i.cerosIzquierda(numero, (10 - prefijo.length));
	var usuario:String = sys.nameUser();
	var ahora:Date = new Date;

	if (!this.iface.curDocumento_) {
		this.iface.curDocumento_ = new FLSqlCursor("gd_documentos");
	}
	this.iface.curDocumento_.setModeAccess(this.iface.curDocumento_.Insert);
	this.iface.curDocumento_.refreshBuffer();
	this.iface.curDocumento_.setValueBuffer("codtipo", codTipo);
	this.iface.curDocumento_.setValueBuffer("nombre", nombre);
	this.iface.curDocumento_.setValueBuffer("codigo", codigo);
	this.iface.curDocumento_.setValueBuffer("creadopor", usuario);
	this.iface.curDocumento_.setValueBuffer("fechacreacion", ahora);
	this.iface.curDocumento_.setValueBuffer("horacreacion", ahora);

	if (masDatos) {
		if (!this.iface.datosDocumento(masDatos)) {
			return false;
		}
	}

	if (!this.iface.curDocumento_.commitBuffer()) {
		return false;
	}
	return this.iface.curDocumento_.valueBuffer("iddocumento");
}

/** \D Funci�n a sobrecargar
\end */
function oficial_datosDocumento(datos:Array):Boolean
{
	return true;
}

function oficial_valorCampoPlantilla(codTipo:String, campo:String, eDoc:FLDomElement):String
{
	return false;
}

/** Genera un proceso asociado al documento si el tipo del documento tiene un tipo de proceso asociado
@param	curDocumeto: Cursor asociado al documento
\end */
function oficial_generarProcesoDoc(curDocumento:FLSqlCursor):Boolean
{
	var util:FLUtil = new FLUtil;

	var codTipo:String = curDocumento.valueBuffer("codtipo");
	var idTipoProceso:String = util.sqlSelect("gd_tiposdoc", "idtipoproceso", "codtipo = '" + codTipo + "'");
	var idProceso:String;

	if (idTipoProceso && idTipoProceso != "") {
		idProceso = flcolaproc.iface.pub_crearProceso(idTipoProceso, "gd_documentos", curDocumento.valueBuffer("iddocumento"));
		if (!idProceso || idProceso == "") {
			return false;
		}
	}
	return true;
}

function oficial_adaptarRuta(ruta:String):String
{
	var util:FLUtil = new FLUtil();

	var rutaAdaptada:String = "";
	var caracterAnterior:String = "0";
	for (var i:Number = 0; i < ruta.length; i++) {
		if (ruta.charAt(i) == "/" && caracterAnterior == "/") {
			continue;
		}
		rutaAdaptada += ruta.charAt(i);
		caracterAnterior = ruta.charAt(i)
	}
	var os:String = util.getOS();
	
	if (os == "WIN32") {
		var rutaWin:String = "";
		for (var i:Number = 0; i < rutaAdaptada.length; i++) {
			if (rutaAdaptada.charAt(i) == "/") {
				rutaWin += "\\";
			} else {
				rutaWin += rutaAdaptada.charAt(i);
			}
		}
		rutaAdaptada = rutaWin;
	}
	return rutaAdaptada;
}

function oficial_valorTablaPlantilla(codTipo:String, campos:String, eDoc:FLDomElement):Array
{
	var util:FLUtil = new FLUtil;
	var valores:Array = [];
	var arrayCampos:Array = campos.split(",");

// 	switch (codTipo) {
// 		default: {
// 			break;
// 		}
// 	}
	
	return valores;
}

/** \D Ejecuta la query especificada y devuelve un array con los datos de los campos seleccionados. Devuelve un campo extra 'result' que es 1 = Ok, 0 = Error, -1 No encontrado
@param	tabla: Nombre de la tabla
@param	campos: Nombre de los campos, separados por comas
@param	where: Cl�usula where
@param	listaTablas: Lista de las tablas empleadas en la consulta. Este par�metro es opcional y se usa si la consulta afecta a m�s de una tabla.
@return	Array con los valores de los campos solicitados, m�s el campo result.
\end */
function oficial_ejecutarQry(tabla, campos, where, listaTablas)
{
	var campo = campos.split(",");
	var valor = [];
	valor["result"] = 1;
	var query = new FLSqlQuery();
	if (listaTablas)
		query.setTablesList(listaTablas);
	else
		query.setTablesList(tabla);
	try { query.setForwardOnly( true ); } catch (e) {}
	query.setSelect(campos);
	query.setFrom(tabla);
	query.setWhere(where);
	if (query.exec()) {
		if(query.size() == 0)
			valor.result = -1;
		else {
			var i = 0;
			while (query.next()) {
				valor[i] = {};
				for (var j = 0; j < campo.length; j++) {
					valor[i][campo[j]] = query.value(campo[j]);
				}
				i++;
			}
		}
	} else {
		MessageBox.critical(sys.translate("Fall� la consulta") + query.sql(),
			MessageBox.Ok, MessageBox.NoButton, MessageBox.NoButton);
		valor.result = 0;
	}

	return valor;
}

function oficial_cerosIzquierda(numero, totalCifras)
{
	var ret:String = numero.toString();
	var numCeros:Number = totalCifras - ret.length;
	for ( ; numCeros > 0 ; --numCeros)
		ret = "0" + ret;
	return ret;
}

function oficial_bdBorrarDocRepo(codigo, idConexion)
{
	var _i = this.iface;

	var nomCx = AQUtil.sqlSelect("gd_conexiones", "descripcion", "id = " + idConexion);
	if(!nomCx || nomCx == "")
		return false;

	var cxBd = _i.dameCxBdDocs(nomCx);
	if (!cxBd) {
		sys.warnMsgBox(sys.translate("No hay conexi�n con la base de datos de documentos"));
		return false;
	}
	if (cxBd == "default") {
		var idDoc = AQUtil.sqlSelect("gd_documentos", "iddocumento", "codigo = '" + codigo + "'");
		if(!idDoc)
			return false;
		if (!AQUtil.sqlDelete("gd_versionesdoc", "iddocumento = " + idDoc))
			return false;
		if (!AQUtil.sqlDelete("gd_documentos", "iddocumento = " + idDoc))
			return false;
	} else {
		var idDoc = AQUtil.sqlSelect("gd_documentos", "iddocumento", "codigo = '" + codigo + "'", "gd_documentos", cxBd);
		if(!idDoc)
			return false;
		if (!AQUtil.sqlDelete("gd_versionesdoc", "iddocumento = " + idDoc, cxBd))
			return false;		
		if (!AQUtil.sqlDelete("gd_documentos", "iddocumento = " + idDoc, cxBd))
			return false;
	}
	
	return true;
}

function oficial_tbnCreaMultiGD_clicked()
{
	var _i = this.iface;
	
	var clave = _i.itemActual_.key();
	if (_i.tipoActual_ == "gd_documentos") {
		if (!AQUtil.sqlSelect("gd_documentos d INNER JOIN gd_tiposdoc td ON d.codtipo = td.codtipo", "td.contenedor", "d.iddocumento = " + clave, "gd_documentos,gd_tiposdoc")) {
			MessageBox.warning(sys.translate("El documento seleccionado no es de tipo contenedor"), MessageBox.Ok, MessageBox.NoButton);
			return false;
		}
	}
	if (!_i.itemActual_.isExpandable()) {
		return true;
	}
	
	var listaDocs = FileDialog.getOpenFileNames( Dir.home, "*", sys.translate("Seleccione los documentos a asociar"));
	if (!listaDocs) {
		return false;
	}
	var f, rutaF,idDocumento, idVersion;
	var curVersion = new FLSqlCursor("gd_versionesdoc");
	for (var i = 0; i < listaDocs.length; i++) {
		rutaF = listaDocs[i];
		if (!File.exists(rutaF)) {
			MessageBox.warning(sys.translate("El fichero %1 no existe").arg(rutaF), MessageBox.Ok, MessageBox.NoButton);
		}
		f = new File(rutaF);
		var ahora = new Date;
		
		disconnect(_i.cursor_, "bufferCommited()", _i, "vincularDocumentoGD");
		delete this.iface.cursor_;
		_i.cursor_ = new FLSqlCursor("gd_documentos");

		_i.cursor_.setModeAccess(_i.cursor_.Insert);
		_i.cursor_.refreshBuffer();
		_i.cursor_.setValueBuffer("codigo", "0");
		_i.cursor_.setValueBuffer("nombre", f.name);
		_i.cursor_.setValueBuffer("codtipo", "Documento");
		_i.cursor_.setValueBuffer("fichero", f.name);
		_i.cursor_.setValueBuffer("creadopor", sys.nameUser());
		_i.cursor_.setValueBuffer("fechacreacion", ahora.toString().left(10));
		_i.cursor_.setValueBuffer("horacreacion", ahora.toString().right(8));
		_i.cursor_.setValueBuffer("extension", f.extension);
		_i.cursor_.setValueBuffer("rutarepositorio", f.path);
		if (!_i.cursor_.commitBuffer()) {
			return false;
		}
		idDocumento = _i.cursor_.valueBuffer("iddocumento");
		_i.vincularDocumentoGD();

		_i.cursor_.select("iddocumento = " + idDocumento);
		if (!_i.cursor_.first()) {
			return false;
		}
		_i.cursor_.setModeAccess(_i.cursor_.Edit);
		_i.cursor_.refreshBuffer();
		
		curVersion.setModeAccess(curVersion.Insert);
		curVersion.refreshBuffer();
		curVersion.setValueBuffer("iddocumento", idDocumento);
		curVersion.setValueBuffer("version", "01");
		curVersion.setValueBuffer("fecha", ahora.toString().left(10));
		curVersion.setValueBuffer("fichero", f.name);
		curVersion.setValueBuffer("modificadopor", sys.nameUser());
		curVersion.setValueBuffer("fechamodif", ahora.toString().left(10));
		curVersion.setValueBuffer("horamodif", ahora.toString().right(8));
		if (!curVersion.commitBuffer()) {
			return false;
		}
		idVersion = curVersion.valueBuffer("idversion");
		_i.cursor_.setValueBuffer("idversionactual", idVersion);
		if (!_i.subirDocCursor(_i.cursor_, rutaF)) {
			return false;
		}
		if (!_i.cursor_.commitBuffer()) {
			return false;
		}
	}
	_i.abrirDocumentoGD();
}

function oficial_subirDocCursor(cursor, pathFichero)
{
	var _i = this.iface;
	
	var tipoRepo = _i.obtenerTipoRepositorio();
	switch (tipoRepo) {
		case "Distribuido": {
			var version = AQUtil.sqlSelect("gd_versionesdoc", "version", "idversion = " + cursor.valueBuffer("idversionactual"));
			if (!version) {
				return false;
			}
			if (!_i.copiarDocRepo(cursor.valueBuffer("fichero"), pathFichero, version)) {
				return false;
			}
			if (!_i.subirDocumento(cursor)) {
				return false;
			}
			break;
		}
		case "Base de datos": {
			if (!_i.subirDocumento(cursor, false, pathFichero)) {
				return false;
			}
			break;
		}
		default: {
			/** \C El documento es actualizado en el repositorio cuando se comprueba que los datos del formulario son correctos
			\end */

			var version = AQUtil.sqlSelect("gd_versionesdoc", "version", "idversion = " + cursor.valueBuffer("idversionactual"));
			if (!version) {
				return false;
			}
			var estado = _i.svnUp(cursor.valueBuffer("codigo"), version);

			switch (estado) {
				case "C": {
					sys.warnMsgBox(sys.translate("Existe un conflicto entre la versi�n local del documento y la versi�n del repositorio.\nNo es posible a�adir una nueva versi�n sin antes resolver el conflicto.\n"));
					break;
				}
				case "X":
				case "XX":
				case "?":
				case "??":
				case "U": {
					break;
				}
				default: {
					return false;
				}
			}
	
			if (!_i.copiarDocRepo(cursor.valueBuffer("codigo"), pathFichero, version)) {
				return false;
			}
			if (!_i.subirDocumento(cursor)) {
				return false;
			}
			break;
		}
	}
	return true;
}

function oficial_comprobarDocumentosBD()
{
	var _i = this.iface;

	if (_i.tipoRepositorio_ != "Base de datos")
		return true;
	if (AQUtil.sqlSelect("gd_config", "usarbdlocal", "1 = 1"))
		return true;

	var curDoc = new FLSqlCursor("gd_documentos");
	curDoc.select("idconexion IS NULL");

	if(curDoc.size() > 0)
		sys.infoMsgBox(sys.translate("Algunos documentos no tienen asociada una base de datos. Se le asignar� la BD por defecto."));
	else
		return true;

	AQUtil.createProgressDialog(sys.translate("Actualizando documentos..." ), curDoc.size());
	var paso = 0;
	var idConDef = AQUtil.sqlSelect("gd_config", "idconexion", "1 = 1");
	while(curDoc.next()) {
		AQUtil.setProgress(paso++);
		curDoc.setModeAccess(curDoc.Edit);
		curDoc.refreshBuffer();

		curDoc.setValueBuffer("idconexion", idConDef);

		if(!curDoc.commitBuffer()) {
			AQUtil.destroyProgressDialog();
			sys.warnMsgBox(sys.translate("Ocurri� un error durante la actualizaci�n de los documentos."))
			return false;
		}
	}

	AQUtil.destroyProgressDialog();
	sys.infoMsgBox(sys.translate("Documentos actualizados correctamente."))
	return true;
}

//// OFICIAL /////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////

/** @class_definition head */
/////////////////////////////////////////////////////////////////
//// DESARROLLO /////////////////////////////////////////////////

//// DESARROLLO /////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////
