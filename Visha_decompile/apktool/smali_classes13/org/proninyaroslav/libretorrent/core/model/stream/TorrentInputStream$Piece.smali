.class Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Piece"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->e:Z

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->a:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    if-eqz v0, :cond_1

    if-eq p1, p0, :cond_0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->a:I

    check-cast p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    iget p1, p1, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->a:I

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;->a:I

    return p0
.end method
