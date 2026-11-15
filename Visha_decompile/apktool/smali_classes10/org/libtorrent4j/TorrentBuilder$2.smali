.class Lorg/libtorrent4j/TorrentBuilder$2;
.super Lorg/libtorrent4j/swig/set_piece_hashes_listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libtorrent4j/TorrentBuilder;->generate()Lorg/libtorrent4j/TorrentBuilder$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libtorrent4j/TorrentBuilder;

.field final synthetic val$numPieces:I


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/TorrentBuilder;I)V
    .locals 0

    iput-object p1, p0, Lorg/libtorrent4j/TorrentBuilder$2;->this$0:Lorg/libtorrent4j/TorrentBuilder;

    iput p2, p0, Lorg/libtorrent4j/TorrentBuilder$2;->val$numPieces:I

    invoke-direct {p0}, Lorg/libtorrent4j/swig/set_piece_hashes_listener;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(I)V
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder$2;->this$0:Lorg/libtorrent4j/TorrentBuilder;

    invoke-static {v0}, Lorg/libtorrent4j/TorrentBuilder;->access$000(Lorg/libtorrent4j/TorrentBuilder;)Lorg/libtorrent4j/TorrentBuilder$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder$2;->this$0:Lorg/libtorrent4j/TorrentBuilder;

    invoke-static {v0}, Lorg/libtorrent4j/TorrentBuilder;->access$000(Lorg/libtorrent4j/TorrentBuilder;)Lorg/libtorrent4j/TorrentBuilder$Listener;

    move-result-object v0

    iget p0, p0, Lorg/libtorrent4j/TorrentBuilder$2;->val$numPieces:I

    invoke-interface {v0, p1, p0}, Lorg/libtorrent4j/TorrentBuilder$Listener;->progress(II)V

    :cond_0
    return-void
.end method
