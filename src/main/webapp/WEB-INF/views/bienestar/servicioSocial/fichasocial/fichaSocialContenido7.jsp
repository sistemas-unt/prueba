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
									<form method="post" id="formulario7">
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
													style="min-width: 11.1%; max-width: 11.1%;"
													class="complete"><span class="step">5</span></li>
												<li data-target="#step6"
													style="min-width: 11.1%; max-width: 11.1%;"
													class="complete"><span class="step">6</span></li>
												<li data-target="#step7"
													style="min-width: 11.1%; max-width: 11.1%;" class="active"><span
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

											<!------------------------- SALUD ------------------------------------- -->
											<div class="step-pane active" id="step7">
												<div class="page-header position-relative">
													<h4 style="color: #2679b5">Salud</h4>
												</div>
												<div class="form-horizontal">
													<div class="control-group">
														<label class="control-label" for="form-field-1">�A
															quien acude ante una enfermedad?</label>
														<div class="controls">
															<select name="ssAcudeEnfermedad">
																<option value="">--- Seleccione opci�n ---</option>
																<c:forEach var="prod" items="${model.listaAcudeEm}">
																	<option value="${prod.id}">
																		<c:out value="${prod.acudeEnfermedad}"></c:out>
																	</option>
																</c:forEach>
															</select>
														</div>
													</div>
													<div class="control-group">
														<label class="control-label" for="form-field-1">�Porque
															motivos?</label>
														<div class="controls">
															<select  name="ssMotivo">
																<option value="">--- Seleccione opci�n ---</option>
																<c:forEach var="prod" items="${model.listaMotivo}">
																	<option value="${prod.id}">
																		<c:out value="${prod.motivo}"></c:out>
																	</option>
																</c:forEach>
															</select>
														</div>
													</div>
												</div>
											</div>

										</div>

										<hr>
										<div class="row-fluid wizard-actions">
											<button type="reset" class="btn btn-prev"
												onClick="location.href = 'actualizar_ficha_antecedentes_Escolares.htm' ">
												<i class="icon-arrow-left"></i> Anterior
											</button>

											<button
												type="submit"
												class="btn btn-success btn-next" data-last="Finish ">


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

