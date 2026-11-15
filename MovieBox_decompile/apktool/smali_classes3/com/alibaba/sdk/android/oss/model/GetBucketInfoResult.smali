.class public Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;
.super Lcom/alibaba/sdk/android/oss/model/OSSResult;
.source "source.java"


# instance fields
.field private bucket:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getBucket()Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->bucket:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    .line 2
    .line 3
    return-object v0
.end method

.method public setBucket(Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->bucket:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/alibaba/sdk/android/oss/model/OSSResult;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/model/GetBucketInfoResult;->bucket:Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/OSSBucketSummary;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v0, v2, v3

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object v1, v2, v0

    .line 19
    .line 20
    const-string v0, "GetBucketInfoResult<%s>:\n bucket:%s"

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
