.class public final Lorg/libtorrent4j/EnumNet$IpRoute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/EnumNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpRoute"
.end annotation


# instance fields
.field private final destination:Lorg/libtorrent4j/Address;

.field private final gateway:Lorg/libtorrent4j/Address;

.field private final mtu:I

.field private final name:Ljava/lang/String;

.field private final netmask:Lorg/libtorrent4j/Address;

.field private final sourceHint:Lorg/libtorrent4j/Address;


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/ip_route;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/libtorrent4j/Address;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_route;->getDestination()Lorg/libtorrent4j/swig/address;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->destination:Lorg/libtorrent4j/Address;

    new-instance v0, Lorg/libtorrent4j/Address;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_route;->getNetmask()Lorg/libtorrent4j/swig/address;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->netmask:Lorg/libtorrent4j/Address;

    new-instance v0, Lorg/libtorrent4j/Address;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_route;->getGateway()Lorg/libtorrent4j/swig/address;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->gateway:Lorg/libtorrent4j/Address;

    new-instance v0, Lorg/libtorrent4j/Address;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_route;->getSource_hint()Lorg/libtorrent4j/swig/address;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->sourceHint:Lorg/libtorrent4j/Address;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_route;->getName()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v0

    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->byte_vector2ascii(Lorg/libtorrent4j/swig/byte_vector;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_route;->getMtu()I

    move-result p1

    iput p1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->mtu:I

    return-void
.end method


# virtual methods
.method public destination()Lorg/libtorrent4j/Address;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->destination:Lorg/libtorrent4j/Address;

    return-object p0
.end method

.method public gateway()Lorg/libtorrent4j/Address;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->gateway:Lorg/libtorrent4j/Address;

    return-object p0
.end method

.method public mtu()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->mtu:I

    return p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->name:Ljava/lang/String;

    return-object p0
.end method

.method public netmask()Lorg/libtorrent4j/Address;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->netmask:Lorg/libtorrent4j/Address;

    return-object p0
.end method

.method public sourceHint()Lorg/libtorrent4j/Address;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->sourceHint:Lorg/libtorrent4j/Address;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destination: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->destination:Lorg/libtorrent4j/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", netmask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->netmask:Lorg/libtorrent4j/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gateway: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->gateway:Lorg/libtorrent4j/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mtu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->mtu:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toSwig()Lorg/libtorrent4j/swig/ip_route;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/swig/ip_route;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/ip_route;-><init>()V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->destination:Lorg/libtorrent4j/Address;

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/address;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_route;->setDestination(Lorg/libtorrent4j/swig/address;)V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->netmask:Lorg/libtorrent4j/Address;

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/address;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_route;->setNetmask(Lorg/libtorrent4j/swig/address;)V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->gateway:Lorg/libtorrent4j/Address;

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/address;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_route;->setGateway(Lorg/libtorrent4j/swig/address;)V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->sourceHint:Lorg/libtorrent4j/Address;

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/address;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_route;->setSource_hint(Lorg/libtorrent4j/swig/address;)V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/libtorrent4j/Vectors;->ascii2byte_vector(Ljava/lang/String;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_route;->setName(Lorg/libtorrent4j/swig/byte_vector;)V

    iget p0, p0, Lorg/libtorrent4j/EnumNet$IpRoute;->mtu:I

    invoke-virtual {v0, p0}, Lorg/libtorrent4j/swig/ip_route;->setMtu(I)V

    return-object v0
.end method
