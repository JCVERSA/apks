.class public final Lorg/libtorrent4j/TorrentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ti:Lorg/libtorrent4j/swig/torrent_info;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lorg/libtorrent4j/TorrentInfo;->bdecode0(Ljava/io/File;)Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libtorrent4j/TorrentInfo;-><init>(Lorg/libtorrent4j/swig/torrent_info;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/MappedByteBuffer;)V
    .locals 0

    .line 5
    invoke-static {p1}, Lorg/libtorrent4j/TorrentInfo;->bdecode0(Ljava/nio/MappedByteBuffer;)Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libtorrent4j/TorrentInfo;-><init>(Lorg/libtorrent4j/swig/torrent_info;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/torrent_info;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 4
    invoke-static {p1}, Lorg/libtorrent4j/TorrentInfo;->bdecode0([B)Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libtorrent4j/TorrentInfo;-><init>(Lorg/libtorrent4j/swig/torrent_info;)V

    return-void
.end method

.method public static bdecode([B)Lorg/libtorrent4j/TorrentInfo;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/TorrentInfo;

    invoke-static {p0}, Lorg/libtorrent4j/TorrentInfo;->bdecode0([B)Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/TorrentInfo;-><init>(Lorg/libtorrent4j/swig/torrent_info;)V

    return-object v0
.end method

.method private static bdecode0(Ljava/io/File;)Lorg/libtorrent4j/swig/torrent_info;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/libtorrent4j/Files;->bytes(Ljava/io/File;)[B

    move-result-object v0

    .line 2
    invoke-static {v0}, Lorg/libtorrent4j/TorrentInfo;->bdecode0([B)Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t decode data from file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static bdecode0(Ljava/nio/MappedByteBuffer;)Lorg/libtorrent4j/swig/torrent_info;
    .locals 5

    .line 15
    :try_start_0
    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->directBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 16
    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent_jni;->directBufferCapacity(Ljava/nio/Buffer;)J

    move-result-wide v2

    .line 17
    new-instance p0, Lorg/libtorrent4j/swig/bdecode_node;

    invoke-direct {p0}, Lorg/libtorrent4j/swig/bdecode_node;-><init>()V

    .line 18
    new-instance v4, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v4}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    long-to-int v2, v2

    .line 19
    invoke-static {v0, v1, v2, p0, v4}, Lorg/libtorrent4j/swig/bdecode_node;->bdecode(JILorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const-string v1, "Can\'t decode data: "

    if-nez v0, :cond_1

    .line 21
    :try_start_1
    invoke-virtual {v4}, Lorg/libtorrent4j/swig/error_code;->clear()V

    .line 22
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lorg/libtorrent4j/swig/bdecode_node;->dict_find_dict_ex(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;

    move-result-object p0

    invoke-static {p0, v4}, Lorg/libtorrent4j/swig/torrent_info;->create_torrent_info(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/torrent_info;

    move-result-object p0

    .line 23
    invoke-virtual {v4}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t decode data mapped buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static bdecode0([B)Lorg/libtorrent4j/swig/torrent_info;
    .locals 4

    .line 4
    invoke-static {p0}, Lorg/libtorrent4j/Vectors;->bytes2byte_vector([B)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p0

    .line 5
    new-instance v0, Lorg/libtorrent4j/swig/bdecode_node;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/bdecode_node;-><init>()V

    .line 6
    new-instance v1, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v1}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    .line 7
    invoke-static {p0, v0, v1}, Lorg/libtorrent4j/swig/bdecode_node;->bdecode(Lorg/libtorrent4j/swig/byte_vector;Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)I

    move-result v2

    .line 8
    const-string v3, "Can\'t decode data: "

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lorg/libtorrent4j/swig/error_code;->clear()V

    .line 10
    const-string v2, "info"

    invoke-virtual {v0, v2}, Lorg/libtorrent4j/swig/bdecode_node;->dict_find_dict_ex(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/libtorrent4j/swig/torrent_info;->create_torrent_info(Lorg/libtorrent4j/swig/bdecode_node;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/torrent_info;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lorg/libtorrent4j/swig/byte_vector;->clear()V

    .line 12
    invoke-virtual {v1}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public collections()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->collections()Lorg/libtorrent4j/swig/string_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/string_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/libtorrent4j/swig/string_vector;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public files()Lorg/libtorrent4j/FileStorage;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/FileStorage;

    iget-object v1, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_info;->layout()Lorg/libtorrent4j/swig/file_storage;

    move-result-object v1

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-direct {v0, v1, p0}, Lorg/libtorrent4j/FileStorage;-><init>(Lorg/libtorrent4j/swig/file_storage;Lorg/libtorrent4j/swig/torrent_info;)V

    return-object v0
.end method

.method public hasV1()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->v1()Z

    move-result p0

    return p0
.end method

.method public hasV2()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->v2()Z

    move-result p0

    return p0
.end method

.method public hashForPiece(I)Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_info;->hash_for_piece(I)Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method

.method public info(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_info;->info(Ljava/lang/String;)Lorg/libtorrent4j/swig/bdecode_node;

    move-result-object p0

    return-object p0
.end method

.method public infoHash()Lorg/libtorrent4j/Sha1Hash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Sha1Hash;

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->info_hash()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Sha1Hash;-><init>(Lorg/libtorrent4j/swig/sha1_hash;)V

    return-object v0
.end method

.method public infoHashes()Lorg/libtorrent4j/InfoHash;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/InfoHash;

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->info_hashes()Lorg/libtorrent4j/swig/info_hash_t;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/InfoHash;-><init>(Lorg/libtorrent4j/swig/info_hash_t;)V

    return-object v0
.end method

.method public isI2p()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->is_i2p()Z

    move-result p0

    return p0
.end method

.method public isLoaded()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->is_loaded()Z

    move-result p0

    return p0
.end method

.method public isPrivate()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->priv()Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->is_valid()Z

    move-result p0

    return p0
.end method

.method public mapBlock(IJI)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/FileSlice;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/libtorrent4j/swig/torrent_info;->map_block(IJI)Lorg/libtorrent4j/swig/file_slice_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/FileStorage;->mapBlock(Lorg/libtorrent4j/swig/file_slice_vector;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public mapFile(IJI)Lorg/libtorrent4j/PeerRequest;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/PeerRequest;

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/libtorrent4j/swig/torrent_info;->map_file(IJI)Lorg/libtorrent4j/swig/peer_request;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/PeerRequest;-><init>(Lorg/libtorrent4j/swig/peer_request;)V

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public numFiles()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->num_files()I

    move-result p0

    return p0
.end method

.method public numPieces()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->num_pieces()I

    move-result p0

    return p0
.end method

.method public pieceLength()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->piece_length()I

    move-result p0

    return p0
.end method

.method public pieceSize(I)I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/swig/torrent_info;->piece_size(I)I

    move-result p0

    return p0
.end method

.method public similarTorrents()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/libtorrent4j/Sha1Hash;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->similar_torrents()Lorg/libtorrent4j/swig/sha1_hash_vector;

    move-result-object p0

    invoke-static {p0}, Lorg/libtorrent4j/Sha1Hash;->convert(Lorg/libtorrent4j/swig/sha1_hash_vector;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public sizeOnDisk()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->size_on_disk()J

    move-result-wide v0

    return-wide v0
.end method

.method public swig()Lorg/libtorrent4j/swig/torrent_info;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    return-object p0
.end method

.method public totalSize()J
    .locals 2

    iget-object p0, p0, Lorg/libtorrent4j/TorrentInfo;->ti:Lorg/libtorrent4j/swig/torrent_info;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/torrent_info;->total_size()J

    move-result-wide v0

    return-wide v0
.end method
