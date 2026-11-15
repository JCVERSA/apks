.class public Lcom/transsion/dbdata/beans/VideoCloudData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u00087\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u00f1\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010K\u001a\u00020LH\u0016J\u0010\u0010M\u001a\u00020L2\u0006\u0010N\u001a\u00020\u000cH\u0016J\u0013\u0010O\u001a\u00020\u00142\u0008\u0010P\u001a\u0004\u0018\u00010QH\u0096\u0002J\u0008\u0010R\u001a\u00020\u0000H\u0016J\u0006\u0010S\u001a\u00020TJ\u0008\u0010U\u001a\u00020\u0005H\u0016R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010 \"\u0004\u0008$\u0010\"R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\u0008%\u0010\u001d\"\u0004\u0008&\u0010\'R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001e\u001a\u0004\u0008(\u0010\u001d\"\u0004\u0008)\u0010\'R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008*\u0010\u001dR\u0015\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u001e\u001a\u0004\u0008+\u0010\u001dR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00100\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010 R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010 R\u001a\u0010\u000f\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010 \"\u0004\u00088\u0010\"R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010 \"\u0004\u0008:\u0010\"R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010 \"\u0004\u0008<\u0010\"R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010@\u001a\u0004\u0008\u0013\u0010=\"\u0004\u0008>\u0010?R\u0015\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\n\n\u0002\u0010@\u001a\u0004\u0008\u0015\u0010=R\u001a\u0010\u0016\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010 \"\u0004\u0008F\u0010\"R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010 \"\u0004\u0008H\u0010\"R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010 \"\u0004\u0008J\u0010\"\u00a8\u0006V"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
        "Ljava/io/Serializable;",
        "id",
        "",
        "fileId",
        "",
        "fileName",
        "size",
        "duration",
        "height",
        "width",
        "watchStatus",
        "",
        "createAt",
        "sharerNickname",
        "playDuration",
        "fileCoverPath",
        "previewUrl",
        "parentFileId",
        "isExitLocal",
        "",
        "isRecentData",
        "dataType",
        "mediaLibraryId",
        "cover",
        "updateTime",
        "<init>",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getFileId",
        "()Ljava/lang/String;",
        "setFileId",
        "(Ljava/lang/String;)V",
        "getFileName",
        "setFileName",
        "getSize",
        "setSize",
        "(Ljava/lang/Long;)V",
        "getDuration",
        "setDuration",
        "getHeight",
        "getWidth",
        "getWatchStatus",
        "()Ljava/lang/Integer;",
        "setWatchStatus",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getCreateAt",
        "getSharerNickname",
        "getPlayDuration",
        "()J",
        "setPlayDuration",
        "(J)V",
        "getFileCoverPath",
        "setFileCoverPath",
        "getPreviewUrl",
        "setPreviewUrl",
        "getParentFileId",
        "setParentFileId",
        "()Ljava/lang/Boolean;",
        "setExitLocal",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getDataType",
        "()I",
        "setDataType",
        "(I)V",
        "getMediaLibraryId",
        "setMediaLibraryId",
        "getCover",
        "setCover",
        "getUpdateTime",
        "setUpdateTime",
        "toPlayVideoData",
        "Lcom/transsion/dbdata/beans/media/PlayVideoData;",
        "toPlayViewDataForMediaVideo",
        "listFlag",
        "equals",
        "other",
        "",
        "copy",
        "toMediaItem",
        "Lcom/transsion/dbdata/beans/media/MediaItem;",
        "toString",
        "dbdata_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cover:Ljava/lang/String;

.field private final createAt:Ljava/lang/String;

.field private dataType:I

.field private duration:Ljava/lang/Long;

.field private fileCoverPath:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private final height:Ljava/lang/Long;

.field private final id:Ljava/lang/Long;

.field private isExitLocal:Ljava/lang/Boolean;

.field private final isRecentData:Ljava/lang/Boolean;

.field private mediaLibraryId:Ljava/lang/String;

.field private parentFileId:Ljava/lang/String;

.field private playDuration:J

.field private previewUrl:Ljava/lang/String;

.field private final sharerNickname:Ljava/lang/String;

.field private size:Ljava/lang/Long;

.field private updateTime:Ljava/lang/String;

.field private watchStatus:Ljava/lang/Integer;

