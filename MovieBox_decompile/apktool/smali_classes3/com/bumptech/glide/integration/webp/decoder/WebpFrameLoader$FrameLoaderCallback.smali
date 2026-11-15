.class Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLoaderCallback"
.end annotation


# static fields
.field static final MSG_CLEAR:I = 0x2

.field static final MSG_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->onFrameReady(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method
