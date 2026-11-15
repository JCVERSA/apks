.class final Lcom/android/billingclient/api/zzci;
.super Lcom/google/android/gms/internal/play_billing/zzan;
.source "SourceFile"


# instance fields
.field final zza:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

.field final zzb:Lcom/android/billingclient/api/zzdd;

.field final zzc:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/zzdd;ILcom/android/billingclient/api/zzcm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzan;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/zzci;->zza:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    iput-object p2, p0, Lcom/android/billingclient/api/zzci;->zzb:Lcom/android/billingclient/api/zzdd;

    iput p3, p0, Lcom/android/billingclient/api/zzci;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/billingclient/api/zzci;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzjs;->zzaD:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    invoke-static {v2, v1, v3, v0, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lf5j;

    move-result-object v0

    iget v1, p0, Lcom/android/billingclient/api/zzci;->zzc:I

    invoke-interface {p1, v0, v1}, Lcom/android/billingclient/api/zzdd;->zzb(Lf5j;I)V

    iget-object p0, p0, Lcom/android/billingclient/api/zzci;->zza:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    invoke-interface {p0, v3}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->onExternalOfferAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_0
    const-string v2, "BillingClient"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/a;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/a;->j(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    if-eqz v3, :cond_1

    const-string v4, "isExternalOfferAvailableAsync() failed. Response code: "

    invoke-static {v3, v4}, Lcom/android/billingclient/api/zza;->zza(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzci;->zzb:Lcom/android/billingclient/api/zzdd;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzjs;->zzw:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget v4, Lcom/android/billingclient/api/zzdc;->zza:I

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjz;->zza:Lcom/google/android/gms/internal/play_billing/zzjz;

    invoke-static {v3, v1, p1, v0, v4}, Lcom/android/billingclient/api/zzdc;->zzb(Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzjz;)Lf5j;

    move-result-object v0

    iget v1, p0, Lcom/android/billingclient/api/zzci;->zzc:I

    invoke-interface {v2, v0, v1}, Lcom/android/billingclient/api/zzdd;->zzb(Lf5j;I)V

    :cond_1
    iget-object p0, p0, Lcom/android/billingclient/api/zzci;->zza:Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;

    invoke-interface {p0, p1}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->onExternalOfferAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
