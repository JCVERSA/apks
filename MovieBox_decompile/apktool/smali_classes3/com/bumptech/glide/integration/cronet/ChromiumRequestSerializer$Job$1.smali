.class Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$1;
.super Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

.field final synthetic val$info:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$1;->this$1:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$1;->val$info:Lorg/chromium/net/UrlResponseInfo;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;-><init>(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$1;->this$1:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$1;->val$info:Lorg/chromium/net/UrlResponseInfo;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->access$600(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->build()Lcom/bumptech/glide/integration/cronet/BufferQueue;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/cronet/BufferQueue;->coalesceToBuffer()Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v0, v1, v3, v4, v2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->access$700(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;ZLjava/nio/ByteBuffer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
