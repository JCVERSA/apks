.class public interface abstract Lgu9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0015\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\'\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0006H\'\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00022\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u000bH\'\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lgu9;",
        "",
        "Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;",
        "c",
        "()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;",
        "request",
        "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;",
        "b",
        "(Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
        "Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;",
        "Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;",
        "a",
        "(Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;",
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


# virtual methods
.method public abstract a(Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .param p1    # Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceRequest;",
            ")",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "Lcom/transsion/cloud_drive/base/api/model/ReceiveFreeSpaceResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lzu7;
        value = "/os-cloud-space/app/space/free/receive"
    .end annotation
.end method

.method public abstract b(Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;)Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .param p1    # Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;
        .annotation runtime Lgg0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceRequest;",
            ")",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "Lcom/transsion/cloud_drive/base/api/model/FreeSpaceResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lzu7;
        value = "/os-cloud-space/app/space/free/get"
    .end annotation
.end method

.method public abstract c()Lcom/transsion/cloud_drive/base/network/response/ApiResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/cloud_drive/base/network/response/ApiResponse<",
            "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;",
            ">;"
        }
    .end annotation

    .annotation runtime Lzu7;
        value = "/os-cloud-space/app/space/statistics"
    .end annotation
.end method
