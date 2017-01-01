<aura:application extends="force:slds">
	<!-- link href='/resource/bootstrap/' rel="stylesheet" / -->
	<div class="slds">
		<div class="slds-page-header">
			<div class="slds-grid">
				<div class="slds-col slds-has-flexi-truncate">
					<p class="slds-text-heading--label">Accounts</p>
				</div>
			</div>
		</div>
		<div class="slds-grid">
			<div class="slds-col">
					<c:ListAccounts />
			</div>
            <div class="slds-col">
					<c:testComponent />
			</div>
		</div>
	</div>
</aura:application>