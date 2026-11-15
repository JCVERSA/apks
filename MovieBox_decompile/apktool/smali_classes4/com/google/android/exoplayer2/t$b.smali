.class public final Lcom/google/android/exoplayer2/t$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:Z

.field B:Z

.field final a:Landroid/content/Context;

.field b:Lcom/google/android/exoplayer2/util/e;

.field c:J

.field d:Lcom/google/common/base/q;

.field e:Lcom/google/common/base/q;

.field f:Lcom/google/common/base/q;

.field g:Lcom/google/common/base/q;

.field h:Lcom/google/common/base/q;

.field i:Lcom/google/common/base/f;

.field j:Landroid/os/Looper;

.field k:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

.field l:Lcom/google/android/exoplayer2/audio/e;

.field m:Z

.field n:I

.field o:Z

.field p:Z

.field q:I

.field r:I

.field s:Z

.field t:Lcom/google/android/exoplayer2/d3;

.field u:J

.field v:J

.field w:Lcom/google/android/exoplayer2/t1;

.field x:J

.field y:J

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/u;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/u;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplayer2/v;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/v;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/t$b;-><init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;)V
    .locals 8

    .line 2
    new-instance v4, Lcom/google/android/exoplayer2/x;

    invoke-direct {v4, p1}, Lcom/google/android/exoplayer2/x;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/exoplayer2/y;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/y;-><init>()V

    new-instance v6, Lcom/google/android/exoplayer2/z;

    invoke-direct {v6, p1}, Lcom/google/android/exoplayer2/z;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/google/android/exoplayer2/a0;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/a0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/t$b;-><init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/f;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/q;Lcom/google/common/base/f;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/t$b;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/t$b;->d:Lcom/google/common/base/q;

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/t$b;->e:Lcom/google/common/base/q;

    .line 7
    iput-object p4, p0, Lcom/google/android/exoplayer2/t$b;->f:Lcom/google/common/base/q;

    .line 8
    iput-object p5, p0, Lcom/google/android/exoplayer2/t$b;->g:Lcom/google/common/base/q;

    .line 9
    iput-object p6, p0, Lcom/google/android/exoplayer2/t$b;->h:Lcom/google/common/base/q;

    .line 10
    iput-object p7, p0, Lcom/google/android/exoplayer2/t$b;->i:Lcom/google/common/base/f;

    .line 11
    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->Q()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/t$b;->j:Landroid/os/Looper;

    .line 12
    sget-object p1, Lcom/google/android/exoplayer2/audio/e;->g:Lcom/google/android/exoplayer2/audio/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/t$b;->l:Lcom/google/android/exoplayer2/audio/e;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/google/android/exoplayer2/t$b;->n:I

    const/4 p2, 0x1

    .line 14
    iput p2, p0, Lcom/google/android/exoplayer2/t$b;->q:I

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/t$b;->r:I

    .line 16
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/t$b;->s:Z

    .line 17
    sget-object p1, Lcom/google/android/exoplayer2/d3;->g:Lcom/google/android/exoplayer2/d3;

    iput-object p1, p0, Lcom/google/android/exoplayer2/t$b;->t:Lcom/google/android/exoplayer2/d3;

    const-wide/16 p3, 0x1388

    .line 18
    iput-wide p3, p0, Lcom/google/android/exoplayer2/t$b;->u:J

    const-wide/16 p3, 0x3a98

    .line 19
    iput-wide p3, p0, Lcom/google/android/exoplayer2/t$b;->v:J

    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/m$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/m$b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/m$b;->a()Lcom/google/android/exoplayer2/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/t$b;->w:Lcom/google/android/exoplayer2/t1;

    .line 21
    sget-object p1, Lcom/google/android/exoplayer2/util/e;->a:Lcom/google/android/exoplayer2/util/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/t$b;->b:Lcom/google/android/exoplayer2/util/e;

    const-wide/16 p3, 0x1f4

    .line 22
    iput-wide p3, p0, Lcom/google/android/exoplayer2/t$b;->x:J

    const-wide/16 p3, 0x7d0

    .line 23
    iput-wide p3, p0, Lcom/google/android/exoplayer2/t$b;->y:J

    .line 24
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/t$b;->A:Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/google/android/exoplayer2/c3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/t$b;->g(Landroid/content/Context;)Lcom/google/android/exoplayer2/c3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/c3;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/t$b;->k(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/c3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/t$b;->h(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/t$b;->j(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;)Lna/b0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/t$b;->i(Landroid/content/Context;)Lna/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic g(Landroid/content/Context;)Lcom/google/android/exoplayer2/c3;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/p;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic h(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/i;

    .line 2
    .line 3
    new-instance v1, Li9/i;

    .line 4
    .line 5
    invoke-direct {v1}, Li9/i;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/i;-><init>(Landroid/content/Context;Li9/r;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static synthetic i(Landroid/content/Context;)Lna/b0;
    .locals 1

    .line 1
    new-instance v0, Lna/m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lna/m;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic j(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/q;->m(Landroid/content/Context;)Lcom/google/android/exoplayer2/upstream/q;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic k(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/c3;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/t;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/t$b;->B:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/t$b;->B:Z

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/a1;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/a1;-><init>(Lcom/google/android/exoplayer2/t$b;Lcom/google/android/exoplayer2/p2;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public l(Lcom/google/android/exoplayer2/c3;)Lcom/google/android/exoplayer2/t$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/t$b;->B:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/google/android/exoplayer2/w;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/w;-><init>(Lcom/google/android/exoplayer2/c3;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/exoplayer2/t$b;->d:Lcom/google/common/base/q;

    .line 14
    .line 15
    return-object p0
.end method
