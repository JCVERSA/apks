.class public final Lorg/libtorrent4j/TorrentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/TorrentBuilder$Listener;,
        Lorg/libtorrent4j/TorrentBuilder$Result;
    }
.end annotation


# static fields
.field public static final CANONICAL_FILES:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final MODIFICATION_TIME:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final SYMLINKS:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final V1_ONLY:Lorg/libtorrent4j/swig/create_flags_t;

.field public static final V2_ONLY:Lorg/libtorrent4j/swig/create_flags_t;


# instance fields
.field private alignment:I

.field private collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private comment:Ljava/lang/String;

.field private creationDate:Ljava/lang/Long;

.field private creator:Ljava/lang/String;

.field private flags:Lorg/libtorrent4j/swig/create_flags_t;

.field private listener:Lorg/libtorrent4j/TorrentBuilder$Listener;

.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private path:Ljava/io/File;

.field private pieceSize:I

.field private priv:Z

.field private similarTorrents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Sha1Hash;",
            ">;"
        }
    .end annotation
.end field

.field private trackers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private urlSeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/libtorrent4j/swig/create_torrent;->modification_time:Lorg/libtorrent4j/swig/create_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentBuilder;->MODIFICATION_TIME:Lorg/libtorrent4j/swig/create_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/create_torrent;->symlinks:Lorg/libtorrent4j/swig/create_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentBuilder;->SYMLINKS:Lorg/libtorrent4j/swig/create_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/create_torrent;->v2_only:Lorg/libtorrent4j/swig/create_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentBuilder;->V2_ONLY:Lorg/libtorrent4j/swig/create_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/create_torrent;->v1_only:Lorg/libtorrent4j/swig/create_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentBuilder;->V1_ONLY:Lorg/libtorrent4j/swig/create_flags_t;

    sget-object v0, Lorg/libtorrent4j/swig/create_torrent;->canonical_files:Lorg/libtorrent4j/swig/create_flags_t;

    sput-object v0, Lorg/libtorrent4j/TorrentBuilder;->CANONICAL_FILES:Lorg/libtorrent4j/swig/create_flags_t;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/libtorrent4j/TorrentBuilder;->pieceSize:I

    new-instance v0, Lorg/libtorrent4j/swig/create_flags_t;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/create_flags_t;-><init>()V

    iput-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->flags:Lorg/libtorrent4j/swig/create_flags_t;

    const/4 v0, -0x1

    iput v0, p0, Lorg/libtorrent4j/TorrentBuilder;->alignment:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->urlSeeds:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->nodes:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->trackers:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->similarTorrents:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->collections:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lorg/libtorrent4j/TorrentBuilder;)Lorg/libtorrent4j/TorrentBuilder$Listener;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->listener:Lorg/libtorrent4j/TorrentBuilder$Listener;

    return-object p0
.end method


