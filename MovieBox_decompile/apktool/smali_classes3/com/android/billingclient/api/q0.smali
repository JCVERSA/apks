.class final Lcom/android/billingclient/api/q0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/android/billingclient/api/n0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/play_billing/zzio;

.field private final b:Lcom/android/billingclient/api/s0;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzio;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/billingclient/api/s0;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/android/billingclient/api/s0;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/billingclient/api/q0;->b:Lcom/android/billingclient/api/s0;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/billingclient/api/q0;->a:Lcom/google/android/gms/internal/play_billing/zzio;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/zzhy;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziv;->zzv()Lcom/google/android/gms/internal/play_billing/zziu;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/q0;->a:Lcom/google/android/gms/internal/play_billing/zzio;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzk(Lcom/google/android/gms/internal/play_billing/zzio;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzi(Lcom/google/android/gms/internal/play_billing/zzhy;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/q0;->b:Lcom/android/billingclient/api/s0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/s0;->a(Lcom/google/android/gms/internal/play_billing/zziv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    const-string p1, "BillingLogger"

    .line 31
    .line 32
    const-string v0, "Unable to log."

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/play_billing/zziz;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziv;->zzv()Lcom/google/android/gms/internal/play_billing/zziu;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/q0;->a:Lcom/google/android/gms/internal/play_billing/zzio;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzk(Lcom/google/android/gms/internal/play_billing/zzio;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzl(Lcom/google/android/gms/internal/play_billing/zziz;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/q0;->b:Lcom/android/billingclient/api/s0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/s0;->a(Lcom/google/android/gms/internal/play_billing/zziv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    const-string p1, "BillingLogger"

    .line 31
    .line 32
    const-string v0, "Unable to log."

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/play_billing/zzic;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziv;->zzv()Lcom/google/android/gms/internal/play_billing/zziu;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/billingclient/api/q0;->a:Lcom/google/android/gms/internal/play_billing/zzio;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzk(Lcom/google/android/gms/internal/play_billing/zzio;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zziu;->zzj(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zziu;

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/q0;->b:Lcom/android/billingclient/api/s0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzet;->zzc()Lcom/google/android/gms/internal/play_billing/zzex;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/s0;->a(Lcom/google/android/gms/internal/play_billing/zziv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    const-string p1, "BillingLogger"

    .line 31
    .line 32
    const-string v0, "Unable to log."

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
