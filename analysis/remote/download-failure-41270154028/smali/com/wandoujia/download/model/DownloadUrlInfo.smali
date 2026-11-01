.class public Lcom/wandoujia/download/model/DownloadUrlInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x460bf891dd07c940L


# instance fields
.field private clipinfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/ClipInfo;",
            ">;"
        }
    .end annotation
.end field

.field private cookie:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private refer:Ljava/lang/String;

.field private size:J

.field private toast:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;

.field private weight:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/wandoujia/download/model/DownloadUrlInfo;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/wandoujia/download/model/DownloadUrlInfo;

    iget-object p1, p1, Lcom/wandoujia/download/model/DownloadUrlInfo;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClipinfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/ClipInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->clipinfo:Ljava/util/List;

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getRefer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->refer:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->size:J

    return-wide v0
.end method

.method public getToast()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->toast:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/DownloadUrlInfo;->weight:J

    return-wide v0
.end method
