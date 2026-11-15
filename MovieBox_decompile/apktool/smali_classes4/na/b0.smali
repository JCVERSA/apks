.class public abstract Lna/b0;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lna/b0$a;
    }
.end annotation


# instance fields
.field private a:Lna/b0$a;

.field private b:Lcom/google/android/exoplayer2/upstream/e;


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
.method protected final a()Lcom/google/android/exoplayer2/upstream/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lna/b0;->b:Lcom/google/android/exoplayer2/upstream/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/upstream/e;

    .line 8
    .line 9
    return-object v0
.end method

.method public b()Lna/z;
    .locals 1

    .line 1
    sget-object v0, Lna/z;->A:Lna/z;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lna/b0$a;Lcom/google/android/exoplayer2/upstream/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lna/b0;->a:Lna/b0$a;

    .line 2
    .line 3
    iput-object p2, p0, Lna/b0;->b:Lcom/google/android/exoplayer2/upstream/e;

    .line 4
    .line 5
    return-void
.end method

.method protected final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lna/b0;->a:Lna/b0$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lna/b0$a;->onTrackSelectionsInvalidated()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract f(Ljava/lang/Object;)V
.end method

.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lna/b0;->a:Lna/b0$a;

    .line 3
    .line 4
    iput-object v0, p0, Lna/b0;->b:Lcom/google/android/exoplayer2/upstream/e;

    .line 5
    .line 6
    return-void
.end method

.method public abstract h([Lcom/google/android/exoplayer2/a3;Lv9/y;Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/l3;)Lna/c0;
.end method

.method public i(Lcom/google/android/exoplayer2/audio/e;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Lna/z;)V
    .locals 0

    .line 1
    return-void
.end method
