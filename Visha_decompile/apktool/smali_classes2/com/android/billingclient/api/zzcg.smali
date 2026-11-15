.class final Lcom/android/billingclient/api/zzcg;
.super Lcom/google/android/gms/internal/play_billing/zzaj;
.source "SourceFile"


# instance fields
.field final zza:Lcom/android/billingclient/api/zzbz;

.field final zzb:Ljava/lang/Boolean;

.field final zzc:I

.field final synthetic zzd:Lcom/android/billingclient/api/BillingClientImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/billingclient/api/BillingClientImpl;Lcom/android/billingclient/api/zzbz;Ljava/lang/Boolean;ILcom/android/billingclient/api/zzcm;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzaj;-><init>()V

    iput-object p2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iput-object p3, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iput p4, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    return-void
.end method

.method private final zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V
    .locals 6
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzau(Lcom/android/billingclient/api/BillingClientImpl;I)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move v4, p4

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/zzbz;->zzc(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;Ljava/lang/String;ZI)V

    invoke-static {p1, p2}, Lcom/android/billingclient/api/zzbz;->zze(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p1, "BillingClient"

    const-string v0, "Response bundle is null."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object p1, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbr:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_0
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "BillingClient"

    const-string v0, "Response bundle doesn\'t contain a response code"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object p1, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzby:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_1
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "DEBUG_MESSAGE"

    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/billingclient/api/zzdh;->zza(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    const-string v1, "RESPONSE_CODE"

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbz:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response code from Phonesky: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_2
    const-string v0, "BILLING_API_VERSION_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "BillingClient"

    const-string v0, "Billing API version not found in response bundle."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object p1, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzh:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzbx:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_3
    const-string v0, "BILLING_API_VERSION_KEY"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {v1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzat(Lcom/android/billingclient/api/BillingClientImpl;I)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Lcom/android/billingclient/api/BillingClientImpl;->zzaj(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    const/4 v2, 0x3

    if-lt v0, v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    invoke-static {v1, v3}, Lcom/android/billingclient/api/BillingClientImpl;->zzak(Lcom/android/billingclient/api/BillingClientImpl;Z)V

    const-string v0, "EXPERIMENT_VALUES_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    const-string v1, "DELEGATION_API_ENABLED_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/billingclient/api/zzdq;->zzg(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error reading EnableDelegationApi experiment flag: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BillingClient"

    invoke-static {v5, v3, v1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    :try_start_1
    const-string v1, "AUTO_SERVICE_RECONNECTION_SYNCHRONOUS_TIMEOUT_MS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/billingclient/api/zzdq;->zzf(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error reading AutoServiceReconnectionSynchronousTimeoutMs experiment flag: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BillingClient"

    invoke-static {v5, v3, v1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    :try_start_2
    const-string v1, "AUTO_SERVICE_RECONNECTION_ASYNCHRONOUS_TIMEOUT_MS_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/billingclient/api/zzdq;->zzd(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error reading AutoServiceReconnectionAsynchronousTimeoutMs experiment flag: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BillingClient"

    invoke-static {v5, v3, v1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    :try_start_3
    const-string v1, "AUTO_SERVICE_RECONNECTION_MAX_NUM_RETRIES_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/billingclient/api/zzdq;->zze(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error reading AutoServiceReconnectionMaxNumRetries experiment flag: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BillingClient"

    invoke-static {v5, v3, v1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    :try_start_4
    const-string v1, "ENABLE_DEDUPLICATE_SERVICE_DISCONNECTED_CALLBACK"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/android/billingclient/api/zzdq;->zzh(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Error reading EnableDeduplicateServiceDisconnectedCallback experiment flag: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "BillingClient"

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_6
    const-string v0, "ENABLED_SUBSCRIPTION_CLIENT_ACTIONS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/play_billing/c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/c;-><init>()V

    invoke-static {}, Lcom/android/billingclient/api/zzev;->values()[Lcom/android/billingclient/api/zzev;

    move-result-object v1

    array-length v3, v1

    move v5, v4

    :goto_7
    if-ge v5, v3, :cond_9

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/play_billing/c;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/c;

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    iget-object p1, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/c;->c()Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/billingclient/api/BillingClientImpl;->zzal(Lcom/android/billingclient/api/BillingClientImpl;Lcom/google/android/gms/internal/play_billing/zzcf;)V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzh(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzz;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzh(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/android/billingclient/api/zzz;

    move-result-object v0

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzs(Lcom/android/billingclient/api/BillingClientImpl;)Lcom/google/android/gms/internal/play_billing/zzcf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/zzz;->zzj(Lcom/google/android/gms/internal/play_billing/zzcf;)V

    :cond_a
    :goto_8
    iget-object p1, p0, Lcom/android/billingclient/api/zzcg;->zzd:Lcom/android/billingclient/api/BillingClientImpl;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzb(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result v0

    if-ge v0, v2, :cond_b

    const-string p1, "BillingClient"

    const-string v0, "In-app billing API version 3 is not supported on this device."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object p1, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget v7, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    sget-object v3, Lcom/android/billingclient/api/zzdh;->zzb:Lcom/android/billingclient/api/BillingResult;

    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzjs;->zzJ:Lcom/google/android/gms/internal/play_billing/zzjs;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzjs;ZLjava/lang/String;I)V

    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/billingclient/api/zzcg;->zza:Lcom/android/billingclient/api/zzbz;

    iget-object v1, p0, Lcom/android/billingclient/api/zzcg;->zzb:Ljava/lang/Boolean;

    iget p0, p0, Lcom/android/billingclient/api/zzcg;->zzc:I

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p1, v4}, Lcom/android/billingclient/api/BillingClientImpl;->zzav(Lcom/android/billingclient/api/BillingClientImpl;I)V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zzB(Lcom/android/billingclient/api/BillingClientImpl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_5
    invoke-static {p1}, Lcom/android/billingclient/api/BillingClientImpl;->zza(Lcom/android/billingclient/api/BillingClientImpl;)I

    move-result p1

    if-ne p1, v2, :cond_c

    monitor-exit v3

    return-void

    :catchall_5
    move-exception p0

    goto :goto_9

    :cond_c
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-static {v0, v1, p0}, Lcom/android/billingclient/api/zzbz;->zzd(Lcom/android/billingclient/api/zzbz;ZI)V

    sget-object p0, Lcom/android/billingclient/api/zzdh;->zzi:Lcom/android/billingclient/api/BillingResult;

    invoke-static {v0, p0}, Lcom/android/billingclient/api/zzbz;->zze(Lcom/android/billingclient/api/zzbz;Lcom/android/billingclient/api/BillingResult;)V

    return-void

    :goto_9
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw p0
.end method
