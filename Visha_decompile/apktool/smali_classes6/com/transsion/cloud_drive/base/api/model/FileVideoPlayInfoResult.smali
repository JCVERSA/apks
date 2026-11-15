.class public final Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;",
        "",
        "fileId",
        "",
        "playInfo",
        "Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;",
        "(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;)V",
        "getFileId",
        "()Ljava/lang/String;",
        "getPlayInfo",
        "()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "file_id"
        .end annotation
    .end param
    .param p2    # Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;
        .annotation runtime Lv95;
            name = "video_preview_play_info"
        .end annotation
    .end param

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->fileId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->playInfo:Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    return-void
.end method


# virtual methods
.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlayInfo()Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;->playInfo:Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;

    return-object p0
.end method
