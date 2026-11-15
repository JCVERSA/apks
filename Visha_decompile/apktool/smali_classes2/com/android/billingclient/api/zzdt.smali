.class final Lcom/android/billingclient/api/zzdt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Z

.field private zzb:Lx8b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lj9b;->f(Landroid/content/Context;)V

    invoke-static {}, Lj9b;->c()Lj9b;

    move-result-object p1

    sget-object v0, Luo0;->g:Luo0;

    invoke-virtual {p1, v0}, Lj9b;->g(Lx92;)Lb9b;

    move-result-object p1

    const-string v0, "PLAY_BILLING_LIBRARY"

    const-class v1, Lc8j;

    const-string v2, "proto"

    invoke-static {v2}, Lka3;->b(Ljava/lang/String;)Lka3;

    move-result-object v2

    new-instance v3, Lcom/android/billingclient/api/zzds;

    invoke-direct {v3}, Lcom/android/billingclient/api/zzds;-><init>()V

    invoke-interface {p1, v0, v1, v2, v3}, Lb9b;->a(Ljava/lang/String;Ljava/lang/Class;Lka3;Lh7b;)Lx8b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/zzdt;->zzb:Lx8b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzdt;->zza:Z

    return-void
.end method


# virtual methods
.method public final zza(Lc8j;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/billingclient/api/zzdt;->zza:Z

    const-string v1, "BillingLogger"

    if-eqz v0, :cond_0

    const-string p0, "Skipping logging since initialization failed."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/billingclient/api/zzdt;->zzb:Lx8b;

    invoke-static {p1}, Lrd3;->e(Ljava/lang/Object;)Lrd3;

    move-result-object p1

    invoke-interface {p0, p1}, Lx8b;->a(Lrd3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p0, "logging failed."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/play_billing/a;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
