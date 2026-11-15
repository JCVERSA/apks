.class public final Lorg/libtorrent4j/alerts/DhtLogAlert;
.super Lorg/libtorrent4j/alerts/AbstractAlert;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/alerts/AbstractAlert<",
        "Lorg/libtorrent4j/swig/dht_log_alert;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/dht_log_alert;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/AbstractAlert;-><init>(Lorg/libtorrent4j/swig/alert;)V

    return-void
.end method


# virtual methods
.method public logMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_log_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_log_alert;->log_message()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public module()Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/alerts/AbstractAlert;->alert:Lorg/libtorrent4j/swig/alert;

    check-cast p0, Lorg/libtorrent4j/swig/dht_log_alert;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_log_alert;->getModule()Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->swigValue()I

    move-result p0

    invoke-static {p0}, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->fromSwig(I)Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    move-result-object p0

    return-object p0
.end method
