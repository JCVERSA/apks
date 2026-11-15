.class public Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u00087\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u00a7\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0008\u0010=\u001a\u00020\u0000H\u0016J\u0006\u0010>\u001a\u00020?R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\"\u0010\u001a\"\u0004\u0008#\u0010\u001cR\u001a\u0010\t\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001f\"\u0004\u0008)\u0010!R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001f\"\u0004\u0008+\u0010!R\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0016\"\u0004\u0008-\u0010\u0018R\u001e\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00102\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u001f\"\u0004\u00084\u0010!R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u001f\"\u0004\u00086\u0010!R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u001f\"\u0004\u00088\u0010!R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\u001f\"\u0004\u0008:\u0010!R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u001f\"\u0004\u0008<\u0010!\u00a8\u0006@"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;",
        "Ljava/io/Serializable;",
        "dataType",
        "",
        "size",
        "",
        "duration",
        "",
        "userId",
        "playDuration",
        "sourceId",
        "title",
        "status",
        "watchStatus",
        "mediaLibraryId",
        "virtualPersonName",
        "createAt",
        "cover",
        "updateTime",
        "<init>",
        "(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getDataType",
        "()I",
        "setDataType",
        "(I)V",
        "getSize",
        "()Ljava/lang/Long;",
        "setSize",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getDuration",
        "()Ljava/lang/String;",
        "setDuration",
        "(Ljava/lang/String;)V",
        "getUserId",
        "setUserId",
        "getPlayDuration",
        "()J",
        "setPlayDuration",
        "(J)V",
        "getSourceId",
        "setSourceId",
        "getTitle",
        "setTitle",
        "getStatus",
        "setStatus",
        "getWatchStatus",
        "()Ljava/lang/Integer;",
        "setWatchStatus",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getMediaLibraryId",
        "setMediaLibraryId",
        "getVirtualPersonName",
        "setVirtualPersonName",
        "getCreateAt",
        "setCreateAt",
        "getCover",
        "setCover",
        "getUpdateTime",
        "setUpdateTime",
        "copy",
        "toVideoCloudData",
        "Lcom/transsion/dbdata/beans/VideoCloudData;",
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

.field private createAt:Ljava/lang/String;

.field private dataType:I

.field private duration:Ljava/lang/String;

.field private mediaLibraryId:Ljava/lang/String;

.field private playDuration:J

.field private size:Ljava/lang/Long;

.field private sourceId:Ljava/lang/String;

.field private status:I

.field private title:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;

.field private userId:Ljava/lang/Long;

.field private virtualPersonName:Ljava/lang/String;

.field private watchStatus:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    const/16 v16, 0x3fff

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p7

    const-string v2, "sourceId"

    invoke-static {p7, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    .line 3
    iput v2, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->dataType:I

    move-object v2, p2

    .line 4
    iput-object v2, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->size:Ljava/lang/Long;

    move-object v2, p3

    .line 5
    iput-object v2, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->duration:Ljava/lang/String;

    move-object v2, p4

    .line 6
    iput-object v2, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->userId:Ljava/lang/Long;

    move-wide v2, p5

    .line 7
    iput-wide v2, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->playDuration:J

    .line 8
    iput-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->sourceId:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->title:Ljava/lang/String;

    move v1, p9

    .line 10
    iput v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->status:I

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->watchStatus:Ljava/lang/Integer;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->mediaLibraryId:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 13
    iput-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->virtualPersonName:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->createAt:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->cover:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 18
    const-string v6, ""

    if-eqz v5, :cond_2

    move-object v5, v6

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    .line 19
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v3, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v6

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v6

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, -0x1

    .line 20
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    move-object v12, v6

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    move-object v13, v6

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

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
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    move-object/from16 v6, p15

    :goto_d
    move/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v5

    move-object/from16 p4, v7

    move-wide/from16 p5, v3

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v6

    .line 21
    invoke-direct/range {p0 .. p15}, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;

    iget v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->dataType:I

    iget-object v2, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->size:Ljava/lang/Long;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->duration:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->userId:Ljava/lang/Long;

    iget-wide v5, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->playDuration:J

    iget-object v7, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->sourceId:Ljava/lang/String;

    iget-object v8, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->title:Ljava/lang/String;

    iget v9, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->status:I

    iget-object v10, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->watchStatus:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->mediaLibraryId:Ljava/lang/String;

    iget-object v12, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->virtualPersonName:Ljava/lang/String;

    iget-object v13, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->createAt:Ljava/lang/String;

    iget-object v14, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->cover:Ljava/lang/String;

    iget-object v15, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->updateTime:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v16
.end method

.method public final getCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final getCreateAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->createAt:Ljava/lang/String;

    return-object p0
.end method

.method public final getDataType()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->dataType:I

    return p0
.end method

.method public final getDuration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->duration:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaLibraryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->mediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public final getPlayDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->playDuration:J

    return-wide v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->size:Ljava/lang/Long;

    return-object p0
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->status:I

    return p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUpdateTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->updateTime:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->userId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getVirtualPersonName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->virtualPersonName:Ljava/lang/String;

    return-object p0
.end method

.method public final getWatchStatus()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->watchStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->cover:Ljava/lang/String;

    return-void
.end method

.method public final setCreateAt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->createAt:Ljava/lang/String;

    return-void
.end method

.method public final setDataType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->dataType:I

    return-void
.end method

.method public final setDuration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->duration:Ljava/lang/String;

    return-void
.end method

.method public final setMediaLibraryId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->mediaLibraryId:Ljava/lang/String;

    return-void
.end method

.method public final setPlayDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->playDuration:J

    return-void
.end method

.method public final setSize(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->size:Ljava/lang/Long;

    return-void
.end method

.method public final setSourceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->sourceId:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->status:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUpdateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->updateTime:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->userId:Ljava/lang/Long;

    return-void
.end method

.method public final setVirtualPersonName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->virtualPersonName:Ljava/lang/String;

    return-void
.end method

.method public final setWatchStatus(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->watchStatus:Ljava/lang/Integer;

    return-void
.end method

.method public final toVideoCloudData()Lcom/transsion/dbdata/beans/VideoCloudData;
    .locals 24

    move-object/from16 v0, p0

    new-instance v23, Lcom/transsion/dbdata/beans/VideoCloudData;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->userId:Ljava/lang/Long;

    iget-object v3, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->sourceId:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->title:Ljava/lang/String;

    iget-object v5, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->size:Ljava/lang/Long;

    iget-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->duration:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-long v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v9, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->watchStatus:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->createAt:Ljava/lang/String;

    iget-object v11, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->virtualPersonName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->playDuration:J

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->dataType:I

    move/from16 v19, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->mediaLibraryId:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->cover:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v0, v0, Lcom/transsion/dbdata/beans/mimedia/RecentVideoShowData;->updateTime:Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, v23

    invoke-direct/range {v1 .. v22}, Lcom/transsion/dbdata/beans/VideoCloudData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v23
.end method
