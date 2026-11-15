.class public final Lorg/libtorrent4j/EnumNet$IpInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/EnumNet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpInterface"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final friendlyName:Ljava/lang/String;

.field private final interfaceAddress:Lorg/libtorrent4j/Address;

.field private final name:Ljava/lang/String;

.field private final netmask:Lorg/libtorrent4j/Address;

.field private final preferred:Z


# direct methods
.method public constructor <init>(Lorg/libtorrent4j/swig/ip_interface;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/libtorrent4j/Address;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_interface;->getInterface_address()Lorg/libtorrent4j/swig/address;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->interfaceAddress:Lorg/libtorrent4j/Address;

    new-instance v0, Lorg/libtorrent4j/Address;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_interface;->getNetmask()Lorg/libtorrent4j/swig/address;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->netmask:Lorg/libtorrent4j/Address;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_interface;->getName()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v0

    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->byte_vector2ascii(Lorg/libtorrent4j/swig/byte_vector;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_interface;->getFriendly_name()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v0

    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->byte_vector2ascii(Lorg/libtorrent4j/swig/byte_vector;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_interface;->getDescription()Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v0

    invoke-static {v0}, Lorg/libtorrent4j/Vectors;->byte_vector2ascii(Lorg/libtorrent4j/swig/byte_vector;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->description:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/libtorrent4j/swig/ip_interface;->getPreferred()Z

    move-result p1

    iput-boolean p1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->preferred:Z

    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->description:Ljava/lang/String;

    return-object p0
.end method

.method public friendlyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->friendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public interfaceAddress()Lorg/libtorrent4j/Address;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->interfaceAddress:Lorg/libtorrent4j/Address;

    return-object p0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->name:Ljava/lang/String;

    return-object p0
.end method

.method public netmask()Lorg/libtorrent4j/Address;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->netmask:Lorg/libtorrent4j/Address;

    return-object p0
.end method

.method public preferred()Z
    .locals 0

    iget-boolean p0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->preferred:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->interfaceAddress:Lorg/libtorrent4j/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", netmask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->netmask:Lorg/libtorrent4j/Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", friendlyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->friendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preferred: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->preferred:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toSwig()Lorg/libtorrent4j/swig/ip_interface;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/swig/ip_interface;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/ip_interface;-><init>()V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->interfaceAddress:Lorg/libtorrent4j/Address;

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/address;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_interface;->setInterface_address(Lorg/libtorrent4j/swig/address;)V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->netmask:Lorg/libtorrent4j/Address;

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/address;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_interface;->setNetmask(Lorg/libtorrent4j/swig/address;)V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/libtorrent4j/Vectors;->ascii2byte_vector(Ljava/lang/String;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_interface;->setName(Lorg/libtorrent4j/swig/byte_vector;)V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->friendlyName:Ljava/lang/String;

    invoke-static {v1}, Lorg/libtorrent4j/Vectors;->ascii2byte_vector(Ljava/lang/String;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_interface;->setFriendly_name(Lorg/libtorrent4j/swig/byte_vector;)V

    iget-object v1, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->description:Ljava/lang/String;

    invoke-static {v1}, Lorg/libtorrent4j/Vectors;->ascii2byte_vector(Ljava/lang/String;)Lorg/libtorrent4j/swig/byte_vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/ip_interface;->setDescription(Lorg/libtorrent4j/swig/byte_vector;)V

    iget-boolean p0, p0, Lorg/libtorrent4j/EnumNet$IpInterface;->preferred:Z

    invoke-virtual {v0, p0}, Lorg/libtorrent4j/swig/ip_interface;->setPreferred(Z)V

    return-object v0
.end method
