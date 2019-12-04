<%@  taglib uri="/struts-tags" prefix="s"%>

<body>

	<div id="centered">


		<s:form action="selectedbooksLink" theme="simple">
			<center>
				<table id="grid">
					<thead>
						<tr>
							<th id="th-title">Book Title</th>
						
							<th id="th-author">Author</th>
								<th id="th-price">Price</th>
							
						</tr>
					</thead>


					<tbody>

						<s:iterator value="bookList" id="book" >
						
							<tr>

								<td><s:checkbox name="selectedBooks" fieldValue="%{bookId}" ></s:checkbox>
									<s:property value="#book.bookTitle" ></s:property></td>
									
									<td scope="col">
									<s:iterator value="%{#book.authors}" id="author">
  	<s:if test ="%{#book.id eq #author.bookId}">
											
											<s:property value="#author.firstName" />
											<s:property value="#author.lastName" />
										</s:if>
</s:iterator>
								
									</td>
								<td><s:property value="price" /></td>
									
						
							
							
									

			</tr>
						</s:iterator>
						

					</tbody>

				</table>
			</center>
			<br>
			<s:submit value="Add to Cart" />

		</s:form>

	</div>
</body>