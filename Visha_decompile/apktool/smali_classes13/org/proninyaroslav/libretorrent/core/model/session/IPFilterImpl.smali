.class Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/proninyaroslav/libretorrent/core/model/session/IPFilter;


# instance fields
.field private filter:Lorg/libtorrent4j/swig/ip_filter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/libtorrent4j/swig/ip_filter;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/ip_filter;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterImpl;->filter:Lorg/libtorrent4j/swig/ip_filter;

    return-void
.end method


# virtual methods
.method public addRange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/proninyaroslav/libretorrent/core/exception/IPFilterException;
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-static {p1, v0}, Lorg/libtorrent4j/swig/address;->from_string(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/address;

    move-result-object v1

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->clear()V

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p2, v0}, Lorg/libtorrent4j/swig/address;->from_string(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/address;

    move-result-object p1

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/address;->is_v4()Z

    move-result p2

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/address;->is_v4()Z

    move-result v0

    if-ne p2, v0, :cond_1

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/address;->is_v6()Z

    move-result p2

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/address;->is_v6()Z

    move-result v0

    if-ne p2, v0, :cond_1

    :goto_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterImpl;->filter:Lorg/libtorrent4j/swig/ip_filter;

    sget-object p2, Lorg/libtorrent4j/swig/ip_filter$access_flags;->blocked:Lorg/libtorrent4j/swig/ip_filter$access_flags;

    invoke-virtual {p2}, Lorg/libtorrent4j/swig/ip_filter$access_flags;->swigValue()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {p0, v1, p1, v2, v3}, Lorg/libtorrent4j/swig/ip_filter;->add_rule(Lorg/libtorrent4j/swig/address;Lorg/libtorrent4j/swig/address;J)V

    return-void

    :cond_1
    new-instance p0, Lorg/proninyaroslav/libretorrent/core/exception/IPFilterException;

    const-string p1, "IP range is malformed. One IP is IPv6 and the other is IPv4!"

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/exception/IPFilterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/proninyaroslav/libretorrent/core/exception/IPFilterException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid last IP in range: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/exception/IPFilterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/proninyaroslav/libretorrent/core/exception/IPFilterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid first IP in range: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/exception/IPFilterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFilter()Lorg/libtorrent4j/swig/ip_filter;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/IPFilterImpl;->filter:Lorg/libtorrent4j/swig/ip_filter;

    return-object p0
.end method
