.class final Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;
.implements Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "TT;>;",
        "Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;"
    }
.end annotation


# instance fields
.field private callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/integration/cronet/ByteBufferParser<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final serializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

.field private final url:Lcom/bumptech/glide/load/model/GlideUrl;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;Lcom/bumptech/glide/integration/cronet/ByteBufferParser;Lcom/bumptech/glide/load/model/GlideUrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;",
            "Lcom/bumptech/glide/integration/cronet/ByteBufferParser<",
            "TT;>;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->serializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->serializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->cancelRequest(Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public cleanup()V
    .locals 0

    .line 1
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bumptech/glide/integration/cronet/ByteBufferParser;->getDataClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    .line 2
    .line 3
    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->serializer:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->url:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 6
    .line 7
    invoke-virtual {p2, p1, v0, p0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->startRequest(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onRequestComplete(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->parser:Lcom/bumptech/glide/integration/cronet/ByteBufferParser;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Lcom/bumptech/glide/integration/cronet/ByteBufferParser;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onRequestFailed(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumUrlFetcher;->callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
