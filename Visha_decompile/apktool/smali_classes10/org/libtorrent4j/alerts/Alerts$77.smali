.class Lorg/libtorrent4j/alerts/Alerts$77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/alerts/Alerts$CastLambda;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/libtorrent4j/alerts/Alerts;->buildTable()[Lorg/libtorrent4j/alerts/Alerts$CastLambda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;
    .locals 0

    new-instance p0, Lorg/libtorrent4j/alerts/DhtPutAlert;

    invoke-static {p1}, Lorg/libtorrent4j/swig/alert;->cast_to_dht_put_alert(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/swig/dht_put_alert;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/libtorrent4j/alerts/DhtPutAlert;-><init>(Lorg/libtorrent4j/swig/dht_put_alert;)V

    return-object p0
.end method
