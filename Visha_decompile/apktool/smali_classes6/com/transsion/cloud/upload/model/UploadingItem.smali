.class public final Lcom/transsion/cloud/upload/model/UploadingItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud/upload/model/UploadingItem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/cloud/upload/model/UploadingItem;",
        "",
        "<init>",
        "()V",
        "filePath",
        "",
        "getFilePath",
        "()Ljava/lang/String;",
        "setFilePath",
        "(Ljava/lang/String;)V",
        "fileName",
        "getFileName",
        "setFileName",
        "totalSize",
        "",
        "mediaId",
        "",
        "duration",
        "fileType",
        "getFileType",
        "()I",
        "setFileType",
        "(I)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/transsion/cloud/upload/model/UploadingItem$Companion;


# instance fields
.field public duration:J

.field public fileName:Ljava/lang/String;

.field public filePath:Ljava/lang/String;

.field private fileType:I

.field public mediaId:I

.field public totalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud/upload/model/UploadingItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud/upload/model/UploadingItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud/upload/model/UploadingItem;->Companion:Lcom/transsion/cloud/upload/model/UploadingItem$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/model/UploadingItem;->fileName:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fileName"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/upload/model/UploadingItem;->filePath:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "filePath"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFileType()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud/upload/model/UploadingItem;->fileType:I

    return p0
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud/upload/model/UploadingItem;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setFilePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud/upload/model/UploadingItem;->filePath:Ljava/lang/String;

    return-void
.end method

.method public final setFileType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/cloud/upload/model/UploadingItem;->fileType:I

    return-void
.end method
