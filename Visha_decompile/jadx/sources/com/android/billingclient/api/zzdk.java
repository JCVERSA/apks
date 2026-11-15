package com.android.billingclient.api;

enum zzdk {
    GET_BILLING_CONFIG("getBillingConfig", 29),
    IS_BILLING_PROGRAM_AVAILABLE_ASYNC("isIndirectBillingProgramAvailable", 33),
    CREATE_BILLING_PROGRAM_REPORTING_DETAILS_ASYNC("createIndirectBillingReportingDetails", 35),
    GET_BILLING_CHOICE_INFO_ASYNC("getBillingChoiceInfo", 40);

    private final String zzf;
    private final int zzg;

    zzdk(String str, int i) {
        this.zzf = str;
        this.zzg = i;
    }

    public final String zza() {
        return this.zzf;
    }

    public final int zzb() {
        return this.zzg;
    }
}
