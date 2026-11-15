.class public final Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007R*\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;",
        "",
        "fileId",
        "",
        "width",
        "",
        "height",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "fields",
        "",
        "getFields$annotations",
        "()V",
        "getFields",
        "()Ljava/util/List;",
        "setFields",
        "(Ljava/util/List;)V",
        "getFileId",
        "()Ljava/lang/String;",
        "getHeight",
        "()Ljava/lang/Integer;",
        "setHeight",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getWidth",
        "setWidth",
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
.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileId:Ljava/lang/String;

.field private height:Ljava/lang/Integer;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "file_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lv95;
            name = "width"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lv95;
            name = "height"
        .end annotation
    .end param

    const-string v0, "fileId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->fileId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->width:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->height:Ljava/lang/Integer;

    .line 5
    const-string p1, "name_path"

    .line 6
    const-string p2, "thumbnail"

    const-string p3, "url"

    const-string v0, "id_path"

    const-string v1, "video_metadata"

    filled-new-array {p3, v0, v1, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->fields:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic getFields$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "fields"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getFields()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->fields:Ljava/util/List;

    return-object p0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->height:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->width:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setFields(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->fields:Ljava/util/List;

    return-void
.end method

.method public final setHeight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->height:Ljava/lang/Integer;

    return-void
.end method

.method public final setWidth(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/GetFileInfoRequest;->width:Ljava/lang/Integer;

    return-void
.end method
