.class public final Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R$\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;",
        "",
        "partNumber",
        "",
        "uploadUrl",
        "",
        "(ILjava/lang/String;)V",
        "contentMd5",
        "getContentMd5$annotations",
        "()V",
        "getContentMd5",
        "()Ljava/lang/String;",
        "setContentMd5",
        "(Ljava/lang/String;)V",
        "getPartNumber",
        "()I",
        "getUploadUrl",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private contentMd5:Ljava/lang/String;

.field private final partNumber:I

.field private final uploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lv95;
            name = "part_number"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "upload_url"
        .end annotation
    .end param

    const-string v0, "uploadUrl"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;->partNumber:I

    .line 3
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;->uploadUrl:Ljava/lang/String;

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;->contentMd5:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 5
    const-string p2, ""

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic getContentMd5$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "content_md5"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getContentMd5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;->contentMd5:Ljava/lang/String;

    return-object p0
.end method

.method public final getPartNumber()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;->partNumber:I

    return p0
.end method

.method public final getUploadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;->uploadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setContentMd5(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/UploadPartInfo;->contentMd5:Ljava/lang/String;

    return-void
.end method
