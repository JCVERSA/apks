.class public final synthetic Landroidx/media3/exoplayer/video/b0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/video/i0$a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b0;->a:Landroidx/media3/exoplayer/video/i0$a;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/b0;->b:Ljava/lang/Exception;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/b0;->a:Landroidx/media3/exoplayer/video/i0$a;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/video/b0;->b:Ljava/lang/Exception;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/i0$a;->b(Landroidx/media3/exoplayer/video/i0$a;Ljava/lang/Exception;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
