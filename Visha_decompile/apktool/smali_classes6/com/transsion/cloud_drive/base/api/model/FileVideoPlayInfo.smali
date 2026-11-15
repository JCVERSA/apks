.class public final Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR*\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;",
        "",
        "()V",
        "category",
        "",
        "getCategory$annotations",
        "getCategory",
        "()Ljava/lang/String;",
        "setCategory",
        "(Ljava/lang/String;)V",
        "templateList",
        "",
        "Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;",
        "getTemplateList$annotations",
        "getTemplateList",
        "()Ljava/util/List;",
        "setTemplateList",
        "(Ljava/util/List;)V",
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
.field private category:Ljava/lang/String;

.field private templateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->category:Ljava/lang/String;

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->templateList:Ljava/util/List;

    return-void
.end method

.method public static synthetic getCategory$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "category"
    .end annotation

    return-void
.end method

.method public static synthetic getTemplateList$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "quick_video_list"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemplateList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->templateList:Ljava/util/List;

    return-object p0
.end method

.method public final setCategory(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public final setTemplateList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfo;->templateList:Ljava/util/List;

    return-void
.end method
