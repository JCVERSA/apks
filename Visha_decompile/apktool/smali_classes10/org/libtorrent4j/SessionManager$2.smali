.class Lorg/libtorrent4j/SessionManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/AlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libtorrent4j/SessionManager;->dhtGetItem(Lorg/libtorrent4j/Sha1Hash;I)Lorg/libtorrent4j/Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libtorrent4j/SessionManager;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$signal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$target:Lorg/libtorrent4j/swig/sha1_hash;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/SessionManager;Lorg/libtorrent4j/swig/sha1_hash;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager$2;->this$0:Lorg/libtorrent4j/SessionManager;

    iput-object p2, p0, Lorg/libtorrent4j/SessionManager$2;->val$target:Lorg/libtorrent4j/swig/sha1_hash;

    iput-object p3, p0, Lorg/libtorrent4j/SessionManager$2;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lorg/libtorrent4j/SessionManager$2;->val$signal:Ljava/util/concurrent/CountDownLatch;

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

    check-cast p1, Lorg/libtorrent4j/alerts/DhtImmutableItemAlert;

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager$2;->val$target:Lorg/libtorrent4j/swig/sha1_hash;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/AbstractAlert;->swig()Lorg/libtorrent4j/swig/alert;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/dht_immutable_item_alert;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_immutable_item_alert;->getTarget()Lorg/libtorrent4j/swig/sha1_hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/sha1_hash;->eq(Lorg/libtorrent4j/swig/sha1_hash;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager$2;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lorg/libtorrent4j/Entry;

    new-instance v2, Lorg/libtorrent4j/swig/entry;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/AbstractAlert;->swig()Lorg/libtorrent4j/swig/alert;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/dht_immutable_item_alert;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/dht_immutable_item_alert;->getItem()Lorg/libtorrent4j/swig/entry;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/libtorrent4j/swig/entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    invoke-direct {v1, v2}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager$2;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public types()[I
    .locals 0

    invoke-static {}, Lorg/libtorrent4j/SessionManager;->access$100()[I

    move-result-object p0

    return-object p0
.end method
