.class public Lcom/amazonaws/services/s3/model/UploadPartResult;
.super Lcom/amazonaws/services/s3/internal/SSEResultBase;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/services/s3/internal/S3RequesterChargedResult;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amazonaws/services/s3/internal/SSEResultBase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getETag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPartNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPartNumber(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public setRequesterCharged(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/services/s3/model/UploadPartResult;->c:Z

    .line 2
    .line 3
    return-void
.end method
