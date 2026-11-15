.class public final Lcom/transsion/dbdata/database/PlayListMediaItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "playlist_id"
            }
            entity = Lcom/transsion/dbdata/database/PlayListItem;
            onDelete = 0x5
            onUpdate = 0x5
            parentColumns = {
                "id"
            }
        .end subannotation
    }
    indices = {
        .subannotation Landroidx/room/Index;
            name = "idx_media_playlist_link"
            orders = {
                .enum Landroidx/room/Index$Order;->ASC:Landroidx/room/Index$Order;,
                .enum Landroidx/room/Index$Order;->ASC:Landroidx/room/Index$Order;
            }
            value = {
                "playlist_id",
                "media_id"
            }
        .end subannotation
    }
    tableName = "media_playlist_item"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0013J\u0010\u0010\u0018\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0015J\u0010\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJB\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0008H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ\u0010\u0010\u001e\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u0013J\u001a\u0010\"\u001a\u00020!2\u0008\u0010 \u001a\u0004\u0018\u00010\u001fH\u00d6\u0003\u00a2\u0006\u0004\u0008\"\u0010#R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010$\u001a\u0004\u0008%\u0010\u0015\"\u0004\u0008&\u0010\'R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010$\u001a\u0004\u0008(\u0010\u0015R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010)\u001a\u0004\u0008*\u0010\u0013\"\u0004\u0008+\u0010,R\u001a\u0010\u0007\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010$\u001a\u0004\u0008-\u0010\u0015R\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010.\u001a\u0004\u0008/\u0010\u001a\"\u0004\u00080\u00101\u00a8\u00062"
    }
    d2 = {
        "Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "Landroid/os/Parcelable;",
        "",
        "id",
        "playlistId",
        "",
        "mediaId",
        "recordTime",
        "",
        "_data",
        "<init>",
        "(JJIJLjava/lang/String;)V",
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
        "component3",
        "component4",
        "component5",
        "()Ljava/lang/String;",
        "copy",
        "(JJIJLjava/lang/String;)Lcom/transsion/dbdata/database/PlayListMediaItem;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "J",
        "getId",
        "setId",
        "(J)V",
        "getPlaylistId",
        "I",
        "getMediaId",
        "setMediaId",
        "(I)V",
        "getRecordTime",
        "Ljava/lang/String;",
        "get_data",
        "set_data",
        "(Ljava/lang/String;)V",
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
            "Lcom/transsion/dbdata/database/PlayListMediaItem;",
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

.field private id:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field private mediaId:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_id"
    .end annotation
.end field

.field private final playlistId:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "playlist_id"
    .end annotation
.end field

.field private final recordTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "record_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/database/PlayListMediaItem$a;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/PlayListMediaItem$a;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/database/PlayListMediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJIJLjava/lang/String;)V
    .locals 1

    const-string v0, "_data"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    .line 3
    iput-wide p3, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->playlistId:J

    .line 4
    iput p5, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    .line 5
    iput-wide p6, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->recordTime:J

    .line 6
    iput-object p8, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v8, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p6

    :goto_1
    move-object v2, p0

    move-wide v5, p3

    move/from16 v7, p5

    move-object/from16 v10, p8

    .line 8
    invoke-direct/range {v2 .. v10}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/database/PlayListMediaItem;JJIJLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/transsion/dbdata/database/PlayListMediaItem;->playlistId:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    goto :goto_2

    :cond_2
    move v5, p5

    :goto_2
    and-int/lit8 v6, p9, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/transsion/dbdata/database/PlayListMediaItem;->recordTime:J

    goto :goto_3

    :cond_3
    move-wide v6, p6

    :goto_3
    and-int/lit8 v8, p9, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p8

    :goto_4
    move-wide p1, v1

    move-wide p3, v3

    move p5, v5

    move-wide p6, v6

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/transsion/dbdata/database/PlayListMediaItem;->copy(JJIJLjava/lang/String;)Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->playlistId:J

    return-wide v0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    return p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->recordTime:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(JJIJLjava/lang/String;)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 10

    const-string v0, "_data"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/database/PlayListMediaItem;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Lcom/transsion/dbdata/database/PlayListMediaItem;-><init>(JJIJLjava/lang/String;)V

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
    instance-of v1, p1, Lcom/transsion/dbdata/database/PlayListMediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/database/PlayListMediaItem;

    iget-wide v3, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    iget-wide v5, p1, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->playlistId:J

    iget-wide v5, p1, Lcom/transsion/dbdata/database/PlayListMediaItem;->playlistId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    iget v3, p1, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->recordTime:J

    iget-wide v5, p1, Lcom/transsion/dbdata/database/PlayListMediaItem;->recordTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    return-wide v0
.end method

.method public final getMediaId()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    return p0
.end method

.method public final getPlaylistId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->playlistId:J

    return-wide v0
.end method

.method public final getRecordTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->recordTime:J

    return-wide v0
.end method

.method public final get_data()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->playlistId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->recordTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    return-void
.end method

.method public final setMediaId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    return-void
.end method

.method public final set_data(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    iget-wide v2, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->playlistId:J

    iget v4, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    iget-wide v5, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->recordTime:J

    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PlayListMediaItem(id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", playlistId="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mediaId="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", recordTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", _data="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->playlistId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->mediaId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->recordTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayListMediaItem;->_data:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
