.class public abstract Li2/e0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/e0$a;
    }
.end annotation


# instance fields
.field private a:Li2/e0$a;

.field private b:Landroidx/media3/exoplayer/upstream/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final a()Landroidx/media3/exoplayer/upstream/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li2/e0;->b:Landroidx/media3/exoplayer/upstream/e;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/upstream/e;

    .line 8
    .line 9
    return-object v0
.end method

.method public c()Landroidx/media3/common/h0;
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/common/h0;->F:Landroidx/media3/common/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Landroidx/media3/exoplayer/y3$a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public e(Li2/e0$a;Landroidx/media3/exoplayer/upstream/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li2/e0;->a:Li2/e0$a;

    .line 2
    .line 3
    iput-object p2, p0, Li2/e0;->b:Landroidx/media3/exoplayer/upstream/e;

    .line 4
    .line 5
    return-void
.end method

.method protected final f()V
    .locals 1

    .line 1
    iget-object v0, p0, Li2/e0;->a:Li2/e0$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Li2/e0$a;->onTrackSelectionsInvalidated()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected final g(Landroidx/media3/exoplayer/w3;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li2/e0;->a:Li2/e0$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Li2/e0$a;->b(Landroidx/media3/exoplayer/w3;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract i(Ljava/lang/Object;)V
.end method

.method public j()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Li2/e0;->a:Li2/e0$a;

    .line 3
    .line 4
    iput-object v0, p0, Li2/e0;->b:Landroidx/media3/exoplayer/upstream/e;

    .line 5
    .line 6
    return-void
.end method

.method public abstract k([Landroidx/media3/exoplayer/y3;Lf2/z;Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/common/e0;)Li2/f0;
.end method

.method public l(Landroidx/media3/common/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m(Landroidx/media3/common/h0;)V
    .locals 0

    .line 1
    return-void
.end method
