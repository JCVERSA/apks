.class public final Lcom/transsion/cloud_drive/base/internal/request/MoveFileRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/MoveFileRequest;",
        "",
        "fileId",
        "",
        "toParentFileId",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getFileId",
        "()Ljava/lang/String;",
        "getToParentFileId",
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

.field private final toParentFileId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "file_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "to_parent_file_id"
        .end annotation
    .end param

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toParentFileId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/MoveFileRequest;->fileId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/cloud_drive/base/internal/request/MoveFileRequest;->toParentFileId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/MoveFileRequest;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getToParentFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/MoveFileRequest;->toParentFileId:Ljava/lang/String;

    return-object p0
.end method
