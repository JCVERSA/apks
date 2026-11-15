.class public final Lt6e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lygf;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ldbh;

.field public final c:Lmgf;

.field public final d:Landroid/util/SparseArray;

.field public final e:Ljava/util/List;

.field public final f:Lvbf;

.field public final g:Lm7e;

.field public final h:Ltbg;

.field public final i:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final j:Lerj;

.field public k:Lolg;

.field public l:I

.field public m:Landroid/util/Pair;

.field public n:I

.field public o:I

.field public p:J

.field public q:J

.field public r:I


# direct methods
.method public synthetic constructor <init>(Ln6e;Ls6e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ln6e;->a(Ln6e;)Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lt6e;->a:Landroid/content/Context;

    new-instance p2, Ldbh;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Ldbh;-><init>(I)V

    iput-object p2, p0, Lt6e;->b:Ldbh;

    invoke-static {p1}, Ln6e;->c(Ln6e;)Lmgf;

    move-result-object p2

    invoke-static {p2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lt6e;->c:Lmgf;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lt6e;->d:Landroid/util/SparseArray;

    invoke-static {p1}, Ln6e;->h(Ln6e;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lt6e;->e:Ljava/util/List;

    invoke-static {p1}, Ln6e;->b(Ln6e;)Lvbf;

    move-result-object p2

    iput-object p2, p0, Lt6e;->f:Lvbf;

    invoke-static {p1}, Ln6e;->d(Ln6e;)Ltbg;

    move-result-object p2

    iput-object p2, p0, Lt6e;->h:Ltbg;

    new-instance v0, Le6e;

    invoke-static {p1}, Ln6e;->g(Ln6e;)Le7e;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Le6e;-><init>(Le7e;Ltbg;)V

    iput-object v0, p0, Lt6e;->g:Lm7e;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lt6e;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Lgpj;

    invoke-direct {p1}, Lgpj;-><init>()V

    invoke-virtual {p1}, Lgpj;->K()Lerj;

    move-result-object p1

    iput-object p1, p0, Lt6e;->j:Lerj;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lt6e;->p:J

    iput-wide p1, p0, Lt6e;->q:J

    const/4 p1, -0x1

    iput p1, p0, Lt6e;->r:I

    const/4 p1, 0x0

    iput p1, p0, Lt6e;->o:I

    return-void
.end method

.method public static bridge synthetic a(Lt6e;)I
    .locals 0

    iget p0, p0, Lt6e;->l:I

    return p0
.end method

.method public static bridge synthetic b(Lh6j;)Lh6j;
    .locals 0

    invoke-static {p0}, Lt6e;->u(Lh6j;)Lh6j;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c(Lt6e;)Ldbh;
    .locals 0

    iget-object p0, p0, Lt6e;->b:Ldbh;

    return-object p0
.end method

.method public static bridge synthetic d(Lt6e;)Lm7e;
    .locals 0

    iget-object p0, p0, Lt6e;->g:Lm7e;

    return-object p0
.end method

.method public static bridge synthetic f(Lt6e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lt6e;->e:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic g(Lt6e;)V
    .locals 1

    iget v0, p0, Lt6e;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lt6e;->n:I

    return-void
.end method

.method public static bridge synthetic h(Lt6e;J)V
    .locals 0

    iput-wide p1, p0, Lt6e;->q:J

    return-void
.end method

.method public static bridge synthetic i(Lt6e;I)V
    .locals 0

    iput p1, p0, Lt6e;->l:I

    return-void
.end method

.method public static bridge synthetic j(Lt6e;Z)V
    .locals 9

    iget v0, p0, Lt6e;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lt6e;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lt6e;->n:I

    iget-object v2, p0, Lt6e;->g:Lm7e;

    invoke-interface {v2, p1}, Lm7e;->zzc(Z)V

    :goto_0
    iget-object p1, p0, Lt6e;->b:Ldbh;

    invoke-virtual {p1}, Ldbh;->a()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ldbh;->b()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ldbh;->a()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ldbh;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget v7, p0, Lt6e;->l:I

    iget-object v4, p0, Lt6e;->j:Lerj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v8

    const/4 v3, 0x1

    invoke-interface/range {v2 .. v8}, Lm7e;->e(ILerj;JILjava/util/List;)V

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lt6e;->p:J

    iput-wide v0, p0, Lt6e;->q:J

    iget-object p1, p0, Lt6e;->k:Lolg;

    invoke-static {p1}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaap;-><init>(Lt6e;)V

    invoke-interface {p1, v0}, Lolg;->f(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public static bridge synthetic k(Lt6e;JJ)V
    .locals 0

    iget-object p0, p0, Lt6e;->g:Lm7e;

    invoke-interface {p0, p1, p2, p3, p4}, Lm7e;->c(JJ)V

    return-void
.end method

.method public static bridge synthetic l(Lt6e;F)V
    .locals 0

    iget-object p0, p0, Lt6e;->g:Lm7e;

    invoke-interface {p0, p1}, Lm7e;->b(F)V

    return-void
.end method

.method public static bridge synthetic m(Lt6e;Lu6e;)V
    .locals 0

    iget-object p0, p0, Lt6e;->g:Lm7e;

    invoke-interface {p0, p1}, Lm7e;->f(Lu6e;)V

    return-void
.end method

.method public static bridge synthetic r(Lt6e;Z)Z
    .locals 0

    iget-object p0, p0, Lt6e;->g:Lm7e;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lm7e;->zzn(Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic s(Lt6e;Lerj;I)Z
    .locals 12

    iget p2, p0, Lt6e;->o:I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ln7g;->f(Z)V

    iget-object p2, p1, Lerj;->C:Lh6j;

    invoke-static {p2}, Lt6e;->u(Lh6j;)Lh6j;

    move-result-object p2

    iget v0, p2, Lh6j;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget v0, Lkfh;->a:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_1

    invoke-virtual {p2}, Lh6j;->c()Lp1j;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lp1j;->d(I)Lp1j;

    invoke-virtual {p2}, Lp1j;->g()Lh6j;

    move-result-object p2

    :cond_1
    move-object v2, p2

    iget-object p2, p0, Lt6e;->h:Ltbg;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {p2, v0, v11}, Ltbg;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lolg;

    move-result-object p2

    iput-object p2, p0, Lt6e;->k:Lolg;

    :try_start_0
    iget-object v0, p0, Lt6e;->c:Lmgf;

    iget-object v1, p0, Lt6e;->a:Landroid/content/Context;

    sget-object v3, Lubj;->a:Lubj;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lm6e;

    invoke-direct {v5, p2}, Lm6e;-><init>(Lolg;)V

    iget-object v6, p0, Lt6e;->f:Lvbf;

    iget-object v7, p0, Lt6e;->e:Ljava/util/List;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-interface/range {v0 .. v10}, Lmgf;->a(Landroid/content/Context;Lh6j;Lubj;Lygf;Ljava/util/concurrent/Executor;Lvbf;Ljava/util/List;JZ)Lihf;

    throw v11
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbw; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzabu;-><init>(Ljava/lang/Throwable;Lerj;)V

    throw p2
.end method

.method public static bridge synthetic t(Lt6e;)Z
    .locals 1

    iget p0, p0, Lt6e;->r:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static u(Lh6j;)Lh6j;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lh6j;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lh6j;->h:Lh6j;

    return-object p0
.end method


# virtual methods
.method public final e(I)Lm7e;
    .locals 3

    iget-object p1, p0, Lt6e;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkfh;->h(Landroid/util/SparseArray;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ln7g;->f(Z)V

    new-instance v1, Lo6e;

    iget-object v2, p0, Lt6e;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lo6e;-><init>(Lt6e;Landroid/content/Context;I)V

    iget-object p0, p0, Lt6e;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public final n()V
    .locals 1

    sget-object v0, Ls5h;->c:Ls5h;

    invoke-virtual {v0}, Ls5h;->b()I

    invoke-virtual {v0}, Ls5h;->a()I

    const/4 v0, 0x0

    iput-object v0, p0, Lt6e;->m:Landroid/util/Pair;

    return-void
.end method

.method public final o()V
    .locals 3

    iget v0, p0, Lt6e;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lt6e;->k:Lolg;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lolg;->a(Ljava/lang/Object;)V

    :cond_1
    iput-object v2, p0, Lt6e;->m:Landroid/util/Pair;

    iput v1, p0, Lt6e;->o:I

    return-void
.end method

.method public final p(Landroid/view/Surface;Ls5h;)V
    .locals 1

    iget-object v0, p0, Lt6e;->m:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt6e;->m:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ls5h;

    invoke-virtual {v0, p2}, Ls5h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lt6e;->m:Landroid/util/Pair;

    invoke-virtual {p2}, Ls5h;->b()I

    invoke-virtual {p2}, Ls5h;->a()I

    return-void
.end method

.method public final q(I)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lt6e;->r:I

    return-void
.end method
