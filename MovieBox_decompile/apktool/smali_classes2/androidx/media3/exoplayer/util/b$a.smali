.class Landroidx/media3/exoplayer/util/b$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/util/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/util/b;->a(Ljava/util/concurrent/Executor;Landroidx/media3/common/util/m;)Landroidx/media3/exoplayer/util/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Landroidx/media3/common/util/m;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroidx/media3/common/util/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/util/b$a;->a:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/util/b$a;->b:Landroidx/media3/common/util/m;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/util/b$a;->a:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/util/b$a;->b:Landroidx/media3/common/util/m;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/util/b$a;->a:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/media3/common/util/m;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
