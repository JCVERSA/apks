.class final Lcom/android/billingclient/api/zzdv;
.super Lcom/google/android/gms/internal/play_billing/zzab;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;

.field private final zzb:Lcom/android/billingclient/api/zzdd;

.field private final zzc:I


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;Lcom/android/billingclient/api/zzdd;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzab;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzdv;->zza:Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdv;->zzb:Lcom/android/billingclient/api/zzdd;

    iput p3, p0, Lcom/android/billingclient/api/zzdv;->zzc:I

    return-void
.end method

.method private final zza(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    iget-object p0, p0, Lcom/android/billingclient/api/zzdv;->zza:Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;->onBillingChoiceInfoResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingChoiceInfo;)V

    return-void
.end method


# virtual methods
.method public final onDelegateToBackendResponse(Landroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/billingclient/api/zzdv;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaT:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v1, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v2, Lcom/android/billingclient/api/zzdk;->zzd:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v2}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v2

    iget v3, p0, Lcom/android/billingclient/api/zzdv;->zzc:I

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/billingclient/api/zzdj;->zza(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;II)V

    invoke-direct {p0, v1}, Lcom/android/billingclient/api/zzdv;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/billingclient/api/zzdk;->zzd:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzdv;->zzb:Lcom/android/billingclient/api/zzdd;

    iget v2, p0, Lcom/android/billingclient/api/zzdv;->zzc:I

    const-string v3, "GetBillingChoiceInfoDelegateToBackendCallback"

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

    invoke-static {p1}, Lkvg;->z([B)Lkvg;

    move-result-object p1

    new-instance v1, Lcom/android/billingclient/api/BillingChoiceInfo;

    invoke-virtual {p1}, Lkvg;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lkvg;->B()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/android/billingclient/api/BillingChoiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/billingclient/api/zzdv;->zza:Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;

    invoke-interface {p0, v0, v1}, Lcom/android/billingclient/api/BillingChoiceInfoResponseListener;->onBillingChoiceInfoResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingChoiceInfo;)V

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
    const-string v0, "Got an exception trying to decode BillingChoiceInfo. \n Exception: "

    invoke-static {v3, v0, p1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v6, p0, Lcom/android/billingclient/api/zzdv;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaS:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v0, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v1, Lcom/android/billingclient/api/zzdk;->zzd:Lcom/android/billingclient/api/zzdk;

    invoke-virtual {v1}, Lcom/android/billingclient/api/zzdk;->zzb()I

    move-result v7

    iget v8, p0, Lcom/android/billingclient/api/zzdv;->zzc:I

    invoke-static {p1}, Lcom/android/billingclient/api/zzdc;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v0

    invoke-static/range {v4 .. v9}, Lcom/android/billingclient/api/zzdj;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/zzdd;IILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/billingclient/api/zzdv;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/zzdv;->zza(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
