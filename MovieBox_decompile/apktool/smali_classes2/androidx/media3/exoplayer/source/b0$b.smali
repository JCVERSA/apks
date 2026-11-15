.class public final Landroidx/media3/exoplayer/source/b0$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/a$a;

.field private b:Landroidx/media3/exoplayer/source/v$a;

.field private c:Landroidx/media3/exoplayer/drm/w;

.field private d:Landroidx/media3/exoplayer/upstream/m;

.field private e:I

.field private f:Lcom/google/common/base/q;

.field private g:I

.field private h:Landroidx/media3/common/r;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 1

    .line 1
    new-instance v0, Lk2/m;

    invoke-direct {v0}, Lk2/m;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;Lk2/x;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;)V
    .locals 6

    .line 3
    new-instance v3, Landroidx/media3/exoplayer/drm/j;

    invoke-direct {v3}, Landroidx/media3/exoplayer/drm/j;-><init>()V

    new-instance v4, Landroidx/media3/exoplayer/upstream/k;

    invoke-direct {v4}, Landroidx/media3/exoplayer/upstream/k;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;Landroidx/media3/exoplayer/drm/w;Landroidx/media3/exoplayer/upstream/m;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;Landroidx/media3/exoplayer/drm/w;Landroidx/media3/exoplayer/upstream/m;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/source/b0$b;->a:Landroidx/media3/datasource/a$a;

    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/b0$b;->b:Landroidx/media3/exoplayer/source/v$a;

    .line 7
    iput-object p3, p0, Landroidx/media3/exoplayer/source/b0$b;->c:Landroidx/media3/exoplayer/drm/w;

    .line 8
    iput-object p4, p0, Landroidx/media3/exoplayer/source/b0$b;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 9
    iput p5, p0, Landroidx/media3/exoplayer/source/b0$b;->e:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;Lk2/x;)V
    .locals 1

    .line 2
    new-instance v0, Lf2/t;

    invoke-direct {v0, p2}, Lf2/t;-><init>(Lk2/x;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;)V

    return-void
.end method

.method public static synthetic g(Lk2/x;Lx1/f4;)Landroidx/media3/exoplayer/source/v;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/b0$b;->j(Lk2/x;Lx1/f4;)Landroidx/media3/exoplayer/source/v;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic j(Lk2/x;Lx1/f4;)Landroidx/media3/exoplayer/source/v;
    .locals 0

    .line 1
    new-instance p1, Lf2/b;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lf2/b;-><init>(Lk2/x;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method


# virtual methods
.method public synthetic a(Lh3/s$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf2/l;->c(Landroidx/media3/exoplayer/source/r$a;Lh3/s$a;)Landroidx/media3/exoplayer/source/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic b(I)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf2/l;->b(Landroidx/media3/exoplayer/source/r$a;I)Landroidx/media3/exoplayer/source/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic c(Z)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf2/l;->a(Landroidx/media3/exoplayer/source/r$a;Z)Landroidx/media3/exoplayer/source/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/b0$b;->h(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/b0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/b0$b;->k(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/b0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/b0$b;->l(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/b0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/b0;
    .locals 12

    .line 1
    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/media3/exoplayer/source/b0;

    .line 7
    .line 8
    iget-object v3, p0, Landroidx/media3/exoplayer/source/b0$b;->a:Landroidx/media3/datasource/a$a;

    .line 9
    .line 10
    iget-object v4, p0, Landroidx/media3/exoplayer/source/b0$b;->b:Landroidx/media3/exoplayer/source/v$a;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/source/b0$b;->c:Landroidx/media3/exoplayer/drm/w;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/drm/w;->a(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v6, p0, Landroidx/media3/exoplayer/source/b0$b;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 19
    .line 20
    iget v7, p0, Landroidx/media3/exoplayer/source/b0$b;->e:I

    .line 21
    .line 22
    iget v8, p0, Landroidx/media3/exoplayer/source/b0$b;->g:I

    .line 23
    .line 24
    iget-object v9, p0, Landroidx/media3/exoplayer/source/b0$b;->h:Landroidx/media3/common/r;

    .line 25
    .line 26
    iget-object v10, p0, Landroidx/media3/exoplayer/source/b0$b;->f:Lcom/google/common/base/q;

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    move-object v1, v0

    .line 30
    move-object v2, p1

    .line 31
    invoke-direct/range {v1 .. v11}, Landroidx/media3/exoplayer/source/b0;-><init>(Landroidx/media3/common/t;Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/source/v$a;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;IILandroidx/media3/common/r;Lcom/google/common/base/q;Landroidx/media3/exoplayer/source/b0$a;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method i(ILandroidx/media3/common/r;)Landroidx/media3/exoplayer/source/b0$b;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/source/b0$b;->g:I

    .line 2
    .line 3
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/common/r;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/source/b0$b;->h:Landroidx/media3/common/r;

    .line 10
    .line 11
    return-object p0
.end method

.method public k(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/b0$b;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/drm/w;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/source/b0$b;->c:Landroidx/media3/exoplayer/drm/w;

    .line 10
    .line 11
    return-object p0
.end method

.method public l(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/b0$b;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/upstream/m;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/source/b0$b;->d:Landroidx/media3/exoplayer/upstream/m;

    .line 10
    .line 11
    return-object p0
.end method
