.class final Lcom/android/billingclient/api/zzdr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/zzdd;


# instance fields
.field private zzb:Lv6j;

.field private final zzc:Lcom/android/billingclient/api/zzdt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv6j;)V
    .locals 1

    new-instance v0, Lcom/android/billingclient/api/zzdt;

    invoke-direct {v0, p1}, Lcom/android/billingclient/api/zzdt;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    return-void
.end method

.method private final zzo(Lf5j;Lv6j;)V
    .locals 1
    .param p1    # Lf5j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lc8j;->A()Ly7j;

    move-result-object v0

    invoke-virtual {v0, p2}, Ly7j;->o(Lv6j;)Ly7j;

    invoke-virtual {v0, p1}, Ly7j;->j(Lf5j;)Ly7j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lc8j;

    iget-object p0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lc8j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzp(Ln5j;Lv6j;)V
    .locals 1
    .param p1    # Ln5j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lc8j;->A()Ly7j;

    move-result-object v0

    invoke-virtual {v0, p2}, Ly7j;->o(Lv6j;)Ly7j;

    invoke-virtual {v0, p1}, Ly7j;->k(Ln5j;)Ly7j;

    iget-object p0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lc8j;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lc8j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zza(Lf5j;)V
    .locals 1
    .param p1    # Lf5j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/zzdr;->zzo(Lf5j;Lv6j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string v0, "Unable to log."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb(Lf5j;I)V
    .locals 1
    .param p1    # Lf5j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v0}, Lkli;->p()Lfhi;

    move-result-object v0

    check-cast v0, Lr6j;

    invoke-virtual {v0, p2}, Lr6j;->l(I)Lr6j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p2

    check-cast p2, Lv6j;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdr;->zza(Lf5j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzc(Lf5j;IJ)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v0}, Lkli;->p()Lfhi;

    move-result-object v0

    check-cast v0, Lr6j;

    invoke-virtual {v0, p2}, Lr6j;->l(I)Lr6j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p2

    check-cast p2, Lv6j;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lkli;->p()Lfhi;

    move-result-object p2

    check-cast p2, Lr6j;

    invoke-virtual {p2, p3, p4}, Lr6j;->n(J)Lr6j;

    invoke-virtual {p2}, Lfhi;->f()Lkli;

    move-result-object p2

    check-cast p2, Lv6j;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzdr;->zzo(Lf5j;Lv6j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzd(Lf5j;JZ)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lkli;->p()Lfhi;

    move-result-object v0

    check-cast v0, Lc5j;

    invoke-virtual {p1}, Lf5j;->E()Lw7j;

    move-result-object p1

    invoke-virtual {p1}, Lkli;->p()Lfhi;

    move-result-object p1

    check-cast p1, Ln7j;

    invoke-virtual {p1, p4}, Ln7j;->j(Z)Ln7j;

    invoke-virtual {v0, p1}, Lc5j;->m(Ln7j;)Lc5j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lf5j;

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {p4}, Lkli;->p()Lfhi;

    move-result-object p4

    check-cast p4, Lr6j;

    invoke-virtual {p4, p2, p3}, Lr6j;->n(J)Lr6j;

    invoke-virtual {p4}, Lfhi;->f()Lkli;

    move-result-object p2

    check-cast p2, Lv6j;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzdr;->zzo(Lf5j;Lv6j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zze(Lf5j;IJZ)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v0}, Lkli;->p()Lfhi;

    move-result-object v0

    check-cast v0, Lr6j;

    invoke-virtual {v0, p2}, Lr6j;->l(I)Lr6j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p2

    check-cast p2, Lv6j;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {p1}, Lkli;->p()Lfhi;

    move-result-object p2

    check-cast p2, Lc5j;

    invoke-virtual {p1}, Lf5j;->E()Lw7j;

    move-result-object p1

    invoke-virtual {p1}, Lkli;->p()Lfhi;

    move-result-object p1

    check-cast p1, Ln7j;

    invoke-virtual {p1, p5}, Ln7j;->j(Z)Ln7j;

    invoke-virtual {p2, p1}, Lc5j;->m(Ln7j;)Lc5j;

    invoke-virtual {p2}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lf5j;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {p2}, Lkli;->p()Lfhi;

    move-result-object p2

    check-cast p2, Lr6j;

    invoke-virtual {p2, p3, p4}, Lr6j;->n(J)Lr6j;

    invoke-virtual {p2}, Lfhi;->f()Lkli;

    move-result-object p2

    check-cast p2, Lv6j;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzdr;->zzo(Lf5j;Lv6j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzf(Ln5j;)V
    .locals 1
    .param p1    # Ln5j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/zzdr;->zzp(Ln5j;Lv6j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string v0, "Unable to log."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzg(Ln5j;I)V
    .locals 1
    .param p1    # Ln5j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v0}, Lkli;->p()Lfhi;

    move-result-object v0

    check-cast v0, Lr6j;

    invoke-virtual {v0, p2}, Lr6j;->l(I)Lr6j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p2

    check-cast p2, Lv6j;

    iput-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdr;->zzf(Ln5j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzh(Ln5j;JZ)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lkli;->p()Lfhi;

    move-result-object v0

    check-cast v0, Lj5j;

    invoke-virtual {p1}, Ln5j;->B()Lw7j;

    move-result-object p1

    invoke-virtual {p1}, Lkli;->p()Lfhi;

    move-result-object p1

    check-cast p1, Ln7j;

    invoke-virtual {p1, p4}, Ln7j;->j(Z)Ln7j;

    invoke-virtual {v0, p1}, Lj5j;->l(Ln7j;)Lj5j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Ln5j;

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {p4}, Lkli;->p()Lfhi;

    move-result-object p4

    check-cast p4, Lr6j;

    invoke-virtual {p4, p2, p3}, Lr6j;->n(J)Lr6j;

    invoke-virtual {p4}, Lfhi;->f()Lkli;

    move-result-object p2

    check-cast p2, Lv6j;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/zzdr;->zzp(Ln5j;Lv6j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzi(Lb6j;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lc8j;->A()Ly7j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v0, v1}, Ly7j;->o(Lv6j;)Ly7j;

    invoke-virtual {v0, p1}, Ly7j;->l(Lb6j;)Ly7j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lc8j;

    iget-object p0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lc8j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string v0, "Unable to log."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzj(Lcom/android/billingclient/api/BillingResult;J)V
    .locals 3
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lp6j;->y()Lk6j;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lk6j;->n(I)Lk6j;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjz;->zze:Lcom/google/android/gms/internal/play_billing/zzjz;

    invoke-virtual {v0, v1}, Lk6j;->j(Lcom/google/android/gms/internal/play_billing/zzjz;)Lk6j;

    if-eqz p1, :cond_0

    invoke-static {}, Lv5j;->z()Lp5j;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lp5j;->o(I)Lp5j;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lp5j;->k(Ljava/lang/String;)Lp5j;

    invoke-virtual {v0, v1}, Lk6j;->k(Lp5j;)Lk6j;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Lc8j;->A()Ly7j;

    move-result-object p1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    iget-object p2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v1}, Lkli;->p()Lfhi;

    move-result-object v1

    check-cast v1, Lr6j;

    invoke-virtual {v1, p2, p3}, Lr6j;->n(J)Lr6j;

    invoke-virtual {v1}, Lfhi;->f()Lkli;

    move-result-object p2

    check-cast p2, Lv6j;

    :goto_1
    invoke-virtual {p1, p2}, Ly7j;->o(Lv6j;)Ly7j;

    invoke-virtual {p1, v0}, Ly7j;->m(Lk6j;)Ly7j;

    invoke-virtual {p1}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lc8j;

    iget-object p0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lc8j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzk(J)V
    .locals 4

    :try_start_0
    invoke-static {}, Lp6j;->y()Lk6j;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lk6j;->n(I)Lk6j;

    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzjz;->zzf:Lcom/google/android/gms/internal/play_billing/zzjz;

    invoke-virtual {v0, v1}, Lk6j;->j(Lcom/google/android/gms/internal/play_billing/zzjz;)Lk6j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object v0

    check-cast v0, Lp6j;

    invoke-static {}, Lc8j;->A()Ly7j;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v2}, Lkli;->p()Lfhi;

    move-result-object v2

    check-cast v2, Lr6j;

    invoke-virtual {v2, p1, p2}, Lr6j;->n(J)Lr6j;

    invoke-virtual {v2}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lv6j;

    :goto_0
    invoke-virtual {v1, p1}, Ly7j;->o(Lv6j;)Ly7j;

    invoke-virtual {v1, v0}, Ly7j;->n(Lp6j;)Ly7j;

    invoke-virtual {v1}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lc8j;

    iget-object p0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lc8j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-string p1, "BillingLogger"

    const-string p2, "Unable to log."

    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzl(Lu8j;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lc8j;->A()Ly7j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v0, v1}, Ly7j;->o(Lv6j;)Ly7j;

    invoke-static {}, Lp6j;->y()Lk6j;

    move-result-object v1

    const-string v2, "ProxyBillingBroadcastReceiver"

    invoke-virtual {v1, v2}, Lk6j;->l(Ljava/lang/String;)Lk6j;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lk6j;->n(I)Lk6j;

    invoke-virtual {v1, p1}, Lk6j;->m(Lu8j;)Lk6j;

    invoke-virtual {v0, v1}, Ly7j;->m(Lk6j;)Ly7j;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lc8j;

    iget-object p0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lc8j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string v0, "Unable to log."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzm(La9j;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    invoke-static {}, Lc8j;->A()Ly7j;

    move-result-object v1

    iget-object p0, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v1, p0}, Ly7j;->o(Lv6j;)Ly7j;

    invoke-virtual {v1, p1}, Ly7j;->p(La9j;)Ly7j;

    invoke-virtual {v1}, Lfhi;->f()Lkli;

    move-result-object p0

    check-cast p0, Lc8j;

    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/zzdt;->zza(Lc8j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string v0, "Unable to log."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzn(Li9j;)V
    .locals 2
    .param p1    # Li9j;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lc8j;->A()Ly7j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/billingclient/api/zzdr;->zzb:Lv6j;

    invoke-virtual {v0, v1}, Ly7j;->o(Lv6j;)Ly7j;

    invoke-virtual {v0, p1}, Ly7j;->q(Li9j;)Ly7j;

    iget-object p0, p0, Lcom/android/billingclient/api/zzdr;->zzc:Lcom/android/billingclient/api/zzdt;

    invoke-virtual {v0}, Lfhi;->f()Lkli;

    move-result-object p1

    check-cast p1, Lc8j;

    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/zzdt;->zza(Lc8j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "BillingLogger"

    const-string v0, "Unable to log."

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/internal/play_billing/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
