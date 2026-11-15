.class Lorg/libtorrent4j/SessionManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/AlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libtorrent4j/SessionManager;->dhtGetItem([B[BI)Lorg/libtorrent4j/SessionManager$MutableItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/libtorrent4j/SessionManager;

.field final synthetic val$key:[B

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$salt:[B

.field final synthetic val$signal:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/SessionManager;[B[BLjava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/libtorrent4j/SessionManager$3;->this$0:Lorg/libtorrent4j/SessionManager;

    iput-object p2, p0, Lorg/libtorrent4j/SessionManager$3;->val$key:[B

    iput-object p3, p0, Lorg/libtorrent4j/SessionManager$3;->val$salt:[B

    iput-object p4, p0, Lorg/libtorrent4j/SessionManager$3;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lorg/libtorrent4j/SessionManager$3;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alert(Lorg/libtorrent4j/alerts/Alert;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)V"
        }
    .end annotation

    check-cast p1, Lorg/libtorrent4j/alerts/DhtMutableItemAlert;

    iget-object v0, p0, Lorg/libtorrent4j/SessionManager$3;->val$key:[B

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/DhtMutableItemAlert;->key()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    iget-object v1, p0, Lorg/libtorrent4j/SessionManager$3;->val$salt:[B

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/DhtMutableItemAlert;->salt()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/libtorrent4j/Entry;

    new-instance v0, Lorg/libtorrent4j/swig/entry;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/AbstractAlert;->swig()Lorg/libtorrent4j/swig/alert;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/dht_mutable_item_alert;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_mutable_item_alert;->getItem()Lorg/libtorrent4j/swig/entry;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    invoke-direct {v3, v0}, Lorg/libtorrent4j/Entry;-><init>(Lorg/libtorrent4j/swig/entry;)V

    new-instance v0, Lorg/libtorrent4j/SessionManager$MutableItem;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/DhtMutableItemAlert;->signature()[B

    move-result-object v4

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/DhtMutableItemAlert;->seq()J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/libtorrent4j/SessionManager$MutableItem;-><init>(Lorg/libtorrent4j/Entry;[BJLorg/libtorrent4j/SessionManager$1;)V

    iget-object p1, p0, Lorg/libtorrent4j/SessionManager$3;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/libtorrent4j/SessionManager$3;->val$signal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public types()[I
    .locals 0

    invoke-static {}, Lorg/libtorrent4j/SessionManager;->access$200()[I

    move-result-object p0

    return-object p0
.end method
