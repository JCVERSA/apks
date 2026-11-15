.class public Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "tagId"
            }
            entity = Lorg/proninyaroslav/libretorrent/core/model/data/entity/TagInfo;
            onDelete = 0x5
            parentColumns = {
                "id"
            }
        .end subannotation,
        .subannotation Landroidx/room/ForeignKey;
            childColumns = {
                "torrentId"
            }
            entity = Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
            onDelete = 0x5
            parentColumns = {
                "id"
            }
        .end subannotation
    }
    indices = {
        .subannotation Landroidx/room/Index;
            value = {
                "tagId"
            }
        .end subannotation,
        .subannotation Landroidx/room/Index;
            value = {
                "torrentId"
            }
        .end subannotation
    }
    primaryKeys = {
        "tagId",
        "torrentId"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->a:J

    iput-object p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->a:J

    iget-wide v3, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->a:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->b:Ljava/lang/String;

    iget-object p1, p1, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TorrentTagInfo{tagId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", torrentId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/TorrentTagInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
