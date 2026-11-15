.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadPartTaskMetadata"
.end annotation


# instance fields
.field a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

.field b:Ljava/util/concurrent/Future;

.field c:J

.field d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field final synthetic e:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
