.class final Lcom/android/billingclient/api/zzdx;
.super Lcom/google/android/gms/internal/play_billing/zzab;
.source "SourceFile"


# instance fields
.field final zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

.field final zzb:Lcom/android/billingclient/api/zzdd;

.field final zzc:I


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/zzdd;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzab;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/billingclient/api/zzdx;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    iput p3, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    return-void
.end method

.method private final zza(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/zzdx;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaR:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v2, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v2}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v2

    iget p0, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    invoke-static {v1, p1, v0, v2, p0}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-interface {v0, p1, p0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void
.end method


# virtual methods
.method public final onDelegateToBackendResponse(Landroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaT:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v2}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v2

    iget v3, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    invoke-direct {p0, v1}, Lcom/android/billingclient/api/zzdx;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    iget v2, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    const-string v3, "GetBillingConfigDelegateToBackendCallback"

    invoke-static {p1, v3, v0, v1, v2}, Lcom/android/billingclient/api/zzdm;->zza(Landroid/os/Bundle;Ljava/lang/String;ILcom/android/billingclient/api/zzdd;I)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    const-string v1, "RESPONSE_DATA"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lbyg;->z([B)Lbyg;

    move-result-object p1

    invoke-virtual {p1}, Lbyg;->A()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/billingclient/api/BillingConfig;->forCountryCode(Ljava/lang/String;)Lcom/android/billingclient/api/BillingConfig;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/billingclient/api/zzdx;->zza:Lcom/android/billingclient/api/BillingConfigResponseListener;

    invoke-interface {p0, v0, p1}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Response data is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const-string v0, "Got a JSON exception trying to decode BillingConfig. \n Exception: "

    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v6, p0, Lcom/android/billingclient/api/zzdx;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/android/billingclient/api/zzdk;->zza:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v1}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v7

    iget v8, p0, Lcom/android/billingclient/api/zzdx;->zzc:I

    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v0

    invoke-static/range {v4 .. v9}, Lcom/android/billingclient/api/zzdj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;IILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/zzdx;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/zzdx;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
