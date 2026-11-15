.class public Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Entity;
    foreignKeys = {
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
                "torrentId"
            }
        .end subannotation
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/proninyaroslav/libretorrent/core/model/data/entity/FastResume;->b:[B

    return-void
.end method
