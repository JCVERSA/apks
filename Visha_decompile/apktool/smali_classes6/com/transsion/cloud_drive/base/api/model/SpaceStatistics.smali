.class public final Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lba5;
    generateAdapter = true
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001BM\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0008\u0003\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\t\u001a\u00020\u0003\u0012\u000e\u0008\u0003\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006\u00a2\u0006\u0002\u0010\u000cR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;",
        "",
        "totalSize",
        "",
        "usedSize",
        "appInfoList",
        "",
        "Lcom/transsion/cloud_drive/base/api/model/AppInfo;",
        "tempSpaceTotalSize",
        "tempSpaceUsedSize",
        "spaceTypeList",
        "Lcom/transsion/cloud_drive/base/api/model/SpaceType;",
        "(JJLjava/util/List;JJLjava/util/List;)V",
        "getAppInfoList",
        "()Ljava/util/List;",
        "getSpaceTypeList",
        "getTempSpaceTotalSize",
        "()J",
        "getTempSpaceUsedSize",
        "getTotalSize",
        "getUsedSize",
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
.field private final appInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final spaceTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/SpaceType;",
            ">;"
        }
    .end annotation
.end field

.field private final tempSpaceTotalSize:J

.field private final tempSpaceUsedSize:J

.field private final totalSize:J

.field private final usedSize:J


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    const/16 v11, 0x3f

    const/4 v12, 0x0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;-><init>(JJLjava/util/List;JJLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JJLjava/util/List;JJLjava/util/List;)V
    .locals 1
    .param p1    # J
        .annotation runtime Lv95;
            name = "cloudSpaceTotalSize"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lv95;
            name = "cloudSpaceUsedSize"
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation runtime Lv95;
            name = "appInfoList"
        .end annotation
    .end param
    .param p6    # J
        .annotation runtime Lv95;
            name = "tempSpaceTotalSize"
        .end annotation
    .end param
    .param p8    # J
        .annotation runtime Lv95;
            name = "tempSpaceUsedSize"
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation runtime Lv95;
            name = "spaceTypeList"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/AppInfo;",
            ">;JJ",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/SpaceType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appInfoList"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spaceTypeList"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->totalSize:J

    .line 4
    iput-wide p3, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->usedSize:J

    .line 5
    iput-object p5, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->appInfoList:Ljava/util/List;

    .line 6
    iput-wide p6, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->tempSpaceTotalSize:J

    .line 7
    iput-wide p8, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->tempSpaceUsedSize:J

    .line 8
    iput-object p10, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->spaceTypeList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/util/List;JJLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p12, p11, 0x1

    const-wide/16 v0, 0x0

    if-eqz p12, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-wide p3, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    .line 9
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p5

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move-wide p6, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-wide p8, v0

    :cond_4
    and-int/lit8 p11, p11, 0x20

    if-eqz p11, :cond_5

    .line 10
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p10

    .line 11
    :cond_5
    invoke-direct/range {p0 .. p10}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;-><init>(JJLjava/util/List;JJLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getAppInfoList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->appInfoList:Ljava/util/List;

    return-object p0
.end method

.method public final getSpaceTypeList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/SpaceType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->spaceTypeList:Ljava/util/List;

    return-object p0
.end method

.method public final getTempSpaceTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->tempSpaceTotalSize:J

    return-wide v0
.end method

.method public final getTempSpaceUsedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->tempSpaceUsedSize:J

    return-wide v0
.end method

.method public final getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->totalSize:J

    return-wide v0
.end method

.method public final getUsedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->usedSize:J

    return-wide v0
.end method
