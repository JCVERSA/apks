.class public final Loz0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loz0$a;
    }
.end annotation


# static fields
.field public static final O:Loz0$a;

.field public static final P:Ljava/lang/String;


# instance fields
.field public A:I

.field public B:J

.field public C:Lgea;

.field public D:I

.field public E:I

.field public F:J

.field public G:I

.field public H:I

.field public I:J

.field public J:Lgea;

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Lyj4;

.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lqe;

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Z

.field public k:I

.field public l:J

.field public m:Ljava/util/List;

.field public n:Ljpa;

.field public o:Lnpa;

.field public p:Lyfb;

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Ljava/lang/String;

.field public u:Lwp5;

.field public v:I

.field public w:I

.field public x:J

.field public y:I

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Loz0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Loz0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Loz0;->O:Loz0$a;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lrh1;->a:Lrh1;

    invoke-virtual {v1}, Lrh1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "http_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Loz0;->P:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loz0;->a:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Loz0;->b:Ljava/lang/String;

    iput-object p1, p0, Loz0;->c:Ljava/lang/String;

    const/16 v0, 0x3c

    iput v0, p0, Loz0;->e:I

    iput v0, p0, Loz0;->f:I

    iput v0, p0, Loz0;->g:I

    sget-object v0, Loz0;->P:Ljava/lang/String;

    iput-object v0, p0, Loz0;->h:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Loz0;->i:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Loz0;->j:Z

    iput v0, p0, Loz0;->k:I

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Loz0;->l:J

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Loz0;->m:Ljava/util/List;

    new-instance v1, Le27;

    invoke-direct {v1}, Le27;-><init>()V

    iput-object v1, p0, Loz0;->o:Lnpa;

    iput-boolean v0, p0, Loz0;->q:Z

    const/4 v1, 0x4

    iput v1, p0, Loz0;->s:I

    iput-object p1, p0, Loz0;->t:Ljava/lang/String;

    new-instance p1, Lh22;

    invoke-direct {p1}, Lh22;-><init>()V

    iput-object p1, p0, Loz0;->u:Lwp5;

    const/4 p1, 0x3

    iput p1, p0, Loz0;->v:I

    iput v0, p0, Loz0;->w:I

    const-wide/32 v1, 0xa00000

    iput-wide v1, p0, Loz0;->x:J

    const/16 v3, 0x3e8

    iput v3, p0, Loz0;->y:I

    iput-boolean v0, p0, Loz0;->z:Z

    const/4 v0, 0x2

    iput v0, p0, Loz0;->A:I

    const-wide/16 v4, 0x2710

    iput-wide v4, p0, Loz0;->B:J

    iput p1, p0, Loz0;->D:I

    iput p1, p0, Loz0;->E:I

    iput-wide v1, p0, Loz0;->F:J

    iput v3, p0, Loz0;->G:I

    iput v0, p0, Loz0;->H:I

    iput-wide v4, p0, Loz0;->I:J

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    iget p0, p0, Loz0;->k:I

    return p0
.end method

.method public final B()I
    .locals 0

    iget p0, p0, Loz0;->E:I

    return p0
.end method

.method public final C()I
    .locals 0

    iget p0, p0, Loz0;->w:I

    return p0
.end method

.method public final D()I
    .locals 0

    iget p0, p0, Loz0;->y:I

    return p0
.end method

.method public final E()J
    .locals 2

    iget-wide v0, p0, Loz0;->x:J

    return-wide v0
.end method

.method public final F()I
    .locals 0

    iget p0, p0, Loz0;->v:I

    return p0
.end method

.method public final G()J
    .locals 2

    iget-wide v0, p0, Loz0;->l:J

    return-wide v0
.end method

.method public final H()Z
    .locals 0

    iget-boolean p0, p0, Loz0;->r:Z

    return p0
.end method

.method public final I()I
    .locals 0

    iget p0, p0, Loz0;->f:I

    return p0
.end method

.method public final J()Z
    .locals 0

    iget-boolean p0, p0, Loz0;->L:Z

    return p0
.end method

.method public final K()Lyfb;
    .locals 0

    iget-object p0, p0, Loz0;->p:Lyfb;

    return-object p0
.end method

.method public final L()I
    .locals 0

    iget p0, p0, Loz0;->A:I

    return p0
.end method

.method public final M()J
    .locals 2

    iget-wide v0, p0, Loz0;->B:J

    return-wide v0
.end method

.method public final N()Lgea;
    .locals 0

    iget-object p0, p0, Loz0;->C:Lgea;

    return-object p0
.end method

.method public final O()Z
    .locals 0

    iget-boolean p0, p0, Loz0;->M:Z

    return p0
.end method

.method public final P()I
    .locals 0

    iget p0, p0, Loz0;->g:I

    return p0
.end method

.method public final Q(Ljpa;)Loz0;
    .locals 1

    const-string v0, "accessTokenFetcher"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Loz0;->n:Ljpa;

    return-object p0
.end method

