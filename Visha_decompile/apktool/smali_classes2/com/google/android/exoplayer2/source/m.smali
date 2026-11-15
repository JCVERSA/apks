.class public final Lcom/google/android/exoplayer2/source/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/h;
.implements Lqk3;
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;
.implements Lcom/google/android/exoplayer2/source/p$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/m$d;,
        Lcom/google/android/exoplayer2/source/m$e;,
        Lcom/google/android/exoplayer2/source/m$a;,
        Lcom/google/android/exoplayer2/source/m$c;,
        Lcom/google/android/exoplayer2/source/m$b;
    }
.end annotation


# static fields
.field public static final N:Ljava/util/Map;

.field public static final O:Lcom/google/android/exoplayer2/k;


# instance fields
.field public A:J

.field public B:Z

.field public C:I

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Z

.field public H:J

.field public I:J

.field public J:Z

.field public K:I

.field public L:Z

.field public M:Z

.field public final b:Landroid/net/Uri;

.field public final c:Lcom/google/android/exoplayer2/upstream/a;

.field public final d:Lcom/google/android/exoplayer2/drm/c;

.field public final e:Lcom/google/android/exoplayer2/upstream/f;

.field public final f:Lcom/google/android/exoplayer2/source/j$a;

.field public final g:Lcom/google/android/exoplayer2/drm/b$a;

.field public final h:Lcom/google/android/exoplayer2/source/m$b;

.field public final i:Lcb;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:Lcom/google/android/exoplayer2/upstream/Loader;

.field public final m:Lcom/google/android/exoplayer2/source/l;

.field public final n:Lle1;

.field public final o:Ljava/lang/Runnable;

.field public final p:Ljava/lang/Runnable;

.field public final q:Landroid/os/Handler;

.field public r:Lcom/google/android/exoplayer2/source/h$a;

.field public s:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

