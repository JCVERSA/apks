.class Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doCallbackHttpBegin(ILjava/lang/String;)V
    .locals 2

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/hunantv/media/player/datasource/p2p/HttpBeginEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/datasource/p2p/HttpBeginEntity;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/hunantv/media/player/datasource/p2p/HttpBeginEntity;->hash:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->validHash(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Begin hash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpBeginEntity;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Begin url:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpBeginEntity;->url:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doCallbackHttpEnd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$202(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;)Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCallbackHttpEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;->hash:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->validHash(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End hash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "End ip:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;->ip:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doCallbackHttpError(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCallbackHttpError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;->hash:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->validHash(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {p0, p1}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$202(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;)Lcom/hunantv/media/player/datasource/p2p/HttpErrorEntity;

    :cond_0
    return-void
.end method

.method private doCdnM3u8Callback(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpBodySize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->P2PDebugD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$000(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCdnM3u8Callback error\uff0cwrong json data,\'buf\' = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/hunantv/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p2, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->hash:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->validHash(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->data:Ljava/lang/String;

    invoke-static {p2}, Lcom/hunantv/media/player/utils/StringUtil;->isHtml(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->isHtml:Z

    iget-object p2, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->url:Ljava/lang/String;

    invoke-static {p2}, Lcom/hunantv/media/player/utils/UrlUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->fileName:Ljava/lang/String;

    iget-object p2, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->data:Ljava/lang/String;

    invoke-static {p2}, Lcom/hunantv/media/utils/HttpParser;->parseContentLength(Ljava/lang/String;)I

    move-result p2

    int-to-long v1, p2

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-ltz p2, :cond_0

    int-to-long v3, p1

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    iput-wide v1, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->contentLength:J

    iput p1, v0, Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;->httpBodySize:I

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {p0, v0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$102(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;)Lcom/hunantv/media/player/datasource/p2p/CdnM3u8Entity;

    :cond_1
    return-void
.end method

.method private validHash(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->this$0:Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;

    invoke-static {p0}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;->access$300(Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource;)Lcom/mgtv/a/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/a/c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onNotify(IILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x46c5

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->doCallbackHttpError(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x46c7

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->doCallbackHttpBegin(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x46c8

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->doCallbackHttpEnd(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x4b68

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/hunantv/media/player/datasource/p2p/MGTVP2pDirectMediaDataSource$1;->doCdnM3u8Callback(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
