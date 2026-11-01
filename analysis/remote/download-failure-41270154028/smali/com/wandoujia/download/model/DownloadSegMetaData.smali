.class public Lcom/wandoujia/download/model/DownloadSegMetaData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2857f574ba11e02aL


# instance fields
.field private res_sign:Ljava/lang/String;

.field private seg_size:J

.field private segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/SegmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private total_crc:Ljava/lang/String;

.field private total_md5:Ljava/lang/String;

.field private total_size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRes_sign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadSegMetaData;->res_sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSeg_size()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/DownloadSegMetaData;->seg_size:J

    return-wide v0
.end method

.method public getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wandoujia/download/model/SegmentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadSegMetaData;->segments:Ljava/util/List;

    return-object v0
.end method

.method public getTotal_crc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadSegMetaData;->total_crc:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_md5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wandoujia/download/model/DownloadSegMetaData;->total_md5:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal_size()J
    .locals 2

    iget-wide v0, p0, Lcom/wandoujia/download/model/DownloadSegMetaData;->total_size:J

    return-wide v0
.end method
