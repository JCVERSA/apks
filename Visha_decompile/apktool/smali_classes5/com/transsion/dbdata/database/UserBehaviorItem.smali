.class public final Lcom/transsion/dbdata/database/UserBehaviorItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/room/Entity;
    indices = {
        .subannotation Landroidx/room/Index;
            name = "idx_user_behavior_media_id"
            unique = true
            value = {
                "media_id"
            }
        .end subannotation
    }
    tableName = "user_behavior"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0002\u0008\u001c\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bo\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001d\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u0010\u0010\u001f\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008!\u0010\u001bJ\u0010\u0010\"\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\"\u0010#J\u0012\u0010$\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0004\u0008$\u0010#J\u0010\u0010%\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008%\u0010 J\u0010\u0010&\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008&\u0010 J\u0010\u0010\'\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\'\u0010 Jz\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0004\u0008(\u0010)J\u0010\u0010*\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008*\u0010#J\u0010\u0010+\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008+\u0010\u0019J\u001a\u0010.\u001a\u00020\u00072\u0008\u0010-\u001a\u0004\u0018\u00010,H\u00d6\u0003\u00a2\u0006\u0004\u0008.\u0010/R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u00100\u001a\u0004\u00081\u0010\u001b\"\u0004\u00082\u00103R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u00104\u001a\u0004\u00085\u0010\u001d\"\u0004\u00086\u00107R$\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u00104\u001a\u0004\u00088\u0010\u001d\"\u0004\u00089\u00107R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010:\u001a\u0004\u0008\u0008\u0010 \"\u0004\u0008;\u0010<R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u00100\u001a\u0004\u0008=\u0010\u001b\"\u0004\u0008>\u00103R\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010?\u001a\u0004\u0008@\u0010#\"\u0004\u0008A\u0010BR$\u0010\u000c\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010?\u001a\u0004\u0008C\u0010#\"\u0004\u0008D\u0010BR\"\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010:\u001a\u0004\u0008\r\u0010 \"\u0004\u0008E\u0010<R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010:\u001a\u0004\u0008\u000e\u0010 \"\u0004\u0008F\u0010<R\"\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010:\u001a\u0004\u0008\u000f\u0010 \"\u0004\u0008G\u0010<\u00a8\u0006H"
    }
    d2 = {
        "Lcom/transsion/dbdata/database/UserBehaviorItem;",
        "Landroid/os/Parcelable;",
        "",
        "id",
        "",
        "mediaId",
        "mediaType",
        "",
        "isVideoToAudio",
        "vToAConvertTime",
        "",
        "_data",
        "customCover",
        "isCollected",
        "isHide",
        "isFilter",
        "<init>",
        "(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZ)V",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "Lzfb;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "()J",
        "component2",
        "()Ljava/lang/Integer;",
        "component3",
        "component4",
        "()Z",
        "component5",
        "component6",
        "()Ljava/lang/String;",
        "component7",
        "component8",
        "component9",
        "component10",
        "copy",
        "(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZ)Lcom/transsion/dbdata/database/UserBehaviorItem;",
        "toString",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "J",
        "getId",
        "setId",
        "(J)V",
        "Ljava/lang/Integer;",
        "getMediaId",
        "setMediaId",
        "(Ljava/lang/Integer;)V",
        "getMediaType",
        "setMediaType",
        "Z",
        "setVideoToAudio",
        "(Z)V",
        "getVToAConvertTime",
        "setVToAConvertTime",
        "Ljava/lang/String;",
        "get_data",
        "set_data",
        "(Ljava/lang/String;)V",
        "getCustomCover",
        "setCustomCover",
        "setCollected",
        "setHide",
        "setFilter",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/dbdata/database/UserBehaviorItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _data:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_data"
    .end annotation
.end field

.field private customCover:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "custom_cover"
    .end annotation
.end field

.field private id:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private isCollected:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_collected"
    .end annotation
.end field

.field private isFilter:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_filter"
    .end annotation
.end field

.field private isHide:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_hide"
    .end annotation
.end field

.field private isVideoToAudio:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_video_to_audio"
    .end annotation
.end field

.field private mediaId:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_id"
    .end annotation
.end field

.field private mediaType:Ljava/lang/Integer;
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_type"
    .end annotation
.end field

.field private vToAConvertTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "video_to_audio_convert_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/database/UserBehaviorItem$a;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/UserBehaviorItem$a;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1

    const-string v0, "_data"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    .line 3
    iput-object p3, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    .line 4
    iput-object p4, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    .line 5
    iput-boolean p5, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    .line 6
    iput-wide p6, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    .line 7
    iput-object p8, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    .line 9
    iput-boolean p10, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    .line 10
    iput-boolean p11, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    .line 11
    iput-boolean p12, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    move-wide v5, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    move-object v7, v4

    goto :goto_1

    :cond_1
    move-object/from16 v7, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v8, v4

    goto :goto_2

    :cond_2
    move-object/from16 v8, p4

    :goto_2
    and-int/lit8 v1, v0, 0x8

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    move v1, v9

    goto :goto_3

    :cond_3
    move/from16 v1, p5

    :goto_3
    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_4

    move-wide v10, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p6

    :goto_4
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_5

    move-object v13, v4

    goto :goto_5

    :cond_5
    move-object/from16 v13, p9

    :goto_5
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_6

    move v14, v9

    goto :goto_6

    :cond_6
    move/from16 v14, p10

    :goto_6
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_7

    move v15, v9

    goto :goto_7

    :cond_7
    move/from16 v15, p11

    :goto_7
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    move/from16 v16, v9

    goto :goto_8

    :cond_8
    move/from16 v16, p12

    :goto_8
    move-object/from16 v4, p0

    move v9, v1

    move-object/from16 v12, p8

    .line 12
    invoke-direct/range {v4 .. v16}, Lcom/transsion/dbdata/database/UserBehaviorItem;-><init>(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/database/UserBehaviorItem;JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/transsion/dbdata/database/UserBehaviorItem;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-boolean v11, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget-boolean v12, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    goto :goto_8

    :cond_8
    move/from16 v12, p11

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    goto :goto_9

    :cond_9
    move/from16 v1, p12

    :goto_9
    move-wide p1, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/transsion/dbdata/database/UserBehaviorItem;->copy(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZ)Lcom/transsion/dbdata/database/UserBehaviorItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    return-wide v0
.end method

.method public final component10()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    return p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    return p0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    return p0
.end method

.method public final component9()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    return p0
.end method

.method public final copy(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZ)Lcom/transsion/dbdata/database/UserBehaviorItem;
    .locals 14

    const-string v0, "_data"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/database/UserBehaviorItem;

    move-object v1, v0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/transsion/dbdata/database/UserBehaviorItem;-><init>(JLjava/lang/Integer;Ljava/lang/Integer;ZJLjava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/database/UserBehaviorItem;

    iget-wide v3, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    iget-wide v5, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    iget-boolean v3, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    iget-wide v5, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    iget-boolean v3, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    iget-boolean v3, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    iget-boolean p1, p1, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    if-eq p0, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCustomCover()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    return-wide v0
.end method

.method public final getMediaId()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMediaType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getVToAConvertTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    return-wide v0
.end method

.method public final get_data()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isCollected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    return p0
.end method

.method public final isFilter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    return p0
.end method

.method public final isHide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    return p0
.end method

.method public final isVideoToAudio()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    return p0
.end method

.method public final setCollected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    return-void
.end method

.method public final setCustomCover(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    return-void
.end method

.method public final setFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    return-void
.end method

.method public final setHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    return-void
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    return-void
.end method

.method public final setMediaId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    return-void
.end method

.method public final setMediaType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    return-void
.end method

.method public final setVToAConvertTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    return-void
.end method

.method public final setVideoToAudio(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    return-void
.end method

.method public final set_data(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-wide v0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    iget-object v2, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    iget-boolean v4, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    iget-wide v5, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    iget-object v7, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    iget-boolean v10, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UserBehaviorItem(id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mediaId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaType="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoToAudio="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", vToAConvertTime="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", _data="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", customCover="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isCollected="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isHide="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFilter="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaId:Ljava/lang/Integer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->mediaType:Ljava/lang/Integer;

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-boolean p2, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isVideoToAudio:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->vToAConvertTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->_data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->customCover:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isCollected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isHide:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lcom/transsion/dbdata/database/UserBehaviorItem;->isFilter:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