# virtual methods
.method public addCollection(Ljava/lang/String;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addCollections(Ljava/util/List;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/libtorrent4j/TorrentBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public addNode(Lorg/libtorrent4j/Pair;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/libtorrent4j/TorrentBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addNodes(Ljava/util/List;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lorg/libtorrent4j/TorrentBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public addSimilarTorrent(Lorg/libtorrent4j/Sha1Hash;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->similarTorrents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addSimilarTorrents(Ljava/util/List;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Sha1Hash;",
            ">;)",
            "Lorg/libtorrent4j/TorrentBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->similarTorrents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public addTracker(Ljava/lang/String;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/libtorrent4j/TorrentBuilder;->addTracker(Ljava/lang/String;I)Lorg/libtorrent4j/TorrentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public addTracker(Ljava/lang/String;I)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1

    .line 2
    new-instance v0, Lorg/libtorrent4j/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lorg/libtorrent4j/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/TorrentBuilder;->addTracker(Lorg/libtorrent4j/Pair;)Lorg/libtorrent4j/TorrentBuilder;

    move-result-object p0

    return-object p0
.end method

.method public addTracker(Lorg/libtorrent4j/Pair;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/libtorrent4j/TorrentBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->trackers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addTrackers(Ljava/util/List;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lorg/libtorrent4j/TorrentBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->trackers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public addUrlSeed(Ljava/lang/String;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->urlSeeds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addUrlSeeds(Ljava/util/List;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/libtorrent4j/TorrentBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->urlSeeds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public alignment()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/libtorrent4j/TorrentBuilder;->alignment:I

    return p0
.end method

.method public alignment(I)Lorg/libtorrent4j/TorrentBuilder;
    .locals 0

    .line 2
    iput p1, p0, Lorg/libtorrent4j/TorrentBuilder;->alignment:I

    return-object p0
.end method

.method public collections()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->collections:Ljava/util/List;

    return-object p0
.end method

.method public comment()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public comment(Ljava/lang/String;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/TorrentBuilder;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public creationDate()J
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->creationDate:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public creationDate(J)Lorg/libtorrent4j/TorrentBuilder;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/libtorrent4j/TorrentBuilder;->creationDate:Ljava/lang/Long;

    return-object p0
.end method

.method public creator()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->creator:Ljava/lang/String;

    return-object p0
.end method

.method public creator(Ljava/lang/String;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/TorrentBuilder;->creator:Ljava/lang/String;

    return-object p0
.end method

.method public flags(Lorg/libtorrent4j/swig/create_flags_t;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/TorrentBuilder;->flags:Lorg/libtorrent4j/swig/create_flags_t;

    return-object p0
.end method

.method public flags()Lorg/libtorrent4j/swig/create_flags_t;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->flags:Lorg/libtorrent4j/swig/create_flags_t;

    return-object p0
.end method

.method public generate()Lorg/libtorrent4j/TorrentBuilder$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->path:Ljava/io/File;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lorg/libtorrent4j/TorrentBuilder$1;

    invoke-direct {v1, p0}, Lorg/libtorrent4j/TorrentBuilder$1;-><init>(Lorg/libtorrent4j/TorrentBuilder;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/libtorrent4j/TorrentBuilder;->flags:Lorg/libtorrent4j/swig/create_flags_t;

    invoke-static {v2, v1, v3}, Lorg/libtorrent4j/swig/libtorrent;->list_files_ex(Ljava/lang/String;Lorg/libtorrent4j/swig/list_files_listener;Lorg/libtorrent4j/swig/create_flags_t;)Lorg/libtorrent4j/swig/create_file_entry_vector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/create_file_entry_vector;->size()I

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lorg/libtorrent4j/swig/create_torrent;

    iget v3, p0, Lorg/libtorrent4j/TorrentBuilder;->pieceSize:I

    iget-object v4, p0, Lorg/libtorrent4j/TorrentBuilder;->flags:Lorg/libtorrent4j/swig/create_flags_t;

    invoke-direct {v2, v1, v3, v4}, Lorg/libtorrent4j/swig/create_torrent;-><init>(Lorg/libtorrent4j/swig/create_file_entry_vector;ILorg/libtorrent4j/swig/create_flags_t;)V

    invoke-virtual {v2}, Lorg/libtorrent4j/swig/create_torrent;->num_pieces()I

    move-result v1

    new-instance v3, Lorg/libtorrent4j/TorrentBuilder$2;

    invoke-direct {v3, p0, v1}, Lorg/libtorrent4j/TorrentBuilder$2;-><init>(Lorg/libtorrent4j/TorrentBuilder;I)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v1}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v1}, Lorg/libtorrent4j/swig/libtorrent;->set_piece_hashes_ex(Lorg/libtorrent4j/swig/create_torrent;Ljava/lang/String;Lorg/libtorrent4j/swig/set_piece_hashes_listener;Lorg/libtorrent4j/swig/error_code;)V

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->comment:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lorg/libtorrent4j/swig/create_torrent;->set_comment(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->creator:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lorg/libtorrent4j/swig/create_torrent;->set_creator(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->creationDate:Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lorg/libtorrent4j/swig/create_torrent;->set_creation_date(J)V

    :cond_2
    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->urlSeeds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/libtorrent4j/swig/create_torrent;->add_url_seed(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/Pair;

    invoke-virtual {v1}, Lorg/libtorrent4j/Pair;->to_string_int_pair()Lorg/libtorrent4j/swig/string_int_pair;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/libtorrent4j/swig/create_torrent;->add_node(Lorg/libtorrent4j/swig/string_int_pair;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->trackers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/Pair;

    iget-object v3, v1, Lorg/libtorrent4j/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Lorg/libtorrent4j/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/libtorrent4j/swig/create_torrent;->add_tracker(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lorg/libtorrent4j/TorrentBuilder;->priv:Z

    if-eqz v0, :cond_6

    invoke-virtual {v2, v0}, Lorg/libtorrent4j/swig/create_torrent;->set_priv(Z)V

    :cond_6
    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->similarTorrents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->similarTorrents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/Sha1Hash;

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {v2, v1}, Lorg/libtorrent4j/swig/create_torrent;->add_similar_torrent(Lorg/libtorrent4j/swig/sha1_hash;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lorg/libtorrent4j/TorrentBuilder;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->collections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/libtorrent4j/swig/create_torrent;->add_collection(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    new-instance p0, Lorg/libtorrent4j/TorrentBuilder$Result;

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lorg/libtorrent4j/TorrentBuilder$Result;-><init>(Lorg/libtorrent4j/swig/create_torrent;Lorg/libtorrent4j/TorrentBuilder$1;)V

    return-object p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "path\'s parent can\'t be null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "content files can\'t be empty"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "path can\'t be null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isPrivate()Z
    .locals 0

    iget-boolean p0, p0, Lorg/libtorrent4j/TorrentBuilder;->priv:Z

    return p0
.end method

.method public listener()Lorg/libtorrent4j/TorrentBuilder$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->listener:Lorg/libtorrent4j/TorrentBuilder$Listener;

    return-object p0
.end method

.method public listener(Lorg/libtorrent4j/TorrentBuilder$Listener;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/TorrentBuilder;->listener:Lorg/libtorrent4j/TorrentBuilder$Listener;

    return-object p0
.end method

.method public nodes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->nodes:Ljava/util/List;

    return-object p0
.end method

.method public path()Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->path:Ljava/io/File;

    return-object p0
.end method

.method public path(Ljava/io/File;)Lorg/libtorrent4j/TorrentBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/TorrentBuilder;->path:Ljava/io/File;

    return-object p0
.end method

.method public pieceSize()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/libtorrent4j/TorrentBuilder;->pieceSize:I

    return p0
.end method

.method public pieceSize(I)Lorg/libtorrent4j/TorrentBuilder;
    .locals 0

    .line 2
    iput p1, p0, Lorg/libtorrent4j/TorrentBuilder;->pieceSize:I

    return-object p0
.end method

.method public setPrivate(Z)Lorg/libtorrent4j/TorrentBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/libtorrent4j/TorrentBuilder;->priv:Z

    return-object p0
.end method

.method public similarTorrents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Sha1Hash;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->similarTorrents:Ljava/util/List;

    return-object p0
.end method

.method public trackers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->trackers:Ljava/util/List;

    return-object p0
.end method

.method public urlSeeds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/TorrentBuilder;->urlSeeds:Ljava/util/List;

    return-object p0
.end method
