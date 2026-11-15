.class public final Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B?\u0012\u000e\u0008\u0001\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;",
        "",
        "fileIds",
        "",
        "",
        "sharePwd",
        "shareName",
        "description",
        "expiration",
        "Ljava/time/LocalDateTime;",
        "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V",
        "getDescription",
        "()Ljava/lang/String;",
        "getExpiration",
        "()Ljava/time/LocalDateTime;",
        "getFileIds",
        "()Ljava/util/List;",
        "getShareName",
        "getSharePwd",
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
.field private final description:Ljava/lang/String;

.field private final expiration:Ljava/time/LocalDateTime;

.field private final fileIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final shareName:Ljava/lang/String;

.field private final sharePwd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation runtime Lv95;
            name = "file_id_list"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_pwd"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_name"
        .end annotation
    .end param
    .param p5    # Ljava/time/LocalDateTime;
        .annotation runtime Lv95;
            name = "expiration"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/time/LocalDateTime;",
            ")V"
        }
    .end annotation

    const-string v0, "fileIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharePwd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->fileIds:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->sharePwd:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->shareName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->description:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->expiration:Ljava/time/LocalDateTime;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    .line 7
    const-string v0, ""

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 p5, 0x0

    :cond_3
    move-object v6, p5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpiration()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->expiration:Ljava/time/LocalDateTime;

    return-object p0
.end method

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

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->fileIds:Ljava/util/List;

    return-object p0
.end method

.method public final getShareName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->shareName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSharePwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/CreateFileShareLinkRequest;->sharePwd:Ljava/lang/String;

    return-object p0
.end method
