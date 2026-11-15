package com.google.android.gms.internal.play_billing;

enum zzb {
    RESPONSE_CODE_UNSPECIFIED(-999),
    SERVICE_TIMEOUT(-3),
    FEATURE_NOT_SUPPORTED(-2),
    SERVICE_DISCONNECTED(-1),
    OK(0),
    USER_CANCELED(1),
    SERVICE_UNAVAILABLE(2),
    BILLING_UNAVAILABLE(3),
    ITEM_UNAVAILABLE(4),
    DEVELOPER_ERROR(5),
    ERROR(6),
    ITEM_ALREADY_OWNED(7),
    ITEM_NOT_OWNED(8),
    EXPIRED_OFFER_TOKEN(11),
    NETWORK_ERROR(12);

    public static final zzcd b;
    private final int zzr;

    static {
        b bVar = new b();
        for (zzb zzbVar : values()) {
            bVar.a(Integer.valueOf(zzbVar.zzr), zzbVar);
        }
        b = bVar.b();
    }

    zzb(int i) {
        this.zzr = i;
    }

    public static zzb zza(int i) {
        zzcd zzcdVar = b;
        Integer numValueOf = Integer.valueOf(i);
        return !zzcdVar.containsKey(numValueOf) ? RESPONSE_CODE_UNSPECIFIED : (zzb) zzcdVar.get(numValueOf);
    }
}