.field private final width:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    const v22, 0xfffff

    const/16 v23, 0x0

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

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v23}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object v0, p0

    move-object v1, p2

    const-string v2, "fileId"

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->id:Ljava/lang/Long;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileName:Ljava/lang/String;

    move-object v1, p4

    .line 3
    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->size:Ljava/lang/Long;

    move-object v1, p5

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->duration:Ljava/lang/Long;

    move-object v1, p6

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->height:Ljava/lang/Long;

    move-object v1, p7

    .line 4
    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->width:Ljava/lang/Long;

    move-object v1, p8

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->watchStatus:Ljava/lang/Integer;

    move-object v1, p9

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->createAt:Ljava/lang/String;

    move-object v1, p10

    .line 5
    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->sharerNickname:Ljava/lang/String;

    move-wide v1, p11

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->playDuration:J

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileCoverPath:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 6
    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->previewUrl:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->parentFileId:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->isExitLocal:Ljava/lang/Boolean;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->isRecentData:Ljava/lang/Boolean;

    move/from16 v1, p18

    .line 7
    iput v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->dataType:I

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->mediaLibraryId:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->cover:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v5, v0, 0x2

    const-string v6, ""

    if-eqz v5, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_2

    move-object v7, v6

    goto :goto_2

    :cond_2
    move-object/from16 v7, p3

    :goto_2
    and-int/lit8 v8, v0, 0x8

    if-eqz v8, :cond_3

    move-object v8, v4

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    move-object v9, v4

    goto :goto_4

    :cond_4
    move-object/from16 v9, p5

    :goto_4
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_5

    move-object v10, v4

    goto :goto_5

    :cond_5
    move-object/from16 v10, p6

    :goto_5
    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    move-object/from16 v4, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    const/4 v11, -0x1

    .line 9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    move-object v12, v6

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    move-object v13, v6

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    goto :goto_a

    :cond_a
    move-wide/from16 v2, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    move-object v14, v6

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    move-object v15, v6

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p1, v6

    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_d

    move-object/from16 v6, p1

    goto :goto_d

    :cond_d
    move-object/from16 v6, p15

    :goto_d
    move-object/from16 p15, v6

    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    .line 10
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v6, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v16, p17

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    goto :goto_10

    :cond_10
    move/from16 v17, p18

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    move-object/from16 v18, p1

    goto :goto_11

    :cond_11
    move-object/from16 v18, p19

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    move-object/from16 v19, p1

    goto :goto_12

    :cond_12
    move-object/from16 v19, p20

    :goto_12
    const/high16 v20, 0x80000

    and-int v0, v0, v20

    if-eqz v0, :cond_13

    move-object/from16 v0, p1

    goto :goto_13

    :cond_13
    move-object/from16 v0, p21

    :goto_13
    move-object/from16 p1, v1

    move-object/from16 p2, v5

    move-object/from16 p3, v7

    move-object/from16 p4, v8

    move-object/from16 p5, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v4

    move-object/from16 p8, v11

    move-object/from16 p9, v12

    move-object/from16 p10, v13

    move-wide/from16 p11, v2

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p16, v6

    move-object/from16 p17, v16

    move/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v0

    .line 11
    invoke-direct/range {p0 .. p21}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/transsion/dbdata/beans/VideoCloudData;
    .locals 27

    move-object/from16 v0, p0

    new-instance v25, Lcom/transsion/dbdata/beans/VideoCloudData;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->id:Ljava/lang/Long;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileName:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->size:Ljava/lang/Long;

    iget-object v6, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->duration:Ljava/lang/Long;

    iget-object v7, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->height:Ljava/lang/Long;

    iget-object v8, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->width:Ljava/lang/Long;

    iget-object v9, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->watchStatus:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->createAt:Ljava/lang/String;

    iget-object v11, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->sharerNickname:Ljava/lang/String;

    iget-wide v12, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->playDuration:J

    iget-object v14, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileCoverPath:Ljava/lang/String;

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->previewUrl:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->parentFileId:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->isExitLocal:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->isRecentData:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->dataType:I

    move/from16 v19, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->mediaLibraryId:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v0, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->cover:Ljava/lang/String;

    move-object/from16 v21, v0

    const/high16 v23, 0x80000

    const/16 v24, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, v26

    invoke-direct/range {v1 .. v24}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v25
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    check-cast p1, Lcom/transsion/dbdata/beans/VideoCloudData;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final getCreateAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->createAt:Ljava/lang/String;

    return-object p0
