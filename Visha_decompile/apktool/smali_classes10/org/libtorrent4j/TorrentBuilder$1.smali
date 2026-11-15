.class Lorg/libtorrent4j/TorrentBuilder$1;
.super Lorg/libtorrent4j/swig/list_files_listener;
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


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/TorrentBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/libtorrent4j/TorrentBuilder$1;->this$0:Lorg/libtorrent4j/TorrentBuilder;

    invoke-direct {p0}, Lorg/libtorrent4j/swig/list_files_listener;-><init>()V

    return-void
.end method


# virtual methods
.method public pred(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder$1;->this$0:Lorg/libtorrent4j/TorrentBuilder;

    invoke-static {v0}, Lorg/libtorrent4j/TorrentBuilder;->access$000(Lorg/libtorrent4j/TorrentBuilder;)Lorg/libtorrent4j/TorrentBuilder$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder$1;->this$0:Lorg/libtorrent4j/TorrentBuilder;

    invoke-static {p0}, Lorg/libtorrent4j/TorrentBuilder;->access$000(Lorg/libtorrent4j/TorrentBuilder;)Lorg/libtorrent4j/TorrentBuilder$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/libtorrent4j/TorrentBuilder$Listener;->accept(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
