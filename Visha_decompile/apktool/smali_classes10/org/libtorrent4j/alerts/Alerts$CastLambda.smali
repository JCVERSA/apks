.class interface abstract Lorg/libtorrent4j/alerts/Alerts$CastLambda;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/alerts/Alerts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CastLambda"
.end annotation


# virtual methods
.method public abstract cast(Lorg/libtorrent4j/swig/alert;)Lorg/libtorrent4j/alerts/Alert;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/swig/alert;",
            ")",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;"
        }
    .end annotation
.end method
