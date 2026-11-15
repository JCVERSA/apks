.class public final synthetic Landroidx/media3/exoplayer/video/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic a:Landroidx/media3/common/util/p;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/n;->a:Landroidx/media3/common/util/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/n;->a:Landroidx/media3/common/util/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
