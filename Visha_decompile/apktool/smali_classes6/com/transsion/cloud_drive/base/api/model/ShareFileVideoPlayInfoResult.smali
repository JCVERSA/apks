.class public final Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;",
        "",
        "shareId",
        "",
        "fileId",
        "playInfo",
        "Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;)V",
        "getFileId",
        "()Ljava/lang/String;",
        "getPlayInfo",
        "()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;",
        "getShareId",
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
.field private final fileId:Ljava/lang/String;

.field private final playInfo:Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

.field private final shareId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "file_id"
        .end annotation
    .end param
    .param p3    # Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;
        .annotation runtime Lv95;
            name = "video_preview_play_info"
        .end annotation
    .end param

    const-string v0, "shareId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playInfo"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->shareId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->fileId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->playInfo:Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    return-void
.end method


# virtual methods
.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->playInfo:Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    return-object p0
.end method

.method public final getShareId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/ShareFileVideoPlayInfoResult;->shareId:Ljava/lang/String;

    return-object p0
.end method
