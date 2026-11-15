.class final Lorg/libtorrent4j/AlertMulticaster;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/AlertListener;


# instance fields
.field private final a:Lorg/libtorrent4j/AlertListener;

.field private final b:Lorg/libtorrent4j/AlertListener;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/libtorrent4j/AlertMulticaster;->a:Lorg/libtorrent4j/AlertListener;

    iput-object p2, p0, Lorg/libtorrent4j/AlertMulticaster;->b:Lorg/libtorrent4j/AlertListener;

    return-void
.end method

.method public static add(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;
    .locals 0

    invoke-static {p0, p1}, Lorg/libtorrent4j/AlertMulticaster;->addInternal(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;

    move-result-object p0

    return-object p0
.end method

.method private static addInternal(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lorg/libtorrent4j/AlertMulticaster;

    invoke-direct {v0, p0, p1}, Lorg/libtorrent4j/AlertMulticaster;-><init>(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)V

    return-object v0
.end method

.method private remove(Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/libtorrent4j/AlertMulticaster;->a:Lorg/libtorrent4j/AlertListener;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/libtorrent4j/AlertMulticaster;->b:Lorg/libtorrent4j/AlertListener;

    return-object p0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/libtorrent4j/AlertMulticaster;->b:Lorg/libtorrent4j/AlertListener;

    if-ne p1, v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {v0, p1}, Lorg/libtorrent4j/AlertMulticaster;->removeInternal(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/libtorrent4j/AlertMulticaster;->b:Lorg/libtorrent4j/AlertListener;

    invoke-static {v1, p1}, Lorg/libtorrent4j/AlertMulticaster;->removeInternal(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lorg/libtorrent4j/AlertMulticaster;->a:Lorg/libtorrent4j/AlertListener;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/libtorrent4j/AlertMulticaster;->b:Lorg/libtorrent4j/AlertListener;

    if-ne p1, v1, :cond_2

    return-object p0

    .line 7
    :cond_2
    invoke-static {v0, p1}, Lorg/libtorrent4j/AlertMulticaster;->addInternal(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/libtorrent4j/AlertMulticaster;->removeInternal(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;

    move-result-object p0

    return-object p0
.end method

.method private static removeInternal(Lorg/libtorrent4j/AlertListener;Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;
    .locals 1

    if-eq p0, p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/libtorrent4j/AlertMulticaster;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/libtorrent4j/AlertMulticaster;

    invoke-direct {p0, p1}, Lorg/libtorrent4j/AlertMulticaster;->remove(Lorg/libtorrent4j/AlertListener;)Lorg/libtorrent4j/AlertListener;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public alert(Lorg/libtorrent4j/alerts/Alert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/libtorrent4j/AlertMulticaster;->a:Lorg/libtorrent4j/AlertListener;

    invoke-interface {v0, p1}, Lorg/libtorrent4j/AlertListener;->alert(Lorg/libtorrent4j/alerts/Alert;)V

    iget-object p0, p0, Lorg/libtorrent4j/AlertMulticaster;->b:Lorg/libtorrent4j/AlertListener;

    invoke-interface {p0, p1}, Lorg/libtorrent4j/AlertListener;->alert(Lorg/libtorrent4j/alerts/Alert;)V

    return-void
.end method

.method public types()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