.end method

.method public final getDataType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->dataType:I

    return p0
.end method

.method public final getDuration()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->duration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getFileCoverPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileCoverPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getHeight()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->height:Ljava/lang/Long;

    return-object p0
.end method

.method public final getId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->id:Ljava/lang/Long;

    return-object p0
.end method

.method public final getMediaLibraryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->mediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentFileId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->parentFileId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlayDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->playDuration:J

    return-wide v0
.end method

.method public final getPreviewUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->previewUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getSharerNickname()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->sharerNickname:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->size:Ljava/lang/Long;

    return-object p0
.end method

.method public final getUpdateTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->updateTime:Ljava/lang/String;

    return-object p0
.end method

.method public final getWatchStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->watchStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getWidth()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->width:Ljava/lang/Long;

    return-object p0
.end method

.method public final isExitLocal()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->isExitLocal:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isRecentData()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->isRecentData:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->cover:Ljava/lang/String;

    return-void
.end method

.method public final setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->dataType:I

    return-void
.end method

.method public final setDuration(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->duration:Ljava/lang/Long;

    return-void
.end method

.method public final setExitLocal(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->isExitLocal:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFileCoverPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileCoverPath:Ljava/lang/String;

    return-void
.end method

.method public final setFileId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setMediaLibraryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->mediaLibraryId:Ljava/lang/String;

    return-void
.end method

.method public final setParentFileId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->parentFileId:Ljava/lang/String;

    return-void
.end method

.method public final setPlayDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->playDuration:J

    return-void
.end method

.method public final setPreviewUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public final setSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->size:Ljava/lang/Long;

    return-void
.end method

.method public final setUpdateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public final setWatchStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->watchStatus:Ljava/lang/Integer;

    return-void
.end method

.method public final toMediaItem()Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 6

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->size:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iput-wide v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->duration:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    iput-wide v4, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->height:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide v4, v2

    :goto_2
    long-to-int v1, v4

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->height:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->width:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_3
    long-to-int v1, v2

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->width:I

    iget-wide v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->playDuration:J

    long-to-int v1, v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->playPosition:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->previewUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    :try_start_0
    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->createAt:Ljava/lang/String;

    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    const/16 p0, 0x3e8

    int-to-long v3, p0

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toMediaItem Instant.parse(mCreateAt).toEpochMilli() error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->O([Ljava/lang/Object;)V

    :goto_3
    return-object v0
.end method

.method public toPlayVideoData()Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 7

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->width:Ljava/lang/Long;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    long-to-int v1, v5

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoWidth:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->height:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_2

    move-object v2, v1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_3
    move-wide v1, v3

    :goto_2
    long-to-int v1, v1

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->videoHeight:I

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->duration:Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_4
    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    iget-object v1, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    const/16 v1, 0x32

    iput v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->previewUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "previewUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/LogUtils;->v([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toPlayViewDataForMediaVideo(I)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setNeedRecordPlayInfo(Z)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->mediaLibraryId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setMediaLibraryId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoId(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->cover:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setCoverUri(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->setVideoTitle(Ljava/lang/String;)Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo$Builder;->build()Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayVideoData;->builder()Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setMiMediaInfo(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setListFlag(I)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setIsFromNet(Z)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;->getVideoTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setDisplayName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->setPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/PlayVideoData$Builder;->build()Lcom/transsion/dbdata/beans/media/PlayVideoData;

    move-result-object p0

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->id:Ljava/lang/Long;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileId:Ljava/lang/String;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileName:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->size:Ljava/lang/Long;

    iget-object v5, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->duration:Ljava/lang/Long;

    iget-object v6, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->height:Ljava/lang/Long;

    iget-object v7, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->width:Ljava/lang/Long;

    iget-object v8, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->watchStatus:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->createAt:Ljava/lang/String;

    iget-object v10, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->sharerNickname:Ljava/lang/String;

    iget-wide v11, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->playDuration:J

    iget-object v13, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->fileCoverPath:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->previewUrl:Ljava/lang/String;

    iget-object v15, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->parentFileId:Ljava/lang/String;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/VideoCloudData;->isExitLocal:Ljava/lang/Boolean;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "VideoCloudData(id="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watchStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sharerNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fileCoverPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previewUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parentFileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isExitLocal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
