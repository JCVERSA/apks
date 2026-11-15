.class public final Lorg/libtorrent4j/TorrentBuilder$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/TorrentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final entry:Lorg/libtorrent4j/Entry;

.field private final t:Lorg/libtorrent4j/swig/create_torrent;


# direct methods
.method private constructor <init>(Lorg/libtorrent4j/swig/create_torrent;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/libtorrent4j/TorrentBuilder$Result;->t:Lorg/libtorrent4j/swig/create_torrent;

    .line 4
    new-instance v0, Lorg/libtorrent4j/Entry;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/create_torrent;->generate()Lorg/libtorrent4j/swig/entry;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    iput-object v0, p0, Lorg/libtorrent4j/TorrentBuilder$Result;->entry:Lorg/libtorrent4j/Entry;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/libtorrent4j/swig/create_torrent;Lorg/libtorrent4j/TorrentBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/libtorrent4j/TorrentBuilder$Result;-><init>(Lorg/libtorrent4j/swig/create_torrent;)V

    return-void
.end method


# virtual methods
.method public entry()Lorg/libtorrent4j/Entry;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder$Result;->entry:Lorg/libtorrent4j/Entry;

    return-object p0
.end method

.method public numPieces()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder$Result;->t:Lorg/libtorrent4j/swig/create_torrent;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/create_torrent;->num_pieces()I

    move-result p0

    return p0
.end method

.method public pieceLength()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder$Result;->t:Lorg/libtorrent4j/swig/create_torrent;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/create_torrent;->piece_length()I

    move-result p0

    return p0
.end method

.method public pieceSize(I)I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder$Result;->t:Lorg/libtorrent4j/swig/create_torrent;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/create_torrent;->piece_size(I)I

    move-result p0

    return p0
.end method
