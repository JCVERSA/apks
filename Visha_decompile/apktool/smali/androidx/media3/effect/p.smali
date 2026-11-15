.class public final synthetic Landroidx/media3/effect/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/effect/DefaultVideoFrameProcessor;

.field public final synthetic c:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/effect/p;->b:Landroidx/media3/effect/DefaultVideoFrameProcessor;

    iput-object p2, p0, Landroidx/media3/effect/p;->c:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/effect/p;->b:Landroidx/media3/effect/DefaultVideoFrameProcessor;

    iget-object p0, p0, Landroidx/media3/effect/p;->c:Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;

    invoke-static {v0, p0}, Landroidx/media3/effect/DefaultVideoFrameProcessor;->d(Landroidx/media3/effect/DefaultVideoFrameProcessor;Landroidx/media3/effect/DefaultVideoFrameProcessor$InputStreamInfo;)V

    return-void
.end method
