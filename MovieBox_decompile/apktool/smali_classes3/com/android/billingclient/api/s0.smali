.class final Lcom/android/billingclient/api/s0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Z

.field private b:Lt8/h;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/t;->f(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/datatransport/runtime/t;->c()Lcom/google/android/datatransport/runtime/t;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object v0, Lcom/google/android/datatransport/cct/a;->g:Lcom/google/android/datatransport/cct/a;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/datatransport/runtime/t;->g(Lcom/google/android/datatransport/runtime/f;)Lt8/i;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "PLAY_BILLING_LIBRARY"

    .line 18
    .line 19
    const-class v1, Lcom/google/android/gms/internal/play_billing/zziv;

    .line 20
    .line 21
    const-string v2, "proto"

    .line 22
    .line 23
    invoke-static {v2}, Lt8/c;->b(Ljava/lang/String;)Lt8/c;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lcom/android/billingclient/api/r0;->a:Lcom/android/billingclient/api/r0;

    .line 28
    .line 29
    invoke-interface {p1, v0, v1, v2, v3}, Lt8/i;->b(Ljava/lang/String;Ljava/lang/Class;Lt8/c;Lt8/g;)Lt8/h;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/billingclient/api/s0;->b:Lt8/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/android/billingclient/api/s0;->a:Z

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/play_billing/zziv;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/s0;->a:Z

    .line 2
    .line 3
    const-string v1, "BillingLogger"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "Skipping logging since initialization failed."

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/s0;->b:Lt8/h;

    .line 14
    .line 15
    invoke-static {p1}, Lt8/d;->f(Ljava/lang/Object;)Lt8/d;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1}, Lt8/h;->a(Lt8/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    const-string p1, "logging failed."

    .line 24
    .line 25
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
