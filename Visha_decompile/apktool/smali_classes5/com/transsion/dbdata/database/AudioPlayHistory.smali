.class public final Lcom/transsion/dbdata/database/AudioPlayHistory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "audio_play_history"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0013J\u0010\u0010\u0019\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJD\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u0015J\u0010\u0010\u001f\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u0013J\u001a\u0010#\u001a\u00020\"2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u00d6\u0003\u00a2\u0006\u0004\u0008#\u0010$R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010%\u001a\u0004\u0008&\u0010\u0015\"\u0004\u0008\'\u0010(R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010)\u001a\u0004\u0008*\u0010\u0017\"\u0004\u0008+\u0010,R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010-\u001a\u0004\u0008.\u0010\u0013\"\u0004\u0008/\u00100R\u001a\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u00101\u001a\u0004\u00082\u0010\u001aR\"\u0010\t\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u00101\u001a\u0004\u00083\u0010\u001a\"\u0004\u00084\u00105\u00a8\u00066"
    }
    d2 = {
        "Lcom/transsion/dbdata/database/AudioPlayHistory;",
        "Landroid/os/Parcelable;",
        "",
        "_data",
        "",
        "mediaId",
        "",
        "playCount",
        "createTime",
        "updateTime",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Long;IJJ)V",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "Lzfb;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "()Ljava/lang/Long;",
        "component3",
        "component4",
        "()J",
        "component5",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Long;IJJ)Lcom/transsion/dbdata/database/AudioPlayHistory;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "get_data",
        "set_data",
        "(Ljava/lang/String;)V",
        "Ljava/lang/Long;",
        "getMediaId",
        "setMediaId",
        "(Ljava/lang/Long;)V",
        "I",
        "getPlayCount",
        "setPlayCount",
        "(I)V",
        "J",
        "getCreateTime",
        "getUpdateTime",
        "setUpdateTime",
        "(J)V",
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
            "Lcom/transsion/dbdata/database/AudioPlayHistory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _data:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "_data"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private final createTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "create_time"
    .end annotation
.end field

.field private mediaId:Ljava/lang/Long;
    .annotation build Landroidx/room/ColumnInfo;
        name = "media_id"
    .end annotation
.end field

.field private playCount:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "play_count"
    .end annotation
.end field

.field private updateTime:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "update_time"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/database/AudioPlayHistory$a;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/AudioPlayHistory$a;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/database/AudioPlayHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;IJJ)V
    .locals 1

    const-string v0, "_data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    .line 4
    iput p3, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    .line 5
    iput-wide p4, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->createTime:J

    .line 6
    iput-wide p6, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;IJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide v5, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_2

    :cond_2
    move-wide v7, p6

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 9
    invoke-direct/range {v1 .. v8}, Lcom/transsion/dbdata/database/AudioPlayHistory;-><init>(Ljava/lang/String;Ljava/lang/Long;IJJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/dbdata/database/AudioPlayHistory;Ljava/lang/String;Ljava/lang/Long;IJJILjava/lang/Object;)Lcom/transsion/dbdata/database/AudioPlayHistory;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->createTime:J

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-wide p6, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    :cond_4
    move-wide v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move-wide p6, v1

    move-wide p8, v3

    invoke-virtual/range {p2 .. p9}, Lcom/transsion/dbdata/database/AudioPlayHistory;->copy(Ljava/lang/String;Ljava/lang/Long;IJJ)Lcom/transsion/dbdata/database/AudioPlayHistory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    return p0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->createTime:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Long;IJJ)Lcom/transsion/dbdata/database/AudioPlayHistory;
    .locals 8

    const-string p0, "_data"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/dbdata/database/AudioPlayHistory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/database/AudioPlayHistory;-><init>(Ljava/lang/String;Ljava/lang/Long;IJJ)V

    return-object p0
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
    instance-of v1, p1, Lcom/transsion/dbdata/database/AudioPlayHistory;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/dbdata/database/AudioPlayHistory;

    iget-object v1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    iget v3, p1, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->createTime:J

    iget-wide v5, p1, Lcom/transsion/dbdata/database/AudioPlayHistory;->createTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    iget-wide p0, p1, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->createTime:J

    return-wide v0
.end method

.method public final getMediaId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getPlayCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    return p0
.end method

.method public final getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    return-wide v0
.end method

.method public final get_data()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->createTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setMediaId(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    return-void
.end method

.method public final setPlayCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    return-void
.end method

.method public final setUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    return-void
.end method

.method public final set_data(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    iget v2, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    iget-wide v3, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->createTime:J

    iget-wide v5, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioPlayHistory(_data="

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mediaId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", playCount="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", createTime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", updateTime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->_data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->mediaId:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    iget p2, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->playCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/transsion/dbdata/database/AudioPlayHistory;->updateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
