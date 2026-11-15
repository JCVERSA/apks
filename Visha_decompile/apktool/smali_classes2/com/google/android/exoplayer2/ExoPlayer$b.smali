.class public final Lcom/google/android/exoplayer2/ExoPlayer$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:Z

.field public final a:Landroid/content/Context;

.field public b:Ley0;

.field public c:J

.field public d:Lw6a;

.field public e:Lw6a;

.field public f:Lw6a;

.field public g:Lw6a;

.field public h:Lw6a;

.field public i:Lo74;

.field public j:Landroid/os/Looper;

.field public k:Lcom/google/android/exoplayer2/audio/a;

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:Z

.field public s:Lka9;

.field public t:J

.field public u:J

.field public v:Lcom/google/android/exoplayer2/m;

.field public w:J

.field public x:J

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lbg3;

    invoke-direct {v0, p1}, Lbg3;-><init>(Landroid/content/Context;)V

    new-instance v1, Leg3;

    invoke-direct {v1, p1}, Leg3;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$b;-><init>(Landroid/content/Context;Lw6a;Lw6a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw6a;Lw6a;)V
    .locals 8

    .line 2
    new-instance v4, Lvg3;

    invoke-direct {v4, p1}, Lvg3;-><init>(Landroid/content/Context;)V

    new-instance v5, Lxg3;

    invoke-direct {v5}, Lxg3;-><init>()V

    new-instance v6, Lzg3;

    invoke-direct {v6, p1}, Lzg3;-><init>(Landroid/content/Context;)V

    new-instance v7, Lbh3;

    invoke-direct {v7}, Lbh3;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ExoPlayer$b;-><init>(Landroid/content/Context;Lw6a;Lw6a;Lw6a;Lw6a;Lw6a;Lo74;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lw6a;Lw6a;Lw6a;Lw6a;Lw6a;Lo74;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->d:Lw6a;

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->e:Lw6a;

    .line 7
    iput-object p4, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->f:Lw6a;

    .line 8
    iput-object p5, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->g:Lw6a;

    .line 9
    iput-object p6, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->h:Lw6a;

    .line 10
    iput-object p7, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->i:Lo74;

    .line 11
    invoke-static {}, Lblb;->K()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->j:Landroid/os/Looper;

    .line 12
    sget-object p1, Lcom/google/android/exoplayer2/audio/a;->h:Lcom/google/android/exoplayer2/audio/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->k:Lcom/google/android/exoplayer2/audio/a;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->m:I

    const/4 p2, 0x1

    .line 14
    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->p:I

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->q:I

    .line 16
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->r:Z

    .line 17
    sget-object p1, Lka9;->g:Lka9;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->s:Lka9;

    const-wide/16 p3, 0x1388

    .line 18
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->t:J

    const-wide/16 p3, 0x3a98

    .line 19
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->u:J

    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/f$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/f$b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/f$b;->a()Lcom/google/android/exoplayer2/f;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->v:Lcom/google/android/exoplayer2/m;

    .line 21
    sget-object p1, Ley0;->a:Ley0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->b:Ley0;

    const-wide/16 p3, 0x1f4

    .line 22
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->w:J

    const-wide/16 p3, 0x7d0

    .line 23
    iput-wide p3, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->x:J

    .line 24
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->z:Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lms8;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->g(Landroid/content/Context;)Lms8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lms8;)Lms8;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->k(Lms8;)Lms8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->h(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/i$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Lo70;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->j(Landroid/content/Context;)Lo70;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/Context;)Lrva;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayer$b;->i(Landroid/content/Context;)Lrva;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;)Lms8;
    .locals 1

    new-instance v0, Ly32;

    invoke-direct {v0, p0}, Ly32;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic h(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/i$a;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/source/d;

    new-instance v1, Ln12;

    invoke-direct {v1}, Ln12;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/d;-><init>(Landroid/content/Context;Luk3;)V

    return-object v0
.end method

.method public static synthetic i(Landroid/content/Context;)Lrva;
    .locals 1

    new-instance v0, La62;

    invoke-direct {v0, p0}, La62;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic j(Landroid/content/Context;)Lo70;
    .locals 0

    invoke-static {p0}, Lh02;->k(Landroid/content/Context;)Lh02;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lms8;)Lms8;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->A:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lzi;->g(Z)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->A:Z

    new-instance v0, Lcom/google/android/exoplayer2/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/i;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$b;Lcom/google/android/exoplayer2/t;)V

    return-object v0
.end method

.method public l(Lms8;)Lcom/google/android/exoplayer2/ExoPlayer$b;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->A:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    new-instance v0, Ltg3;

    invoke-direct {v0, p1}, Ltg3;-><init>(Lms8;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayer$b;->d:Lw6a;

    return-object p0
.end method
