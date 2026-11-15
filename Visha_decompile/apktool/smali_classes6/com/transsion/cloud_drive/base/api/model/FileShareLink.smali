.class public final Lcom/transsion/cloud_drive/base/api/model/FileShareLink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u00080\u0018\u00002\u00020\u0001B\u00a3\u0001\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0003\u0012\u000e\u0008\u0003\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u0012\u0008\u0008\u0003\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0003\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0003\u0010\u0012\u001a\u00020\u0010\u0012\u0008\u0008\u0003\u0010\u0013\u001a\u00020\u0010\u0012\u0008\u0008\u0003\u0010\u0014\u001a\u00020\u0010\u0012\u0008\u0008\u0003\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0016R\u0011\u0010\u0014\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001f\u0010\u001b\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R$\u0010$\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008%\u0010\u001b\u001a\u0004\u0008&\u0010!\"\u0004\u0008\'\u0010#R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010!R\u0011\u0010\u0012\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u0018R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001dR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R$\u0010/\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00080\u0010\u001b\u001a\u0004\u00081\u0010,\"\u0004\u00082\u00103R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u0018R\u0011\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010!R\u0011\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010!R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010!R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010!R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010!R\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010!R\u001e\u0010<\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008=\u0010\u001b\u001a\u0004\u0008>\u0010\u001dR\u0011\u0010\u0013\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010\u0018\u00a8\u0006@"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/FileShareLink;",
        "",
        "shareId",
        "",
        "shareUrl",
        "sharePwd",
        "shareName",
        "fileIds",
        "",
        "description",
        "expired",
        "",
        "expiration",
        "Ljava/time/LocalDateTime;",
        "status",
        "previewCount",
        "",
        "saveCount",
        "downloadCount",
        "videoPreviewCount",
        "accessCount",
        "region",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/time/LocalDateTime;Ljava/lang/String;IIIIILjava/lang/String;)V",
        "getAccessCount",
        "()I",
        "createTime",
        "getCreateTime$annotations",
        "()V",
        "getCreateTime",
        "()Ljava/time/LocalDateTime;",
        "creatorId",
        "getCreatorId$annotations",
        "getCreatorId",
        "()Ljava/lang/String;",
        "setCreatorId",
        "(Ljava/lang/String;)V",
        "creatorName",
        "getCreatorName$annotations",
        "getCreatorName",
        "setCreatorName",
        "getDescription",
        "getDownloadCount",
        "getExpiration",
        "getExpired",
        "()Z",
        "getFileIds",
        "()Ljava/util/List;",
        "hasPassword",
        "getHasPassword$annotations",
        "getHasPassword",
        "setHasPassword",
        "(Z)V",
        "getPreviewCount",
        "getRegion",
        "getSaveCount",
        "getShareId",
        "getShareName",
        "getSharePwd",
        "getShareUrl",
        "getStatus",
        "updateTime",
        "getUpdateTime$annotations",
        "getUpdateTime",
        "getVideoPreviewCount",
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
.field private final accessCount:I

.field private final createTime:Ljava/time/LocalDateTime;

.field private creatorId:Ljava/lang/String;

.field private creatorName:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final downloadCount:I

.field private final expiration:Ljava/time/LocalDateTime;

.field private final expired:Z

.field private final fileIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasPassword:Z

.field private final previewCount:I

.field private final region:Ljava/lang/String;

.field private final saveCount:I

.field private final shareId:Ljava/lang/String;

.field private final shareName:Ljava/lang/String;

.field private final sharePwd:Ljava/lang/String;

.field private final shareUrl:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final updateTime:Ljava/time/LocalDateTime;

.field private final videoPreviewCount:I


