.class public Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/room/Entity;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public autoDownload:Z

.field public fetchError:Ljava/lang/String;

.field public filter:Ljava/lang/String;

.field public id:J
    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public isRegexFilter:Z

.field public lastUpdate:J

.field public name:Ljava/lang/String;

.field public url:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel$1;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel$1;-><init>()V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->autoDownload:Z

    .line 15
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->isRegexFilter:Z

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->id:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->url:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->lastUpdate:J

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->autoDownload:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->filter:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->isRegexFilter:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->fetchError:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->autoDownload:Z

    .line 11
    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->isRegexFilter:Z

    .line 12
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->name:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->lastUpdate:J

    .line 5
    iput-boolean p5, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->autoDownload:Z

    .line 6
    iput-object p6, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->filter:Ljava/lang/String;

    .line 7
    iput-boolean p7, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->isRegexFilter:Z

    .line 8
    iput-object p8, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->fetchError:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;

    if-eqz v0, :cond_1

    if-eq p1, p0, :cond_0

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->id:J

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;

    iget-wide p0, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->id:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->id:J

    const/16 p0, 0x20

    ushr-long v2, v0, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeedChannel{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastUpdate="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->lastUpdate:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", autoDownload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->autoDownload:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", filter=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->filter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isRegexFilter="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->isRegexFilter:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fetchError=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->fetchError:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->lastUpdate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->autoDownload:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->filter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->isRegexFilter:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FeedChannel;->fetchError:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