.field public t:[Lcom/google/android/exoplayer2/source/p;

.field public u:[Lcom/google/android/exoplayer2/source/m$d;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Lcom/google/android/exoplayer2/source/m$e;

.field public z:Lja9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/exoplayer2/source/m;->y()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/m;->N:Ljava/util/Map;

    new-instance v0, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    const-string v1, "icy"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/m;->O:Lcom/google/android/exoplayer2/k;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/source/l;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/drm/b$a;Lcom/google/android/exoplayer2/upstream/f;Lcom/google/android/exoplayer2/source/j$a;Lcom/google/android/exoplayer2/source/m$b;Lcb;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/m;->c:Lcom/google/android/exoplayer2/upstream/a;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/m;->d:Lcom/google/android/exoplayer2/drm/c;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/drm/b$a;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/m;->e:Lcom/google/android/exoplayer2/upstream/f;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/j$a;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/m;->h:Lcom/google/android/exoplayer2/source/m$b;

    iput-object p9, p0, Lcom/google/android/exoplayer2/source/m;->i:Lcb;

    iput-object p10, p0, Lcom/google/android/exoplayer2/source/m;->j:Ljava/lang/String;

    int-to-long p1, p11

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/m;->k:J

    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/m;->m:Lcom/google/android/exoplayer2/source/l;

    new-instance p1, Lle1;

    invoke-direct {p1}, Lle1;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->n:Lle1;

    new-instance p1, Lai8;

    invoke-direct {p1, p0}, Lai8;-><init>(Lcom/google/android/exoplayer2/source/m;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Ljava/lang/Runnable;

    new-instance p1, Lbi8;

    invoke-direct {p1, p0}, Lbi8;-><init>(Lcom/google/android/exoplayer2/source/m;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->p:Ljava/lang/Runnable;

    invoke-static {}, Lblb;->u()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->q:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/m$d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/m;->u:[Lcom/google/android/exoplayer2/source/m$d;

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/p;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/m;->I:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/m;->A:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/m;->C:I

    return-void
.end method

.method public static synthetic i(Lcom/google/android/exoplayer2/source/m;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->F()V

    return-void
.end method

.method public static synthetic j(Lcom/google/android/exoplayer2/source/m;Lja9;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/m;->G(Lja9;)V

    return-void
.end method

.method public static synthetic k(Lcom/google/android/exoplayer2/source/m;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->E()V

    return-void
.end method

.method public static synthetic l(Lcom/google/android/exoplayer2/source/m;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->H()V

    return-void
.end method

.method public static synthetic m(Lcom/google/android/exoplayer2/source/m;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic n(Lcom/google/android/exoplayer2/source/m;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->q:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic o(Lcom/google/android/exoplayer2/source/m;Z)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/m;->A(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic p()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/m;->N:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic q(Lcom/google/android/exoplayer2/source/m;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic r(Lcom/google/android/exoplayer2/source/m;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->M()V

    return-void
.end method

.method public static synthetic s(Lcom/google/android/exoplayer2/source/m;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->s:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p0
.end method

.method public static synthetic t(Lcom/google/android/exoplayer2/source/m;Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;)Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->s:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    return-object p1
.end method

.method public static synthetic u()Lcom/google/android/exoplayer2/k;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/m;->O:Lcom/google/android/exoplayer2/k;

    return-object v0
.end method

.method public static synthetic v(Lcom/google/android/exoplayer2/source/m;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/m;->k:J

    return-wide v0
.end method

.method public static y()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final A(Z)J
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    invoke-static {v3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/m$e;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/m$e;->c:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/p;->t()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public B()Lfva;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/source/m$d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/m$d;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/m;->Q(Lcom/google/android/exoplayer2/source/m$d;)Lfva;

    move-result-object p0

    return-object p0
.end method

.method public final C()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/m;->I:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public D(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->X()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object p1, v0, p1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/m;->L:Z

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/p;->D(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic E()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->M:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->r:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/q$a;->b(Lcom/google/android/exoplayer2/source/q;)V

    :cond_0
    return-void
.end method

.method public final synthetic F()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->G:Z

    return-void
.end method

.method public final synthetic G(Lja9;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/m;->U(Lja9;)V

    return-void
.end method

.method public final H()V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/m;->M:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/m;->w:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/m;->v:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->z:Lja9;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/p;->z()Lcom/google/android/exoplayer2/k;

    move-result-object v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    add-int/2addr v4, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->n:Lle1;

    invoke-virtual {v2}, Lle1;->d()Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v2, v2

    new-array v3, v2, [Lzua;

    new-array v4, v2, [Z

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_9

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/source/p;->z()Lcom/google/android/exoplayer2/k;

    move-result-object v6

    invoke-static {v6}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/k;

    iget-object v7, v6, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {v7}, Lqp6;->h(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Lqp6;->k(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v1

    :goto_3
    aput-boolean v7, v4, v5

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/m;->x:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lcom/google/android/exoplayer2/source/m;->x:Z

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/m;->s:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    if-eqz v7, :cond_8

    if-nez v8, :cond_5

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/m;->u:[Lcom/google/android/exoplayer2/source/m$d;

    aget-object v9, v9, v5

    iget-boolean v9, v9, Lcom/google/android/exoplayer2/source/m$d;->b:Z

    if-eqz v9, :cond_7

    :cond_5
    iget-object v9, v6, Lcom/google/android/exoplayer2/k;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v9, :cond_6

    new-instance v9, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v10, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v7, v10, v0

    invoke-direct {v9, v10}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_4

    :cond_6
    new-array v10, v1, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    aput-object v7, v10, v0

    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntries([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v9

    :goto_4
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/google/android/exoplayer2/k$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v6

    :cond_7
    if-eqz v8, :cond_8

    iget v8, v6, Lcom/google/android/exoplayer2/k;->g:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    iget v8, v6, Lcom/google/android/exoplayer2/k;->h:I

    if-ne v8, v9, :cond_8

    iget v8, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    if-eq v8, v9, :cond_8

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/k;->b()Lcom/google/android/exoplayer2/k$b;

    move-result-object v6

    iget v7, v7, Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;->bitrate:I

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/k$b;->G(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v6

    :cond_8
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/m;->d:Lcom/google/android/exoplayer2/drm/c;

    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/drm/c;->d(Lcom/google/android/exoplayer2/k;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/k;->c(I)Lcom/google/android/exoplayer2/k;

    move-result-object v6

    new-instance v7, Lzua;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6}, [Lcom/google/android/exoplayer2/k;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lzua;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/k;)V

    aput-object v7, v3, v5

    add-int/2addr v5, v1

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lcom/google/android/exoplayer2/source/m$e;

    new-instance v2, Leva;

    invoke-direct {v2, v3}, Leva;-><init>([Lzua;)V

    invoke-direct {v0, v2, v4}, Lcom/google/android/exoplayer2/source/m$e;-><init>(Leva;[Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/m;->w:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->r:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/h$a;->d(Lcom/google/android/exoplayer2/source/h;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final I(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/m$e;->d:[Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/m$e;->a:Leva;

    invoke-virtual {v0, p1}, Leva;->b(I)Lzua;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lzua;->c(I)Lcom/google/android/exoplayer2/k;

    move-result-object v5

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/j$a;

    iget-object v0, v5, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    invoke-static {v0}, Lqp6;->f(Ljava/lang/String;)I

    move-result v4

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/m;->H:J

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/j$a;->h(ILcom/google/android/exoplayer2/k;ILjava/lang/Object;J)V

    const/4 p0, 0x1

    aput-boolean p0, v1, p1

    :cond_0
    return-void
.end method

.method public final J(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/m$e;->b:[Z

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/m;->J:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/p;->D(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/m;->I:J

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->J:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->E:Z

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/m;->H:J

    iput v0, p0, Lcom/google/android/exoplayer2/source/m;->K:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/p;->N()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->r:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/q$a;->b(Lcom/google/android/exoplayer2/source/q;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public K()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m;->e:Lcom/google/android/exoplayer2/upstream/f;

    iget p0, p0, Lcom/google/android/exoplayer2/source/m;->C:I

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/upstream/f;->getMinimumLoadableRetryCount(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->k(I)V

    return-void
.end method

.method public L(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/p;->G()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->K()V

    return-void
.end method

.method public final M()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->q:Landroid/os/Handler;

    new-instance v1, Lci8;

    invoke-direct {v1, p0}, Lci8;-><init>(Lcom/google/android/exoplayer2/source/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public N(Lcom/google/android/exoplayer2/source/m$a;JJZ)V
    .locals 15

    move-object v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->b(Lcom/google/android/exoplayer2/source/m$a;)Lox9;

    move-result-object v1

    new-instance v14, Lin5;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->c(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->d(Lcom/google/android/exoplayer2/source/m$a;)Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v5

    invoke-virtual {v1}, Lox9;->d()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lox9;->e()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lox9;->c()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lin5;-><init>(JLcom/google/android/exoplayer2/upstream/b;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/m;->e:Lcom/google/android/exoplayer2/upstream/f;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->c(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/f;->onLoadTaskConcluded(J)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/j$a;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->e(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/m;->A:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v14

    invoke-virtual/range {v2 .. v12}, Lcom/google/android/exoplayer2/source/j$a;->o(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/p;->N()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/google/android/exoplayer2/source/m;->F:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/m;->r:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {v1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/q$a;->b(Lcom/google/android/exoplayer2/source/q;)V

    :cond_1
    return-void
.end method

.method public O(Lcom/google/android/exoplayer2/source/m$a;JJ)V
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/m;->A:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/m;->z:Lja9;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lja9;->isSeekable()Z

    move-result v1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/m;->A(Z)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    :goto_0
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/m;->A:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/m;->h:Lcom/google/android/exoplayer2/source/m$b;

    iget-boolean v6, v0, Lcom/google/android/exoplayer2/source/m;->B:Z

    invoke-interface {v5, v3, v4, v1, v6}, Lcom/google/android/exoplayer2/source/m$b;->h(JZZ)V

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->b(Lcom/google/android/exoplayer2/source/m$a;)Lox9;

    move-result-object v1

    new-instance v15, Lin5;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->c(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->d(Lcom/google/android/exoplayer2/source/m$a;)Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v6

    invoke-virtual {v1}, Lox9;->d()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1}, Lox9;->e()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v1}, Lox9;->c()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lin5;-><init>(JLcom/google/android/exoplayer2/upstream/b;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/m;->e:Lcom/google/android/exoplayer2/upstream/f;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->c(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lcom/google/android/exoplayer2/upstream/f;->onLoadTaskConcluded(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/j$a;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->e(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v10

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/m;->A:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v15

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/j$a;->q(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/m;->L:Z

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/m;->r:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {v1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/q$a;->b(Lcom/google/android/exoplayer2/source/q;)V

    return-void
.end method

.method public P(Lcom/google/android/exoplayer2/source/m$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 25

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->b(Lcom/google/android/exoplayer2/source/m$a;)Lox9;

    move-result-object v1

    new-instance v14, Lin5;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->c(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->d(Lcom/google/android/exoplayer2/source/m$a;)Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v5

    invoke-virtual {v1}, Lox9;->d()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Lox9;->e()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v1}, Lox9;->c()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lin5;-><init>(JLcom/google/android/exoplayer2/upstream/b;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v1, Lih6;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->e(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lblb;->P0(J)J

    move-result-wide v21

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/m;->A:J

    invoke-static {v2, v3}, Lblb;->P0(J)J

    move-result-wide v23

    const/16 v16, 0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v1

    invoke-direct/range {v15 .. v24}, Lih6;-><init>(IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/m;->e:Lcom/google/android/exoplayer2/upstream/f;

    new-instance v3, Lcom/google/android/exoplayer2/upstream/f$a;

    move-object/from16 v13, p6

    move/from16 v4, p7

    invoke-direct {v3, v14, v1, v13, v4}, Lcom/google/android/exoplayer2/upstream/f$a;-><init>(Lin5;Lih6;Ljava/io/IOException;I)V

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/f;->a(Lcom/google/android/exoplayer2/upstream/f$a;)J

    move-result-wide v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->g:Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-object/from16 v15, p1

    goto :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/m;->z()I

    move-result v3

    iget v4, v0, Lcom/google/android/exoplayer2/source/m;->K:I

    if-le v3, v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v15, p1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v15, v3}, Lcom/google/android/exoplayer2/source/m;->x(Lcom/google/android/exoplayer2/source/m$a;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v4, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->g(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    :goto_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader$c;->c()Z

    move-result v16

    xor-int/lit8 v17, v16, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/j$a;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->e(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/m;->A:J

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v14

    move-object/from16 v13, p6

    move/from16 v14, v17

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/j$a;->s(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_3

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/m;->e:Lcom/google/android/exoplayer2/upstream/f;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/m$a;->c(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/exoplayer2/upstream/f;->onLoadTaskConcluded(J)V

    :cond_3
    return-object v1
.end method

.method public final Q(Lcom/google/android/exoplayer2/source/m$d;)Lfva;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->u:[Lcom/google/android/exoplayer2/source/m$d;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/m$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m;->i:Lcb;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->d:Lcom/google/android/exoplayer2/drm/c;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->g:Lcom/google/android/exoplayer2/drm/b$a;

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/source/p;->k(Lcb;Lcom/google/android/exoplayer2/drm/c;Lcom/google/android/exoplayer2/drm/b$a;)Lcom/google/android/exoplayer2/source/p;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/p;->T(Lcom/google/android/exoplayer2/source/p$d;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->u:[Lcom/google/android/exoplayer2/source/m$d;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplayer2/source/m$d;

    aput-object p1, v2, v0

    invoke-static {v2}, Lblb;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/m$d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->u:[Lcom/google/android/exoplayer2/source/m$d;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/p;

    aput-object v1, p1, v0

    invoke-static {p1}, Lblb;->k([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/p;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    return-object v1
.end method

.method public R(ILo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->X()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/m;->I(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/m;->L:Z

    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/android/exoplayer2/source/p;->K(Lo44;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/m;->J(I)V

    :cond_1
    return p2
.end method

.method public S()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/p;->J()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->m(Lcom/google/android/exoplayer2/upstream/Loader$e;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->q:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/m;->r:Lcom/google/android/exoplayer2/source/h$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->M:Z

    return-void
.end method

.method public final T([ZJ)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object v3, v3, v2

    invoke-virtual {v3, p2, p3, v1}, Lcom/google/android/exoplayer2/source/p;->Q(JZ)Z

    move-result v3

    if-nez v3, :cond_1

    aget-boolean v3, p1, v2

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/m;->x:Z

    if-nez v3, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final U(Lja9;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->s:Lcom/google/android/exoplayer2/metadata/icy/IcyHeaders;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lja9$b;

    invoke-direct {v0, v1, v2}, Lja9$b;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/m;->z:Lja9;

    invoke-interface {p1}, Lja9;->getDurationUs()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/m;->A:J

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->G:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Lja9;->getDurationUs()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->B:Z

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    :cond_2
    iput v3, p0, Lcom/google/android/exoplayer2/source/m;->C:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->h:Lcom/google/android/exoplayer2/source/m$b;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/m;->A:J

    invoke-interface {p1}, Lja9;->isSeekable()Z

    move-result p1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/m;->B:Z

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/google/android/exoplayer2/source/m$b;->h(JZZ)V

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->w:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->H()V

    :cond_3
    return-void
.end method

.method public V(IJ)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->X()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/m;->I(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/m;->L:Z

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/p;->y(JZ)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/p;->U(I)V

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/m;->J(I)V

    :cond_1
    return p2
.end method

.method public final W()V
    .locals 26

    move-object/from16 v7, p0

    new-instance v8, Lcom/google/android/exoplayer2/source/m$a;

    iget-object v2, v7, Lcom/google/android/exoplayer2/source/m;->b:Landroid/net/Uri;

    iget-object v3, v7, Lcom/google/android/exoplayer2/source/m;->c:Lcom/google/android/exoplayer2/upstream/a;

    iget-object v4, v7, Lcom/google/android/exoplayer2/source/m;->m:Lcom/google/android/exoplayer2/source/l;

    iget-object v6, v7, Lcom/google/android/exoplayer2/source/m;->n:Lle1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/m$a;-><init>(Lcom/google/android/exoplayer2/source/m;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/a;Lcom/google/android/exoplayer2/source/l;Lqk3;Lle1;)V

    iget-boolean v0, v7, Lcom/google/android/exoplayer2/source/m;->w:Z

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/m;->C()Z

    move-result v0

    invoke-static {v0}, Lzi;->g(Z)V

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/m;->A:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, v7, Lcom/google/android/exoplayer2/source/m;->I:J

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/google/android/exoplayer2/source/m;->L:Z

    iput-wide v2, v7, Lcom/google/android/exoplayer2/source/m;->I:J

    return-void

    :cond_0
    iget-object v0, v7, Lcom/google/android/exoplayer2/source/m;->z:Lja9;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lja9;

    iget-wide v4, v7, Lcom/google/android/exoplayer2/source/m;->I:J

    invoke-interface {v0, v4, v5}, Lja9;->getSeekPoints(J)Lja9$a;

    move-result-object v0

    iget-object v0, v0, Lja9$a;->a:Lla9;

    iget-wide v0, v0, Lla9;->b:J

    iget-wide v4, v7, Lcom/google/android/exoplayer2/source/m;->I:J

    invoke-static {v8, v0, v1, v4, v5}, Lcom/google/android/exoplayer2/source/m$a;->f(Lcom/google/android/exoplayer2/source/m$a;JJ)V

    iget-object v0, v7, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v0, v4

    iget-wide v9, v7, Lcom/google/android/exoplayer2/source/m;->I:J

    invoke-virtual {v5, v9, v10}, Lcom/google/android/exoplayer2/source/p;->R(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-wide v2, v7, Lcom/google/android/exoplayer2/source/m;->I:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/m;->z()I

    move-result v0

    iput v0, v7, Lcom/google/android/exoplayer2/source/m;->K:I

    iget-object v0, v7, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v1, v7, Lcom/google/android/exoplayer2/source/m;->e:Lcom/google/android/exoplayer2/upstream/f;

    iget v2, v7, Lcom/google/android/exoplayer2/source/m;->C:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/upstream/f;->getMinimumLoadableRetryCount(I)I

    move-result v1

    invoke-virtual {v0, v8, v7, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->n(Lcom/google/android/exoplayer2/upstream/Loader$d;Lcom/google/android/exoplayer2/upstream/Loader$b;I)J

    move-result-wide v13

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/m$a;->d(Lcom/google/android/exoplayer2/source/m$a;)Lcom/google/android/exoplayer2/upstream/b;

    move-result-object v12

    iget-object v15, v7, Lcom/google/android/exoplayer2/source/m;->f:Lcom/google/android/exoplayer2/source/j$a;

    new-instance v16, Lin5;

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/m$a;->c(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v10

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v14}, Lin5;-><init>(JLcom/google/android/exoplayer2/upstream/b;J)V

    invoke-static {v8}, Lcom/google/android/exoplayer2/source/m$a;->e(Lcom/google/android/exoplayer2/source/m$a;)J

    move-result-wide v22

    iget-wide v0, v7, Lcom/google/android/exoplayer2/source/m;->A:J

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-wide/from16 v24, v0

    invoke-virtual/range {v15 .. v25}, Lcom/google/android/exoplayer2/source/j$a;->u(Lin5;IILcom/google/android/exoplayer2/k;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final X()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->E:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public a([Lqi3;[Z[Lh19;[ZJ)J
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/m$e;->a:Leva;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/m$e;->c:[Z

    iget v2, p0, Lcom/google/android/exoplayer2/source/m;->F:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v7, p1, v4

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v4

    if-nez v7, :cond_1

    :cond_0
    check-cast v5, Lcom/google/android/exoplayer2/source/m$c;

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/m$c;->b(Lcom/google/android/exoplayer2/source/m$c;)I

    move-result v5

    aget-boolean v7, v0, v5

    invoke-static {v7}, Lzi;->g(Z)V

    iget v7, p0, Lcom/google/android/exoplayer2/source/m;->F:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/source/m;->F:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/m;->D:Z

    if-eqz p2, :cond_4

    if-nez v2, :cond_3

    :goto_1
    move p2, v6

    goto :goto_2

    :cond_3
    move p2, v3

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_3

    goto :goto_1

    :goto_2
    move v2, v3

    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    invoke-interface {v4}, Lhva;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-static {v5}, Lzi;->g(Z)V

    invoke-interface {v4, v3}, Lhva;->getIndexInTrackGroup(I)I

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    invoke-static {v5}, Lzi;->g(Z)V

    invoke-interface {v4}, Lhva;->getTrackGroup()Lzua;

    move-result-object v4

    invoke-virtual {v1, v4}, Leva;->c(Lzua;)I

    move-result v4

    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lzi;->g(Z)V

    iget v5, p0, Lcom/google/android/exoplayer2/source/m;->F:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/google/android/exoplayer2/source/m;->F:I

    aput-boolean v6, v0, v4

    new-instance v5, Lcom/google/android/exoplayer2/source/m$c;

    invoke-direct {v5, p0, v4}, Lcom/google/android/exoplayer2/source/m$c;-><init>(Lcom/google/android/exoplayer2/source/m;I)V

    aput-object v5, p3, v2

    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object p2, p2, v4

    invoke-virtual {p2, p5, p6, v6}, Lcom/google/android/exoplayer2/source/p;->Q(JZ)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/p;->w()I

    move-result p2

    if-eqz p2, :cond_7

    move p2, v6

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lcom/google/android/exoplayer2/source/m;->F:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/m;->J:Z

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/source/m;->E:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/p;->p()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    goto :goto_a

    :cond_b
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length p2, p1

    :goto_8
    if-ge v3, p2, :cond_e

    aget-object p3, p1, v3

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/p;->N()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/source/m;->seekToUs(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v6, p0, Lcom/google/android/exoplayer2/source/m;->D:Z

    return-wide p5
.end method

.method public b(Lcom/google/android/exoplayer2/k;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->q:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(JLka9;)J
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->z:Lja9;

    invoke-interface {v0}, Lja9;->isSeekable()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->z:Lja9;

    invoke-interface {p0, p1, p2}, Lja9;->getSeekPoints(J)Lja9$a;

    move-result-object p0

    iget-object v0, p0, Lja9$a;->a:Lla9;

    iget-wide v4, v0, Lla9;->a:J

    iget-object p0, p0, Lja9$a;->b:Lla9;

    iget-wide v6, p0, Lla9;->a:J

    move-object v1, p3

    move-wide v2, p1

    invoke-virtual/range {v1 .. v7}, Lka9;->a(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public continueLoading(J)Z
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->L:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->h()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->J:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->w:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/exoplayer2/source/m;->F:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->n:Lle1;

    invoke-virtual {p1}, Lle1;->f()Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->W()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(Lja9;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->q:Landroid/os/Handler;

    new-instance v1, Ldi8;

    invoke-direct {v1, p0, p1}, Ldi8;-><init>(Lcom/google/android/exoplayer2/source/m;Lja9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->w()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/m$e;->c:[Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/google/android/exoplayer2/source/p;->o(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic e(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/m$a;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/m;->N(Lcom/google/android/exoplayer2/source/m$a;JJZ)V

    return-void
.end method

.method public endTracks()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->v:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->q:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic f(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/m$a;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/m;->O(Lcom/google/android/exoplayer2/source/m$a;JJ)V

    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/source/h$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->r:Lcom/google/android/exoplayer2/source/h$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->n:Lle1;

    invoke-virtual {p1}, Lle1;->f()Z

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->W()V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->w()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->L:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lcom/google/android/exoplayer2/source/m;->F:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/m;->I:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->x:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    iget-object v10, v9, Lcom/google/android/exoplayer2/source/m$e;->b:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lcom/google/android/exoplayer2/source/m$e;->c:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/p;->C()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/p;->t()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/source/m;->A(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/m;->H:J

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Leva;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->w()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m$e;->a:Leva;

    return-object p0
.end method

.method public bridge synthetic h(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/m$a;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/m;->P(Lcom/google/android/exoplayer2/source/m$a;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;

    move-result-object p0

    return-object p0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->n:Lle1;

    invoke-virtual {p0}, Lle1;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->K()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->L:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/m;->w:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Loading finished before preparation is complete."

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoaderReleased()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/p;->L()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->m:Lcom/google/android/exoplayer2/source/l;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/l;->release()V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->E:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->L:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->z()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/m;->K:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->E:Z

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/m;->H:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    return-void
.end method

.method public seekToUs(J)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->w()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/m$e;->b:[Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m;->z:Lja9;

    invoke-interface {v1}, Lja9;->isSeekable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/m;->E:Z

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/m;->H:J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->C()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/m;->I:J

    return-wide p1

    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/source/m;->C:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/m;->T([ZJ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide p1

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/m;->J:Z

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/m;->I:J

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/m;->L:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/p;->p()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->e()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->l:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->f()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v0, p0

    :goto_2
    if-ge v1, v0, :cond_5

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/p;->N()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-wide p1
.end method

.method public track(II)Lfva;
    .locals 1

    new-instance p2, Lcom/google/android/exoplayer2/source/m$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/exoplayer2/source/m$d;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/m;->Q(Lcom/google/android/exoplayer2/source/m$d;)Lfva;

    move-result-object p0

    return-object p0
.end method

.method public final w()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->w:Z

    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->y:Lcom/google/android/exoplayer2/source/m$e;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->z:Lja9;

    invoke-static {p0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final x(Lcom/google/android/exoplayer2/source/m$a;I)Z
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->G:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->z:Lja9;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lja9;->getDurationUs()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/m;->w:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/m;->X()Z

    move-result p2

    if-nez p2, :cond_1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/m;->J:Z

    return v0

    :cond_1
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/m;->w:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/m;->E:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/m;->H:J

    iput v0, p0, Lcom/google/android/exoplayer2/source/m;->K:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length p2, p0

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/p;->N()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, v2, v3, v2, v3}, Lcom/google/android/exoplayer2/source/m$a;->f(Lcom/google/android/exoplayer2/source/m$a;JJ)V

    return v1

    :cond_3
    :goto_1
    iput p2, p0, Lcom/google/android/exoplayer2/source/m;->K:I

    return v1
.end method

.method public final z()I
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/m;->t:[Lcom/google/android/exoplayer2/source/p;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/p;->A()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
