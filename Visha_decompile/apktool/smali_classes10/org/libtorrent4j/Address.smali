.class public final Lorg/libtorrent4j/Address;
.super Lorg/libtorrent4j/SwigObject;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/libtorrent4j/SwigObject<",
        "Lorg/libtorrent4j/swig/address;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/libtorrent4j/Address;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lorg/libtorrent4j/swig/address;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/address;-><init>()V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/address;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/libtorrent4j/SwigObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static parseIp(Ljava/lang/String;)Lorg/libtorrent4j/Address;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    invoke-static {p0, v0}, Lorg/libtorrent4j/swig/address;->from_string(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/address;

    move-result-object p0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/libtorrent4j/Address;

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/libtorrent4j/Address;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/Address;->compareTo(Lorg/libtorrent4j/Address;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/libtorrent4j/Address;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/address;

    iget-object p1, p1, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p1, Lorg/libtorrent4j/swig/address;

    invoke-static {p0, p1}, Lorg/libtorrent4j/swig/address;->compare(Lorg/libtorrent4j/swig/address;Lorg/libtorrent4j/swig/address;)I

    move-result p0

    return p0
.end method

.method public copy()Lorg/libtorrent4j/Address;
    .locals 2

    new-instance v0, Lorg/libtorrent4j/Address;

    new-instance v1, Lorg/libtorrent4j/swig/address;

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/address;

    invoke-direct {v1, p0}, Lorg/libtorrent4j/swig/address;-><init>(Lorg/libtorrent4j/swig/address;)V

    invoke-direct {v0, v1}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/libtorrent4j/Address;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/libtorrent4j/Address;

    invoke-virtual {p0, p1}, Lorg/libtorrent4j/Address;->compareTo(Lorg/libtorrent4j/Address;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/address;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/address;->hash_code()I

    move-result p0

    return p0
.end method

.method public isLoopback()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/address;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/address;->is_loopback()Z

    move-result p0

    return p0
.end method

.method public isMulticast()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/address;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/address;->is_multicast()Z

    move-result p0

    return p0
.end method

.method public isUnspecified()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/address;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/address;->is_unspecified()Z

    move-result p0

    return p0
.end method

.method public isV4()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/address;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/address;->is_v4()Z

    move-result p0

    return p0
.end method

.method public isV6()Z
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/address;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/address;->is_v6()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/SwigObject;->h:Ljava/lang/Object;

    check-cast p0, Lorg/libtorrent4j/swig/address;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/address;->to_string()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
