.class Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;
.super Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

.field final synthetic val$e:Lorg/chromium/net/CronetException;

.field final synthetic val$urlResponseInfo:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;->this$1:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;->val$urlResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;->val$e:Lorg/chromium/net/CronetException;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;-><init>(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;->this$1:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;->val$urlResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;->val$e:Lorg/chromium/net/CronetException;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->access$700(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;ZLjava/nio/ByteBuffer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
