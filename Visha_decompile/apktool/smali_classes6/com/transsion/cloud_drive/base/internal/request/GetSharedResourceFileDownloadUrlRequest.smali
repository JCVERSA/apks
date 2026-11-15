.class public final Lcom/transsion/cloud_drive/base/internal/request/GetSharedResourceFileDownloadUrlRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/GetSharedResourceFileDownloadUrlRequest;",
        "",
        "fileId",
        "",
        "expireSeconds",
        "",
        "(Ljava/lang/String;J)V",
        "getExpireSeconds",
        "()J",
        "getFileId",
        "()Ljava/lang/String;",
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
.field private final expireSeconds:J
    .annotation runtime Lv95;
        name = "expire_sec"
    .end annotation
.end field

.field private final fileId:Ljava/lang/String;
    .annotation runtime Lv95;
        name = "file_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/GetSharedResourceFileDownloadUrlRequest;->fileId:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/transsion/cloud_drive/base/internal/request/GetSharedResourceFileDownloadUrlRequest;->expireSeconds:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/internal/request/GetSharedResourceFileDownloadUrlRequest;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final getExpireSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/internal/request/GetSharedResourceFileDownloadUrlRequest;->expireSeconds:J

    return-wide v0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/GetSharedResourceFileDownloadUrlRequest;->fileId:Ljava/lang/String;

    return-object p0
.end method
