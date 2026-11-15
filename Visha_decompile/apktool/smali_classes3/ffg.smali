.class public final Lffg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0g;


# instance fields
.field public final b:Lddg;

.field public final c:Lidg;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lddg;Lidg;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffg;->b:Lddg;

    iput-object p2, p0, Lffg;->c:Lidg;

    iput-object p3, p0, Lffg;->d:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lffg;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic a(Lffg;Lejf;)V
    .locals 0

    invoke-virtual {p0, p1}, Lffg;->b(Lejf;)V

    return-void
.end method


# virtual methods
.method public final b(Lejf;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdjp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdjp;-><init>(Lejf;)V

    iget-object p0, p0, Lffg;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzs()V
    .locals 4

    iget-object v0, p0, Lffg;->c:Lidg;

    invoke-virtual {v0}, Lidg;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lffg;->b:Lddg;

    invoke-virtual {v0}, Lddg;->h0()Lfxg;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lddg;->j0()Lim5;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Lcye;->t5:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v3

    invoke-virtual {v3, v2}, Laye;->b(Lqxe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lddg;->j0()Lim5;

    move-result-object v1

    invoke-virtual {v0}, Lddg;->c0()Leff;

    move-result-object v0

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [Lim5;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/j8;->l([Lim5;)Lim5;

    move-result-object v0

    new-instance v1, Lefg;

    invoke-direct {v1, p0}, Lefg;-><init>(Lffg;)V

    iget-object p0, p0, Lffg;->e:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/j8;->r(Lim5;Lv7i;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lddg;->e0()Lejf;

    move-result-object v1

    invoke-virtual {v0}, Lddg;->f0()Lejf;

    move-result-object v0

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lffg;->b(Lejf;)V

    :cond_4
    :goto_1
    return-void
.end method