# direct methods
.method public constructor <init>()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/time/LocalDateTime;Ljava/lang/String;IIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/time/LocalDateTime;Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_url"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_pwd"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_name"
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation runtime Lv95;
            name = "file_id_list"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "description"
        .end annotation
    .end param
    .param p7    # Z
        .annotation runtime Lv95;
            name = "expired"
        .end annotation
    .end param
    .param p8    # Ljava/time/LocalDateTime;
        .annotation runtime Lv95;
            name = "expiration"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "status"
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lv95;
            name = "preview_count"
        .end annotation
    .end param
    .param p11    # I
        .annotation runtime Lv95;
            name = "save_count"
        .end annotation
    .end param
    .param p12    # I
        .annotation runtime Lv95;
            name = "download_count"
        .end annotation
    .end param
    .param p13    # I
        .annotation runtime Lv95;
            name = "video_preview_count"
        .end annotation
    .end param
    .param p14    # I
        .annotation runtime Lv95;
            name = "access_count"
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "region"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/time/LocalDateTime;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p15

    const-string v9, "shareId"

    invoke-static {p1, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "shareUrl"

    invoke-static {p2, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "sharePwd"

    invoke-static {p3, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "shareName"

    invoke-static {p4, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "fileIds"

    invoke-static {p5, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "description"

    invoke-static {v6, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "status"

    invoke-static {v7, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "region"

    invoke-static {v8, v9}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->shareId:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->shareUrl:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->sharePwd:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->shareName:Ljava/lang/String;

    .line 7
    iput-object v5, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->fileIds:Ljava/util/List;

    .line 8
    iput-object v6, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->description:Ljava/lang/String;

    move/from16 v1, p7

    .line 9
    iput-boolean v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->expired:Z

    move-object/from16 v1, p8

    .line 10
    iput-object v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->expiration:Ljava/time/LocalDateTime;

    .line 11
    iput-object v7, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->status:Ljava/lang/String;

    move/from16 v1, p10

    .line 12
    iput v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->previewCount:I

    move/from16 v1, p11

    .line 13
    iput v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->saveCount:I

    move/from16 v1, p12

    .line 14
    iput v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->downloadCount:I

    move/from16 v1, p13

    .line 15
    iput v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->videoPreviewCount:I

    move/from16 v1, p14

    .line 16
    iput v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->accessCount:I

    .line 17
    iput-object v8, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->region:Ljava/lang/String;

    .line 18
    const-string v1, ""

    iput-object v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->creatorId:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->creatorName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/time/LocalDateTime;Ljava/lang/String;IIIIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    .line 20
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 21
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    .line 22
    const-string v11, "enabled"

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move/from16 v15, p13

    :goto_c
    and-int/lit16 v9, v0, 0x2000

    if-eqz v9, :cond_d

    const/4 v9, 0x0

    goto :goto_d

    :cond_d
    move/from16 v9, p14

    :goto_d
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move/from16 p10, v12

    move/from16 p11, v13

    move/from16 p12, v14

    move/from16 p13, v15

    move/from16 p14, v9

    move-object/from16 p15, v2

    .line 23
    invoke-direct/range {p0 .. p15}, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLjava/time/LocalDateTime;Ljava/lang/String;IIIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic getCreateTime$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "created_at"
    .end annotation

    return-void
.end method

.method public static synthetic getCreatorId$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "creator_id"
    .end annotation

    return-void
.end method

.method public static synthetic getCreatorName$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "creator_name"
    .end annotation

    return-void
.end method

.method public static synthetic getHasPassword$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "has_pwd"
    .end annotation

    return-void
.end method

.method public static synthetic getUpdateTime$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "updated_at"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAccessCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->accessCount:I

    return p0
.end method

.method public final getCreateTime()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->createTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getCreatorId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->creatorId:Ljava/lang/String;

    return-object p0
.end method

.method public final getCreatorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->creatorName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getDownloadCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->downloadCount:I

    return p0
.end method

.method public final getExpiration()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->expiration:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getExpired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->expired:Z

    return p0
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

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->fileIds:Ljava/util/List;

    return-object p0
.end method

.method public final getHasPassword()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->hasPassword:Z

    return p0
.end method

.method public final getPreviewCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->previewCount:I

    return p0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->region:Ljava/lang/String;

    return-object p0
.end method

.method public final getSaveCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->saveCount:I

    return p0
.end method

.method public final getShareId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->shareId:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->shareName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSharePwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->sharePwd:Ljava/lang/String;

    return-object p0
.end method

.method public final getShareUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->shareUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->status:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdateTime()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->updateTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getVideoPreviewCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->videoPreviewCount:I

    return p0
.end method

.method public final setCreatorId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->creatorId:Ljava/lang/String;

    return-void
.end method

.method public final setCreatorName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->creatorName:Ljava/lang/String;

    return-void
.end method

.method public final setHasPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileShareLink;->hasPassword:Z

    return-void
.end method
