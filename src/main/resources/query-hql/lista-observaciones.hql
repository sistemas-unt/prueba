select so.observaciones,asist.nombres ||' ' || asist.apellidoPaterno ||' '|| asist.apellidoMaterno,so.fecha from SocObservacion so join so.perfil pas join pas.persona asist join so.servicioSocial ss join ss.perfil p join p.persona per where per.docIdentidad = '47180885'