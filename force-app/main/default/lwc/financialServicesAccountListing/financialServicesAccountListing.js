import { LightningElement ,api, wire, track} from 'lwc';
import getFinancialServicesAccountListing from '@salesforce/apex/AccountHelper.getFinancialServicesAccountListing';
export default class LightningDatatableLWCExample extends LightningElement {
    @track columns = [{
            label: 'Account name',
            fieldName: 'Name',
            type: 'text',
            sortable: true
        },
        {
            label: 'Account Owner',
            fieldName: 'Owner.Name',
            type: 'Lookup(User)',
            sortable: true
        },
        {
            label: 'Phone',
            fieldName: 'Phone',
            type: 'phone',
            sortable: true
        },
        {
            label: 'Website',
            fieldName: 'Website',
            type: 'url',
            sortable: true
        },
        {
            label: 'Annual Revenue',
            fieldName: 'AnnualRevenue',
            type: 'Currency',
            sortable: true
        }
    ];
 
    @track error;
    @track accList ;
    @wire(getFinancialServicesAccountListing)
    wiredAccounts({
        error,
        data
    }) {
        if (data) {
            this.accList = data;
        } else if (error) {
            this.error = error;
        }
    }
}