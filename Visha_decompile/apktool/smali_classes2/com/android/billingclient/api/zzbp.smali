.class final Lcom/android/billingclient/api/zzbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic zza:Lcom/android/billingclient/api/PurchasesResponseListener;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Z

.field final synthetic zzd:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/PurchasesResponseListener;Ljava/lang/String;Z)V
    .locals 0

    iput-object p2, p0, Lcom/android/billingclient/api/zzbp;->zza:Lcom/android/billingclient/api/PurchasesResponseListener;

    iput-object p3, p0, Lcom/android/billingclient/api/zzbp;->zzb:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/billingclient/api/zzbp;->zzc:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzbp;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/zzbp;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {}, Lcom/android/billingclient/api/zzdq;->zzb()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzay(Lcom/android/billingclient/api/BillingClientImpl;J)Z

    move-result v1

    const/16 v2, 0x9

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzb:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzj:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzaB(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    iget-object p0, p0, Lcom/android/billingclient/api/zzbp;->zza:Lcom/android/billingclient/api/PurchasesResponseListener;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/zzbp;->zzb:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "BillingClient"

    const-string v3, "Please provide a valid product type."

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjs;->zzX:Lcom/google/android/gms/internal/play_billing/zzjs;

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zze:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, v1, v2, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzaB(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzjs;ILcom/android/billingclient/api/BillingResult;)V

    iget-object p0, p0, Lcom/android/billingclient/api/zzbp;->zza:Lcom/android/billingclient/api/PurchasesResponseListener;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/billingclient/api/zzbp;->zzc:Z

    invoke-static {v0, v1, v3, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaA(Lcom/android/billingclient/api/BillingClientImpl;Ljava/lang/String;ZI)Lcom/android/billingclient/api/zzek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzek;->zzb()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/billingclient/api/zzbp;->zza:Lcom/android/billingclient/api/PurchasesResponseListener;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzek;->zza()Lcom/android/billingclient/api/BillingResult;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzek;->zzb()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/billingclient/api/zzbp;->zza:Lcom/android/billingclient/api/PurchasesResponseListener;

    invoke-virtual {v0}, Lcom/android/billingclient/api/zzek;->zza()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzca;->zzk()Lcom/google/android/gms/internal/play_billing/zzca;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