.method public final R(Ljava/lang/String;)Loz0;
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Loz0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final S(Ljava/lang/String;)Loz0;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Loz0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final T(I)Loz0;
    .locals 0

    iput p1, p0, Loz0;->H:I

    return-object p0
.end method

.method public final U(Z)Loz0;
    .locals 0

    iput-boolean p1, p0, Loz0;->z:Z

    return-object p0
.end method

.method public final V(Lyj4;)Loz0;
    .locals 0

    iput-object p1, p0, Loz0;->N:Lyj4;

    return-object p0
.end method

.method public final W(I)Loz0;
    .locals 0

    iput p1, p0, Loz0;->s:I

    return-object p0
.end method

.method public final X(Ljava/lang/String;)Loz0;
    .locals 1

    const-string v0, "logSingleTag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Loz0;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final Y(Z)Loz0;
    .locals 0

    iput-boolean p1, p0, Loz0;->q:Z

    return-object p0
.end method

.method public final Z(I)Loz0;
    .locals 0

    iput p1, p0, Loz0;->D:I

    return-object p0
.end method

.method public final a()Lrz0;
    .locals 4

    iget-object v0, p0, Loz0;->b:Ljava/lang/String;

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "trassionBackup"

    const-string v1, "visha"

    const-string v2, "trassionDisk"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Loz0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lhi;->P([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Loz0;->n:Ljpa;

    if-eqz v0, :cond_4

    iget-object v0, p0, Loz0;->p:Lyfb;

    if-eqz v0, :cond_3

    iget v0, p0, Loz0;->v:I

    if-lez v0, :cond_2

    iget-wide v0, p0, Loz0;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Loz0;->w:I

    if-lez v0, :cond_0

    new-instance v0, Lrz0;

    invoke-direct {v0, p0}, Lrz0;-><init>(Loz0;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxParallelUpload must be greater than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxUploadBlockSize must be greater than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxUploadFiles must be greater than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "uniqueIdFetcher is null,please call setUniqueIdFetcher()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "accessTokenFetcher is null,please call setAccessTokenFetcher()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "domain is blank or invalid, please call setDomain()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a0(I)Loz0;
    .locals 0

    iput p1, p0, Loz0;->v:I

    return-object p0
.end method

.method public final b()Ljpa;
    .locals 0

    iget-object p0, p0, Loz0;->n:Ljpa;

    return-object p0
.end method

.method public final b0(Z)Loz0;
    .locals 0

    iput-boolean p1, p0, Loz0;->r:Z

    return-object p0
.end method

.method public final c()Lnpa;
    .locals 0

    iget-object p0, p0, Loz0;->o:Lnpa;

    return-object p0
.end method

.method public final c0(Z)Loz0;
    .locals 0

    iput-boolean p1, p0, Loz0;->L:Z

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Loz0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d0(Lyfb;)Loz0;
    .locals 1

    const-string v0, "uniqueIdFetcher"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Loz0;->p:Lyfb;

    return-object p0
.end method

.method public final e()Lqe;
    .locals 0

    iget-object p0, p0, Loz0;->d:Lqe;

    return-object p0
.end method

.method public final e0(I)Loz0;
    .locals 0

    iput p1, p0, Loz0;->A:I

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Loz0;->e:I

    return p0
.end method

.method public final g()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Loz0;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Loz0;->m:Ljava/util/List;

    return-object p0
.end method

.method public final i()Lhe7;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Loz0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Loz0;->H:I

    return p0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Loz0;->I:J

    return-wide v0
.end method

.method public final m()Lgea;
    .locals 0

    iget-object p0, p0, Loz0;->J:Lgea;

    return-object p0
.end method

.method public final n()Z
    .locals 0

    iget-boolean p0, p0, Loz0;->j:Z

    return p0
.end method

.method public final o()Z
    .locals 0

    iget-boolean p0, p0, Loz0;->K:Z

    return p0
.end method

.method public final p()Z
    .locals 0

    iget-boolean p0, p0, Loz0;->z:Z

    return p0
.end method

.method public final q()Lyj4;
    .locals 0

    iget-object p0, p0, Loz0;->N:Lyj4;

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Loz0;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final s()I
    .locals 0

    iget p0, p0, Loz0;->i:I

    return p0
.end method

.method public final t()I
    .locals 0

    iget p0, p0, Loz0;->s:I

    return p0
.end method

.method public final u()Lwp5;
    .locals 0

    iget-object p0, p0, Loz0;->u:Lwp5;

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Loz0;->t:Ljava/lang/String;

    return-object p0
.end method

.method public final w()Z
    .locals 0

    iget-boolean p0, p0, Loz0;->q:Z

    return p0
.end method

.method public final x()I
    .locals 0

    iget p0, p0, Loz0;->G:I

    return p0
.end method

.method public final y()J
    .locals 2

    iget-wide v0, p0, Loz0;->F:J

    return-wide v0
.end method

.method public final z()I
    .locals 0

    iget p0, p0, Loz0;->D:I

    return p0
.end method
