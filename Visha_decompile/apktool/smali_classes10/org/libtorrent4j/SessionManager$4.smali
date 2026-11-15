.class Lorg/libtorrent4j/SessionManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/AlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libtorrent4j/SessionManager;->dhtGetPeers(Lorg/libtorrent4j/Sha1Hash;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libtorrent4j/SessionManager;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$signal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$target:Lorg/libtorrent4j/swig/sha1_hash;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/swig/sha1_hash;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager$4;->this$0:Lorg/libtorrent4j/SessionManager;

    iput-object p2, p0, Lorg/libtorrent4j/SessionManager$4;->val$target:Lorg/libtorrent4j/swig/sha1_hash;

    iput-object p3, p0, Lorg/libtorrent4j/SessionManager$4;->val$result:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/libtorrent4j/SessionManager$4;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alert(Lorg/libtorrent4j/alerts/Alert;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)V"
        }
    .end annotation

    check-cast p1, Lorg/libtorrent4j/alerts/DhtGetPeersReplyAlert;

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager$4;->val$target:Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/AbstractAlert;->swig()Lorg/libtorrent4j/swig/alert;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/dht_get_peers_reply_alert;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_get_peers_reply_alert;->getInfo_hash()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/sha1_hash;->eq(Lorg/libtorrent4j/swig/sha1_hash;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager$4;->val$result:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/DhtGetPeersReplyAlert;->peers()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager$4;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public types()[I
    .locals 0

    invoke-static {}, Lorg/libtorrent4j/SessionManager;->access$400()[I

    move-result-object p0

    return-object p0
.end method
