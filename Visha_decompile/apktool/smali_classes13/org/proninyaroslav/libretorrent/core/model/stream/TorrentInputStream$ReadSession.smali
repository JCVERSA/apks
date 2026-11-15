.class Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadSession"
.end annotation


# instance fields
.field public a:I

.field public b:[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

.field public c:[B

.field public final synthetic d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;


# direct methods
.method public constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->d:Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;Llsa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;-><init>(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[B
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->c:[B

    return-object p0
.end method

.method public static bridge synthetic b(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)I
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->a:I

    return p0
.end method

.method public static bridge synthetic c(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;)[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->b:[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    return-object p0
.end method

.method public static bridge synthetic d(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;[B)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->c:[B

    return-void
.end method

.method public static bridge synthetic e(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;I)V
    .locals 0

    iput p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->a:I

    return-void
.end method

.method public static bridge synthetic f(Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;)V
    .locals 0

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$ReadSession;->b:[Lorg/proninyaroslav/libretorrent/core/model/stream/TorrentInputStream$Piece;

    return-void
.end method
