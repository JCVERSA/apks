.class public final Lorg/libtorrent4j/EnumNet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libtorrent4j/EnumNet$IpInterface;,
        Lorg/libtorrent4j/EnumNet$IpRoute;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceForAddress(Lorg/libtorrent4j/swig/session;Lorg/libtorrent4j/Address;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/address;

    invoke-static {p0, p1, v0}, Lorg/libtorrent4j/swig/libtorrent;->device_for_address(Lorg/libtorrent4j/swig/session;Lorg/libtorrent4j/swig/address;Lorg/libtorrent4j/swig/error_code;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enumInterfaces(Lorg/libtorrent4j/swig/session;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/swig/session;",
            ")",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/EnumNet$IpInterface;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent;->enum_net_interfaces(Lorg/libtorrent4j/swig/session;)Lorg/libtorrent4j/swig/ip_interface_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/ip_interface_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libtorrent4j/swig/ip_interface;

    new-instance v2, Lorg/libtorrent4j/EnumNet$IpInterface;

    invoke-direct {v2, v0}, Lorg/libtorrent4j/EnumNet$IpInterface;-><init>(Lorg/libtorrent4j/swig/ip_interface;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static enumRoutes(Lorg/libtorrent4j/swig/session;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/swig/session;",
            ")",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/EnumNet$IpRoute;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lorg/libtorrent4j/swig/libtorrent;->enum_routes(Lorg/libtorrent4j/swig/session;)Lorg/libtorrent4j/swig/ip_route_vector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/ip_route_vector;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libtorrent4j/swig/ip_route;

    new-instance v2, Lorg/libtorrent4j/EnumNet$IpRoute;

    invoke-direct {v2, v0}, Lorg/libtorrent4j/EnumNet$IpRoute;-><init>(Lorg/libtorrent4j/swig/ip_route;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getGateway(Lorg/libtorrent4j/EnumNet$IpInterface;Ljava/util/List;)Lorg/libtorrent4j/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/EnumNet$IpInterface;",
            "Ljava/util/List<",
            "Lorg/libtorrent4j/EnumNet$IpRoute;",
            ">;)",
            "Lorg/libtorrent4j/Address;"
        }
    .end annotation

    new-instance v0, Lorg/libtorrent4j/swig/ip_route_vector;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/ip_route_vector;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/EnumNet$IpRoute;

    invoke-virtual {v1}, Lorg/libtorrent4j/EnumNet$IpRoute;->toSwig()Lorg/libtorrent4j/swig/ip_route;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_route_vector;->add(Lorg/libtorrent4j/swig/ip_route;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/libtorrent4j/EnumNet$IpInterface;->toSwig()Lorg/libtorrent4j/swig/ip_interface;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/libtorrent4j/swig/libtorrent;->get_gateway(Lorg/libtorrent4j/swig/ip_interface;Lorg/libtorrent4j/swig/ip_route_vector;)Lorg/libtorrent4j/swig/address;

    move-result-object p0

    new-instance p1, Lorg/libtorrent4j/Address;

    invoke-direct {p1, p0}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    return-object p1
.end method
