.class public final Lcom/transsion/cloud/upload/model/UploadingItem$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud/upload/model/UploadingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/cloud/upload/model/UploadingItem$Companion;",
        "",
        "<init>",
        "()V",
        "createUploadProgressInfo",
        "Lcom/transsion/cloud/upload/model/UploadProgressInfo;",
        "uploadingItem",
        "Lcom/transsion/cloud/upload/model/UploadingItem;",
        "generateTag",
        "",
        "mediaId",
        "",
        "fileName",
        "sniffer_load_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/cloud/upload/model/UploadingItem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createUploadProgressInfo(Lcom/transsion/cloud/upload/model/UploadingItem;)Lcom/transsion/cloud/upload/model/UploadProgressInfo;
    .locals 3

    const-string v0, "uploadingItem"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;

    invoke-direct {v0}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;-><init>()V

    iget v1, p1, Lcom/transsion/cloud/upload/model/UploadingItem;->mediaId:I

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/model/UploadingItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/cloud/upload/model/UploadingItem$Companion;->generateTag(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/model/UploadingItem;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/cloud/upload/model/UploadingItem;->getFileName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->fileName:Ljava/lang/String;

    iget-wide v1, p1, Lcom/transsion/cloud/upload/model/UploadingItem;->totalSize:J

    iput-wide v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->totalSize:J

    const/4 p0, 0x0

    iput p0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->status:I

    iget-wide v1, p1, Lcom/transsion/cloud/upload/model/UploadingItem;->duration:J

    iput-wide v1, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->duration:J

    iget p0, p1, Lcom/transsion/cloud/upload/model/UploadingItem;->mediaId:I

    iput p0, v0, Lcom/transsion/cloud/upload/model/UploadProgressInfo;->mediaId:I

    return-object v0
.end method

.method public final generateTag(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "fileName"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
