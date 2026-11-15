.class public final Lcom/transsion/dbdata/beans/cloud/SearchResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u0003H\u0016J\u0010\u0010-\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010.\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010/\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u00100\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u00107\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u00108\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u00109\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u00aa\u0001\u0010:\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001\u00a2\u0006\u0002\u0010;J\u0013\u0010<\u001a\u00020=2\u0008\u0010>\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010?\u001a\u00020\u0003H\u00d6\u0001J\t\u0010@\u001a\u00020\u0008H\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0016\u001a\u0004\u0008\u0014\u0010\u0015R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0018R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001c\"\u0004\u0008\u001f\u0010 R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001cR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001cR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001c\"\u0004\u0008%\u0010 R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008&\u0010\u0018R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\'\u0010\u0018R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001c\"\u0004\u0008)\u0010 \u00a8\u0006A"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "",
        "dataType",
        "",
        "size",
        "",
        "duration",
        "userId",
        "",
        "sourceId",
        "title",
        "mediaLibraryId",
        "mediaLibraryName",
        "createAt",
        "cover",
        "width",
        "height",
        "previewUrl",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V",
        "getDataType",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSize",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getDuration",
        "getUserId",
        "()Ljava/lang/String;",
        "getSourceId",
        "getTitle",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getMediaLibraryId",
        "getMediaLibraryName",
        "getCreateAt",
        "getCover",
        "setCover",
        "getWidth",
        "getHeight",
        "getPreviewUrl",
        "setPreviewUrl",
        "toPlayVideoData",
        "Lcom/transsion/dbdata/beans/media/PlayVideoData;",
        "listFlag",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/transsion/dbdata/beans/cloud/SearchResponseData;",
        "equals",
        "",
        "other",
        "hashCode",
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

.field private final dataType:Ljava/lang/Integer;

.field private final duration:Ljava/lang/Long;

.field private final height:Ljava/lang/Long;

.field private final mediaLibraryId:Ljava/lang/String;

.field private final mediaLibraryName:Ljava/lang/String;

.field private previewUrl:Ljava/lang/String;

.field private final size:Ljava/lang/Long;

.field private final sourceId:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private final userId:Ljava/lang/String;

.field private final width:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->dataType:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->size:Ljava/lang/Long;

    iput-object p3, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->duration:Ljava/lang/Long;

    iput-object p4, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->sourceId:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    iput-object p7, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryId:Ljava/lang/String;

    iput-object p8, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryName:Ljava/lang/String;

    iput-object p9, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->createAt:Ljava/lang/String;

    iput-object p10, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->cover:Ljava/lang/String;

    iput-object p11, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->width:Ljava/lang/Long;

    iput-object p12, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->height:Ljava/lang/Long;

    iput-object p13, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/beans/cloud/SearchResponseData;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/dbdata/beans/cloud/SearchResponseData;
    .locals 14

    move-object v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->dataType:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->size:Ljava/lang/Long;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->duration:Ljava/lang/Long;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->userId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->sourceId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->createAt:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->cover:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->width:Ljava/lang/Long;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->height:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->previewUrl:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v1, p13

    :goto_c
    move-object p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v1

    invoke-virtual/range {p0 .. p13}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->copy(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->dataType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->width:Ljava/lang/Long;

    return-object p0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->height:Ljava/lang/Long;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->previewUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->size:Ljava/lang/Long;

    return-object p0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->duration:Ljava/lang/Long;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->createAt:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lcom/transsion/dbdata/beans/cloud/SearchResponseData;
    .locals 15

    new-instance v14, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;-><init>(Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v14
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->dataType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->dataType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->size:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->size:Ljava/lang/Long;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->duration:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->duration:Ljava/lang/Long;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->sourceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->sourceId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryId:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryName:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->createAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->createAt:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->cover:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->cover:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->width:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->width:Ljava/lang/Long;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->height:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->height:Ljava/lang/Long;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->previewUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->previewUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->cover:Ljava/lang/String;

    return-object p0
.end method

.method public final getCreateAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->createAt:Ljava/lang/String;

    return-object p0
.end method

.method public final getDataType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->dataType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getDuration()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->duration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getHeight()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->height:Ljava/lang/Long;

    return-object p0
.end method

.method public final getMediaLibraryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMediaLibraryName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPreviewUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->previewUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->size:Ljava/lang/Long;

    return-object p0
.end method

.method public final getSourceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->width:Ljava/lang/Long;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->dataType:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->size:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->duration:Ljava/lang/Long;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->userId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->sourceId:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryId:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryName:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->createAt:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->cover:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->width:Ljava/lang/Long;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->height:Ljava/lang/Long;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->previewUrl:Ljava/lang/String;

    if-nez p0, :cond_c

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->cover:Ljava/lang/String;

    return-void
.end method

.method public final setPreviewUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->previewUrl:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    return-void
.end method

.method public toPlayVideoData(I)Lcom/transsion/dbdata/beans/media/PlayVideoData;
    .locals 7

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayVideoData;-><init>()V

    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->playTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->width:Ljava/lang/Long;

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

    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->height:Ljava/lang/Long;

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

    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->duration:Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_4
    iput-wide v3, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->duration:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->isFromNet:Z

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->sourceId:Ljava/lang/String;

    iput-object p0, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mKtFileId:Ljava/lang/String;

    iput p1, v0, Lcom/transsion/dbdata/beans/media/PlayVideoData;->listFlag:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->dataType:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->size:Ljava/lang/Long;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->duration:Ljava/lang/Long;

    iget-object v3, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->sourceId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryId:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->mediaLibraryName:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->createAt:Ljava/lang/String;

    iget-object v9, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->cover:Ljava/lang/String;

    iget-object v10, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->width:Ljava/lang/Long;

    iget-object v11, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->height:Ljava/lang/Long;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/cloud/SearchResponseData;->previewUrl:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SearchResponseData(dataType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", userId="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sourceId="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaLibraryId="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaLibraryName="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", createAt="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cover="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", previewUrl="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
