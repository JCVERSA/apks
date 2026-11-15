.class Lorg/libtorrent4j/SessionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/AlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libtorrent4j/SessionManager;->fetchMagnet(Ljava/lang/String;ILjava/io/File;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libtorrent4j/SessionManager;

.field final synthetic val$data:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$info_hash:Lorg/libtorrent4j/swig/info_hash_t;

.field final synthetic val$signal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/swig/info_hash_t;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager$1;->this$0:Lorg/libtorrent4j/SessionManager;

    iput-object p2, p0, Lorg/libtorrent4j/SessionManager$1;->val$info_hash:Lorg/libtorrent4j/swig/info_hash_t;

    iput-object p3, p0, Lorg/libtorrent4j/SessionManager$1;->val$data:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lorg/libtorrent4j/SessionManager$1;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alert(Lorg/libtorrent4j/alerts/Alert;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lorg/libtorrent4j/alerts/TorrentAlert;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/AbstractAlert;->swig()Lorg/libtorrent4j/swig/alert;

    move-result-object v0

    check-cast v0, Lorg/libtorrent4j/swig/torrent_alert;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_alert;->getHandle()Lorg/libtorrent4j/swig/torrent_handle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->is_valid()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/torrent_handle;->info_hash()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v0

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager$1;->val$info_hash:Lorg/libtorrent4j/swig/info_hash_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/info_hash_t;->get_best()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/sha1_hash;->ne(Lorg/libtorrent4j/swig/sha1_hash;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/libtorrent4j/alerts/Alert;->type()Lorg/libtorrent4j/alerts/AlertType;

    move-result-object v0

    sget-object v1, Lorg/libtorrent4j/alerts/AlertType;->METADATA_RECEIVED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/libtorrent4j/alerts/TorrentAlert;

    invoke-virtual {v1}, Lorg/libtorrent4j/alerts/TorrentAlert;->handle()Lorg/libtorrent4j/TorrentHandle;

    move-result-object v1

    sget-object v2, Lorg/libtorrent4j/TorrentHandle;->SAVE_INFO_DICT:Lorg/libtorrent4j/swig/resume_data_flags_t;

    invoke-virtual {v1, v2}, Lorg/libtorrent4j/TorrentHandle;->saveResumeData(Lorg/libtorrent4j/swig/resume_data_flags_t;)V

    :cond_1
    sget-object v1, Lorg/libtorrent4j/alerts/AlertType;->SAVE_RESUME_DATA:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    check-cast p1, Lorg/libtorrent4j/alerts/SaveResumeDataAlert;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/SaveResumeDataAlert;->params()Lorg/libtorrent4j/AddTorrentParams;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/add_torrent_params;

    invoke-static {p1}, Lorg/libtorrent4j/swig/libtorrent;->write_torrent_file_buf_ex(Lorg/libtorrent4j/swig/add_torrent_params;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object p1

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager$1;->val$data:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lorg/libtorrent4j/Vectors;->byte_vector2bytes(Lorg/libtorrent4j/swig/byte_vector;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/libtorrent4j/SessionManager$1;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "Error building magnet torrent data"

    invoke-static {v1, p1}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    sget-object p1, Lorg/libtorrent4j/alerts/AlertType;->METADATA_FAILED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Error downloading magnet metadata"

    invoke-static {p1}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/libtorrent4j/SessionManager$1;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3
    sget-object p1, Lorg/libtorrent4j/alerts/AlertType;->SAVE_RESUME_DATA_FAILED:Lorg/libtorrent4j/alerts/AlertType;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Error saving resume data"

    invoke-static {p1}, Lorg/libtorrent4j/Log;->error(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager$1;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_4
    :goto_1
    return-void
.end method

.method public types()[I
    .locals 0

    invoke-static {}, Lorg/libtorrent4j/SessionManager;->access$000()[I

    move-result-object p0

    return-object p0
.end method
