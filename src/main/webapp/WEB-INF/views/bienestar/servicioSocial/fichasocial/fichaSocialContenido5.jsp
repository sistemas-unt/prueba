<%@ include file="/WEB-INF/views/include.jsp"%>

<div class="">
	<!--/.page-header-->

	<div class="row-fluid">
		<div class="span12">
			<!--PAGE CONTENT BEGINS-->

			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						<div class="widget-header widget-header-blue widget-header-flat">
							<h4 class="lighter">Ficha de Servicio Social</h4>
						</div>

						<div class="widget-body">
							<div class="widget-main">
								<div class="row-fluid">
									<form class="" name="formulario5" method="post" id="formulario5">
										<div id="fuelux-wizard" class="row-fluid hide" data-
											target="#step-container" style="display: block;">
											<ul class="wizard-steps">
												<li data-target="#step1" class="complete"
													style="min-width: 11.1%; max-width: 11.1%;"><span
													class="step">1</span></li>

												<li data-target="#step2"
													style="min-width: 11.1%; max-width: 11.1%;"
													class="complete"><span class="step">2</span></li>

												<li data-target="#step3"
													style="min-width: 11.1%; max-width: 11.1%;"
													class="complete"><span class="step">3</span></li>
												<li data-target="#step4"
													style="min-width: 11.1%; max-width: 11.1%;"
													class="complete"><span class="step">4</span></li>
												<li data-target="#step5"
													style="min-width: 11.1%; max-width: 11.1%;" class="active"><span
													class="step">5</span></li>
												<li data-target="#step6"
													style="min-width: 11.1%; max-width: 11.1%;" class=""><span
													class="step">6</span></li>
												<li data-target="#step7"
													style="min-width: 11.1%; max-width: 11.1%;" class=""><span
													class="step">7</span></li>
												<li data-target="#step8"
													style="min-width: 11.1%; max-width: 11.1%;" class=""><span
													class="step">8</span></li>
												<li data-target="#step9"
													style="min-width: 11.1%; max-width: 11.1%;" class=""><span
													class="step">9</span></li>
											</ul>
										</div>

										<hr />
										<div class="step-content row-fluid position-relative"
											id="step-container">

											<!-- ----------------------- VIVIENDA DEL ALUMNO------------------------------------- -->
											<div class="step-pane active" id="step4">
												<div class="row-fluid">
													<div class="span10">
														<div class="page-header position-relative">
															<h4 style="color: #2679b5">Situaci�n Econ�mica del Alumno</h4>
														</div>
														<div class="row-fluid">
															<div class="span6">
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Ocupaci�n
																		laboral</label>
																	<div class="controls">
																		<select  name="ocupacionLab">
																			<option value="">--- Seleccione opci�n ---</option>
																			<c:forEach var="prod" items="${model.listaOcupacion}">
																				<option value="${prod.id}">
																					<c:out value="${prod.ocupacion}"></c:out>
																				</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Condici�n</label>
																	<div class="controls">
																		<select  name="sscondicion">
																			<option value="">--- Seleccione opci�n ---</option>
																			<c:forEach var="prod" items="${model.listaCondicion}">
																				<option value="${prod.id}">
																					<c:out value="${prod.condicion}"></c:out>
																				</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Dedicaci�n</label>
																	<div class="controls">
																		<select  name="ssdedicacion">
																			<option value="">--- Seleccione opci�n ---</option>
																			<c:forEach var="prod"
																				items="${model.listaDedicacion}">
																				<option value="${prod.id}">
																					<c:out value="${prod.dedicacion}"></c:out>
																				</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>
															</div>
															<div class="span6">
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Turno
																		de Trabajo</label>
																	<div class="controls">
																		<select  name="turnotrabajo">
																			<option value="">--- Seleccione opci�n ---</option>
																			<c:forEach var="prod" items="${model.listaTrabajo}">
																				<option value="${prod.id}">
																					<c:out value="${prod.turno}"></c:out>
																				</option>
																			</c:forEach>
																		</select>
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Centro
																		de trabajo</label>
																	<div class="controls">
																		<input type="text" name="lugar" required="required"
																			placeholder="Ingrese su lugar de trabajo">
																	</div>
																</div>
															</div>
														</div>


														<!-- ---------------------------- CUADRO 2 INGRESOS  ------------------------------------------------ -->
														<div class="page-header position-relative">
															<h4 style="color: #2679b5">Ingresos percibidos por el Alumno</h4>
														</div>
														<div class="row-fluid">
															<div class="span6">
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Padres</label>
																	<div class="controls">
																		<input type="text" id="cantpadres" name="cantpadres" required="required"
																			placeholder="ingrese cantidad" title="solo numeros"
																			onblur="suma()">
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Trabajo</label>
																	<div class="controls">
																		<input type="text" id="canttrabajo" name="canttrabajo" required="required"
																			placeholder="ingrese cantidad" title="solo numeros" onblur="suma()">
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Pensi�n
																		Judicial</label>
																	<div class="controls">
																		<input type="text" id="cantpension" name="cantpension" required="required"
																			placeholder="ingrese cantidad" title="solo numeros" onblur="suma()">
																	</div>
																</div>
															</div>
															<div class="span6">
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Abuelos</label>
																	<div class="controls">
																		<input type="text" id="cantabuelos" name="cantabuelos" required="required"
																			placeholder="ingrese cantidad" title="solo numeros" onblur="suma()">
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Otros
																		Parientes</label>
																	<div class="controls">
																		<input type="text" id="cantotros" name="cantotros" required="required"
																			placeholder="ingrese cantidad" title="solo numeros" onblur="suma()">
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">TOTAL</label>
																	<div class="controls">
																		<input type="text" id="total" name="total" 
																			readonly="readonly" placeholder="ingrese cantidad">
																	</div>
																</div>
															</div>
														</div>

														<!-- ---------------------------- CUADRO 3 EGRESOS  ------------------------------------------------ -->
														<div class="page-header position-relative">
															<h4 style="color: #2679b5">Egresos percibidos por el Alumno</h4>
														</div>
														<div class="row-fluid">
															<div class="span6">
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Pension
																		Universitaria</label>
																	<div class="controls">
																		<input type="text" id="cantepension" name="cantepension" required="required"
																			placeholder="ingrese cantidad" title="solo numeros" onblur="sumae()">
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Habitacion</label>
																	<div class="controls">
																		<input type="text" id="cantehabitacion" name="cantehabitacion" required="required"
																			placeholder="ingrese cantidad" title="solo numeros" onblur="sumae()">
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Movilidad</label>
																	<div class="controls">
																		<input type="text" id="cantemovilidad" name="cantemovilidad" required="required"
																			placeholder="ingrese cantidad" title="solo numeros" onblur="sumae()">
																	</div>
																</div>
															</div>

															<div class="span6">
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Alimentacion</label>
																	<div class="controls">
																		<input type="text" id="cantealimentacion" required="required"
																			name="cantealimentacion" placeholder="ingrese cantidad" title="solo numeros"
																			onblur="sumae()">
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Vestimenta</label>
																	<div class="controls">
																		<input type="text" id="cantevestimenta" name="cantevestimenta" required="required"
																			placeholder="ingrese cantidad" title="solo numeros" onblur="sumae()">
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">Utiles</label>
																	<div class="controls">
																		<input type="text" id="canteutiles" name="canteutiles" required="required"
																			placeholder="ingrese cantidad" title="solo numeros" onblur="sumae()">
																	</div>
																</div>
																<div class="control-group">
																	<label class="control-label" for="form-field-1">TOTAL</label>
																	<div class="controls">
																		<input type="text" id="totale" name="totale" 
																			readonly="readonly" placeholder="ingrese cantidad">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<hr>
										<div class="row-fluid wizard-actions">
											<button type="reset" class="btn btn-prev"
												onClick="location.href = 'actualizar_ficha_vivienda_Alumno.htm'">
												<i class="icon-arrow-left"></i> Anterior
											</button>

											<button type="submit" class="btn btn-success btn-next"
												data-last="Finish ">
												Siguiente <i class="icon-arrow-right icon-on-right"></i>
											</button>
										</div>
									</form>
								</div>
							</div>
							<!--/widget-main-->
						</div>
						<!--/widget-body-->
					</div>
				</div>
			</div>
			<!--PAGE CONTENT ENDS-->
		</div>
		<!--/.span-->
	</div>
	<!--/.row-fluid-->
</div>

