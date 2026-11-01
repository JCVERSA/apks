.class public Lcom/wandoujia/download/model/DserviceInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STATUS_FAILED:I = 0x0

.field public static final STATUS_OK:I = 0x1

.field private static final serialVersionUID:J = -0x26666140aa1456fbL


# instance fields
.field private down_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/DownloadUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private meta:Lcom/wandoujia/download/model/DownloadSegMetaData;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownload_urls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/DownloadUrlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wandoujia/download/model/DserviceInfo;->down_urls:Ljava/util/List;

    return-object v0
.end method

.method public getMeta()Lcom/wandoujia/download/model/DownloadSegMetaData;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/DserviceInfo;->meta:Lcom/wandoujia/download/model/DownloadSegMetaData;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/wandoujia/download/model/DserviceInfo;->status:I

    return v0
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/wandoujia/download/model/DserviceInfo;->status:I

    return-void
.end method
