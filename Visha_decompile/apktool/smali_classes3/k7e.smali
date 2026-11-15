.class public final Lk7e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ll7e;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ll7e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lk7e;->a:Landroid/os/Handler;

    iput-object p2, p0, Lk7e;->b:Ll7e;

    return-void
.end method

.method public static synthetic a(Lk7e;Ljava/lang/Exception;)V
    .locals 1

    sget v0, Lkfh;->a:I

    iget-object p0, p0, Lk7e;->b:Ll7e;

    invoke-interface {p0, p1}, Ll7e;->r(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(Lk7e;Ljava/lang/String;)V
    .locals 1

    sget v0, Lkfh;->a:I

    iget-object p0, p0, Lk7e;->b:Ll7e;

    invoke-interface {p0, p1}, Ll7e;->zzq(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lk7e;JI)V
    .locals 1

    sget v0, Lkfh;->a:I

    iget-object p0, p0, Lk7e;->b:Ll7e;

    invoke-interface {p0, p1, p2, p3}, Ll7e;->o(JI)V

    return-void
.end method

.method public static synthetic d(Lk7e;IJ)V
    .locals 1

    sget v0, Lkfh;->a:I

    iget-object p0, p0, Lk7e;->b:Ll7e;

    invoke-interface {p0, p1, p2, p3}, Ll7e;->l(IJ)V

    return-void
.end method

.method public static synthetic e(Lk7e;Lzhf;)V
    .locals 1

    sget v0, Lkfh;->a:I

    iget-object p0, p0, Lk7e;->b:Ll7e;

    invoke-interface {p0, p1}, Ll7e;->e(Lzhf;)V

    return-void
.end method

.method public static synthetic f(Lk7e;Ld1j;)V
    .locals 1

    invoke-virtual {p1}, Ld1j;->a()V

    sget v0, Lkfh;->a:I

    iget-object p0, p0, Lk7e;->b:Ll7e;

    invoke-interface {p0, p1}, Ll7e;->g(Ld1j;)V

    return-void
.end method

.method public static synthetic g(Lk7e;Lerj;Lg1j;)V
    .locals 1

    sget v0, Lkfh;->a:I

    iget-object p0, p0, Lk7e;->b:Ll7e;

    invoke-interface {p0, p1, p2}, Ll7e;->p(Lerj;Lg1j;)V

    return-void
.end method

.method public static synthetic h(Lk7e;Ljava/lang/Object;J)V
    .locals 1

    sget v0, Lkfh;->a:I

    iget-object p0, p0, Lk7e;->b:Ll7e;

    invoke-interface {p0, p1, p2, p3}, Ll7e;->j(Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic i(Lk7e;Ld1j;)V
    .locals 1

    sget v0, Lkfh;->a:I

    iget-object p0, p0, Lk7e;->b:Ll7e;

    invoke-interface {p0, p1}, Ll7e;->c(Ld1j;)V

    return-void
.end method

.method public static synthetic j(Lk7e;Ljava/lang/String;JJ)V
    .locals 7

    sget v0, Lkfh;->a:I

    iget-object v1, p0, Lk7e;->b:Ll7e;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Ll7e;->i(Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzabh;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzabh;-><init>(Lk7e;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabq;-><init>(Lk7e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final m(Ld1j;)V
    .locals 2

    invoke-virtual {p1}, Ld1j;->a()V

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabp;-><init>(Lk7e;Ld1j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final n(IJ)V
    .locals 2

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabj;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzabj;-><init>(Lk7e;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final o(Ld1j;)V
    .locals 2

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Lk7e;Ld1j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final p(Lerj;Lg1j;)V
    .locals 2

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabo;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabo;-><init>(Lk7e;Lerj;Lg1j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzabk;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Lk7e;Ljava/lang/Object;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final r(JI)V
    .locals 2

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabl;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzabl;-><init>(Lk7e;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabm;-><init>(Lk7e;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final t(Lzhf;)V
    .locals 2

    iget-object v0, p0, Lk7e;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabi;-><init>(Lk7e;Lzhf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
