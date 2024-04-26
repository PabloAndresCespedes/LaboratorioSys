prompt PL/SQL Developer Export User Objects for user DEVELOPER@XE_VB
prompt Created by programacion7 on jueves, 25 de abril de 2024
set define off
spool fullObject.log

prompt
prompt Creating table LAB_TIPOS_PROFESIONALES
prompt ======================================
prompt
@@lab_tipos_profesionales.tab
prompt
prompt Creating table LAB_PROFESIONALES
prompt ================================
prompt
@@lab_profesionales.tab
prompt
prompt Creating table LAB_TIPOS_PEDIDOS
prompt ================================
prompt
@@lab_tipos_pedidos.tab
prompt
prompt Creating table LAB_ESTADOS_PEDIDOS
prompt ==================================
prompt
@@lab_estados_pedidos.tab
prompt
prompt Creating table LAB_PACIENTES
prompt ============================
prompt
@@lab_pacientes.tab
prompt
prompt Creating table LAB_PEDIDOS
prompt ==========================
prompt
@@lab_pedidos.tab
prompt
prompt Creating table LAB_GENEROS
prompt ==========================
prompt
@@lab_generos.tab
prompt
prompt Creating table LAB_VALORES_REFERENCIA
prompt =====================================
prompt
@@lab_valores_referencia.tab
prompt
prompt Creating table LAB_DET_PEDIDOS
prompt ==============================
prompt
@@lab_det_pedidos.tab
prompt
prompt Creating table LAB_IMPUESTOS
prompt ============================
prompt
@@lab_impuestos.tab
prompt
prompt Creating table LAB_TIPOS_ESTUDIOS
prompt =================================
prompt
@@lab_tipos_estudios.tab
prompt
prompt Creating table LAB_ESTUDIOS
prompt ===========================
prompt
@@lab_estudios.tab
prompt
prompt Creating table LAB_ESTUDIOS_PRECIOS
prompt ===================================
prompt
@@lab_estudios_precios.tab
prompt
prompt Creating table LAB_ESTUDIOS_VALOR_REF
prompt =====================================
prompt
@@lab_estudios_valor_ref.tab
prompt
prompt Creating table LAB_TIPOS_PRECIOS
prompt ================================
prompt
@@lab_tipos_precios.tab
prompt
prompt Creating table PERMISOS
prompt =======================
prompt
@@permisos.tab
prompt
prompt Creating table PERMISOS_PAGINAS
prompt ===============================
prompt
@@permisos_paginas.tab
prompt
prompt Creating table ROLES
prompt ====================
prompt
@@roles.tab
prompt
prompt Creating table ROLES_PERMISOS
prompt =============================
prompt
@@roles_permisos.tab
prompt
prompt Creating table USUARIOS
prompt =======================
prompt
@@usuarios.tab
prompt
prompt Creating table ROLES_USUARIOS
prompt =============================
prompt
@@roles_usuarios.tab
prompt
prompt Creating table RT_EMPRESAS
prompt ==========================
prompt
@@rt_empresas.tab
prompt
prompt Creating table RT_BANCOS
prompt ========================
prompt
@@rt_bancos.tab
prompt
prompt Creating table RT_CARGOS
prompt ========================
prompt
@@rt_cargos.tab
prompt
prompt Creating table RT_ESPECIALISTAS
prompt ===============================
prompt
@@rt_especialistas.tab
prompt
prompt Creating table RT_CARGOS_ESPECIALISTAS
prompt ======================================
prompt
@@rt_cargos_especialistas.tab
prompt
prompt Creating table RT_FORMAS_PAGO
prompt =============================
prompt
@@rt_formas_pago.tab
prompt
prompt Creating table RT_COBROS
prompt ========================
prompt
@@rt_cobros.tab
prompt
prompt Creating table RT_PACIENTES
prompt ===========================
prompt
@@rt_pacientes.tab
prompt
prompt Creating table RT_RESERVAS
prompt ==========================
prompt
@@rt_reservas.tab
prompt
prompt Creating table RT_CONSULTAS
prompt ===========================
prompt
@@rt_consultas.tab
prompt
prompt Creating table RT_CONS_DATOS_PAC
prompt ================================
prompt
@@rt_cons_datos_pac.tab
prompt
prompt Creating table RT_MONEDAS
prompt =========================
prompt
@@rt_monedas.tab
prompt
prompt Creating table RT_COTIZACIONES
prompt ==============================
prompt
@@rt_cotizaciones.tab
prompt
prompt Creating table RT_DOCUMENTOS
prompt ============================
prompt
@@rt_documentos.tab
prompt
prompt Creating table RT_DOCUMENTOS_DET
prompt ================================
prompt
@@rt_documentos_det.tab
prompt
prompt Creating table RT_IMPUESTOS
prompt ===========================
prompt
@@rt_impuestos.tab
prompt
prompt Creating table RT_PARAMETROS_DOC
prompt ================================
prompt
@@rt_parametros_doc.tab
prompt
prompt Creating table RT_PARAMETROS_USUARIOS
prompt =====================================
prompt
@@rt_parametros_usuarios.tab
prompt
prompt Creating table RT_SERVICIOS
prompt ===========================
prompt
@@rt_servicios.tab
prompt
prompt Creating table RT_RESERVAS_SERVICIOS
prompt ====================================
prompt
@@rt_reservas_servicios.tab
prompt
prompt Creating table RT_SERVICIOS_PRECIOS
prompt ===================================
prompt
@@rt_servicios_precios.tab
prompt
prompt Creating table RT_TIPOS_DOCUMENTOS
prompt ==================================
prompt
@@rt_tipos_documentos.tab
prompt
prompt Creating table RT_TURNOS_CAB
prompt ============================
prompt
@@rt_turnos_cab.tab
prompt
prompt Creating table RT_TURNOS_DET
prompt ============================
prompt
@@rt_turnos_det.tab
prompt
prompt Creating table USUARIOS_EMPRESAS
prompt ================================
prompt
@@usuarios_empresas.tab
prompt
prompt Creating sequence USUARIOS_EMPRESAS_SEQ
prompt =======================================
prompt
@@usuarios_empresas_seq.seq
prompt
prompt Creating package GENERAL
prompt ========================
prompt
@@general.pck
prompt
prompt Creating package PKG_AUTH
prompt =========================
prompt
@@pkg_auth.pck
prompt
prompt Creating function ENCRIPTA_PASSWORD
prompt ===================================
prompt
@@encripta_password.fnc
prompt
prompt Creating function IF_UPDATE
prompt ===========================
prompt
@@if_update.fnc
prompt
prompt Creating trigger LAB_DET_PEDIDOS_BIU
prompt ====================================
prompt
@@lab_det_pedidos_biu.trg
prompt
prompt Creating trigger LAB_ESTADOS_PEDIDOS_BIU
prompt ========================================
prompt
@@lab_estados_pedidos_biu.trg
prompt
prompt Creating trigger LAB_ESTUDIOS_BIU
prompt =================================
prompt
@@lab_estudios_biu.trg
prompt
prompt Creating trigger LAB_ESTUDIOS_PRECIOS_BIU
prompt =========================================
prompt
@@lab_estudios_precios_biu.trg
prompt
prompt Creating trigger LAB_ESTUDIOS_VALOR_REF_BIU
prompt ===========================================
prompt
@@lab_estudios_valor_ref_biu.trg
prompt
prompt Creating trigger LAB_GENEROS_BIU
prompt ================================
prompt
@@lab_generos_biu.trg
prompt
prompt Creating trigger LAB_IMPUESTOS_BIU
prompt ==================================
prompt
@@lab_impuestos_biu.trg
prompt
prompt Creating trigger LAB_PACIENTES_BIU
prompt ==================================
prompt
@@lab_pacientes_biu.trg
prompt
prompt Creating trigger LAB_PEDIDOS_BIU
prompt ================================
prompt
@@lab_pedidos_biu.trg
prompt
prompt Creating trigger LAB_PROFESIONALES_BIU
prompt ======================================
prompt
@@lab_profesionales_biu.trg
prompt
prompt Creating trigger LAB_TIPOS_ESTUDIOS_BIU
prompt =======================================
prompt
@@lab_tipos_estudios_biu.trg
prompt
prompt Creating trigger LAB_TIPOS_PEDIDOS_BIU
prompt ======================================
prompt
@@lab_tipos_pedidos_biu.trg
prompt
prompt Creating trigger LAB_TIPOS_PRECIOS_BIU
prompt ======================================
prompt
@@lab_tipos_precios_biu.trg
prompt
prompt Creating trigger LAB_TIPOS_PROFESIONALES_BIU
prompt ============================================
prompt
@@lab_tipos_profesionales_biu.trg
prompt
prompt Creating trigger LAB_VALORES_REFERENCIA_BIU
prompt ===========================================
prompt
@@lab_valores_referencia_biu.trg
prompt
prompt Creating trigger PERMISOS_BIU
prompt =============================
prompt
@@permisos_biu.trg
prompt
prompt Creating trigger ROLES_AIU
prompt ==========================
prompt
@@roles_aiu.trg
prompt
prompt Creating trigger ROLES_BIU
prompt ==========================
prompt
@@roles_biu.trg
prompt
prompt Creating trigger RT_BANCOS_BIU
prompt ==============================
prompt
@@rt_bancos_biu.trg
prompt
prompt Creating trigger RT_CARGOS_BIU
prompt ==============================
prompt
@@rt_cargos_biu.trg
prompt
prompt Creating trigger RT_CARGOS_ESPECIALISTAS_BIU
prompt ============================================
prompt
@@rt_cargos_especialistas_biu.trg
prompt
prompt Creating trigger RT_COBROS_BIU
prompt ==============================
prompt
@@rt_cobros_biu.trg
prompt
prompt Creating trigger RT_CONSULTAS_BIU
prompt =================================
prompt
@@rt_consultas_biu.trg
prompt
prompt Creating trigger RT_CONS_DATOS_PAC_BIU
prompt ======================================
prompt
@@rt_cons_datos_pac_biu.trg
prompt
prompt Creating trigger RT_COTIZACIONES_BIU
prompt ====================================
prompt
@@rt_cotizaciones_biu.trg
prompt
prompt Creating trigger RT_DOCUMENTOS_BIU
prompt ==================================
prompt
@@rt_documentos_biu.trg
prompt
prompt Creating trigger RT_DOCUMENTOS_DET_BIU
prompt ======================================
prompt
@@rt_documentos_det_biu.trg
prompt
prompt Creating trigger RT_EMPRESAS_BIU
prompt ================================
prompt
@@rt_empresas_biu.trg
prompt
prompt Creating trigger RT_ESPECIALISTAS_BIU
prompt =====================================
prompt
@@rt_especialistas_biu.trg
prompt
prompt Creating trigger RT_FORMAS_PAGO_BIU
prompt ===================================
prompt
@@rt_formas_pago_biu.trg
prompt
prompt Creating trigger RT_IMPUESTOS_BIU
prompt =================================
prompt
@@rt_impuestos_biu.trg
prompt
prompt Creating trigger RT_MONEDAS_BIU
prompt ===============================
prompt
@@rt_monedas_biu.trg
prompt
prompt Creating trigger RT_PACIENTES_BIU
prompt =================================
prompt
@@rt_pacientes_biu.trg
prompt
prompt Creating trigger RT_PARAMETROS_DOC_BIU
prompt ======================================
prompt
@@rt_parametros_doc_biu.trg
prompt
prompt Creating trigger RT_PARAMETROS_USUARIOS_BIU
prompt ===========================================
prompt
@@rt_parametros_usuarios_biu.trg
prompt
prompt Creating trigger RT_RESERVAS_BIU
prompt ================================
prompt
@@rt_reservas_biu.trg
prompt
prompt Creating trigger RT_RESERVAS_SERVICIOS_BIU
prompt ==========================================
prompt
@@rt_reservas_servicios_biu.trg
prompt
prompt Creating trigger RT_SERVICIOS_BIU
prompt =================================
prompt
@@rt_servicios_biu.trg
prompt
prompt Creating trigger RT_SERVICIOS_PRECIOS_BIU
prompt =========================================
prompt
@@rt_servicios_precios_biu.trg
prompt
prompt Creating trigger RT_TIPOS_DOCUMENTOS_BIU
prompt ========================================
prompt
@@rt_tipos_documentos_biu.trg
prompt
prompt Creating trigger RT_TURNOS_CAB_BIU
prompt ==================================
prompt
@@rt_turnos_cab_biu.trg
prompt
prompt Creating trigger RT_TURNOS_DET_BIU
prompt ==================================
prompt
@@rt_turnos_det_biu.trg
prompt
prompt Creating trigger USUARIOS_AIU
prompt =============================
prompt
@@usuarios_aiu.trg
prompt
prompt Creating trigger USUARIOS_BIU
prompt =============================
prompt
@@usuarios_biu.trg
prompt
prompt Creating trigger USUARIOS_EMPRESAS_BI
prompt =====================================
prompt
@@usuarios_empresas_bi.trg

prompt Done
spool off
set define on
