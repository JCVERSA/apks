.class public final Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\t\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0008\u0001\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;",
        "",
        "shareId",
        "",
        "parentId",
        "fileIds",
        "",
        "shareRegion",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V",
        "getFileIds",
        "()Ljava/util/List;",
        "getParentId",
        "()Ljava/lang/String;",
        "getShareId",
        "getShareRegion",
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
.field private final fileIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parentId:Ljava/lang/String;

.field private final shareId:Ljava/lang/String;

.field private final shareRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "to_parent_file_id"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lv95;
            name = "file_ids"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_region"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "shareId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentId"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileIds"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareRegion"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;->shareId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;->parentId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;->fileIds:Ljava/util/List;

    iput-object p4, p0, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;->shareRegion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFileIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;->fileIds:Ljava/util/List;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;->shareId:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/CopyShareFilesRequest;->shareRegion:Ljava/lang/String;

    return-object p0
.end method
