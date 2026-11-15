.class public final Lorg/libtorrent4j/TcpEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final endp:Lorg/libtorrent4j/swig/tcp_endpoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lorg/libtorrent4j/swig/tcp_endpoint;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/tcp_endpoint;-><init>()V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lorg/libtorrent4j/swig/error_code;

    invoke-direct {v0}, Lorg/libtorrent4j/swig/error_code;-><init>()V

    .line 7
    invoke-static {p1, v0}, Lorg/libtorrent4j/swig/address;->from_string(Ljava/lang/String;Lorg/libtorrent4j/swig/error_code;)Lorg/libtorrent4j/swig/address;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->value()I

    move-result v1

    if-nez v1, :cond_0

    .line 9
    new-instance v0, Lorg/libtorrent4j/swig/tcp_endpoint;

    invoke-direct {v0, p1, p2}, Lorg/libtorrent4j/swig/tcp_endpoint;-><init>(Lorg/libtorrent4j/swig/address;I)V

    iput-object v0, p0, Lorg/libtorrent4j/TcpEndpoint;->endp:Lorg/libtorrent4j/swig/tcp_endpoint;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/error_code;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/libtorrent4j/Address;I)V
    .locals 1

    .line 4
    new-instance v0, Lorg/libtorrent4j/swig/tcp_endpoint;

    invoke-virtual {p1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/libtorrent4j/swig/address;

    invoke-direct {v0, p1, p2}, Lorg/libtorrent4j/swig/tcp_endpoint;-><init>(Lorg/libtorrent4j/swig/address;I)V

    invoke-direct {p0, v0}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    return-void
.end method

.method public constructor <init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/TcpEndpoint;->endp:Lorg/libtorrent4j/swig/tcp_endpoint;

    return-void
.end method


# virtual methods
.method public address()Lorg/libtorrent4j/Address;
    .locals 1

    new-instance v0, Lorg/libtorrent4j/Address;

    iget-object p0, p0, Lorg/libtorrent4j/TcpEndpoint;->endp:Lorg/libtorrent4j/swig/tcp_endpoint;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tcp_endpoint;->address()Lorg/libtorrent4j/swig/address;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/libtorrent4j/Address;-><init>(Lorg/libtorrent4j/swig/address;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/libtorrent4j/TcpEndpoint;->clone()Lorg/libtorrent4j/TcpEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lorg/libtorrent4j/TcpEndpoint;
    .locals 2

    .line 2
    new-instance v0, Lorg/libtorrent4j/TcpEndpoint;

    new-instance v1, Lorg/libtorrent4j/swig/tcp_endpoint;

    iget-object p0, p0, Lorg/libtorrent4j/TcpEndpoint;->endp:Lorg/libtorrent4j/swig/tcp_endpoint;

    invoke-direct {v1, p0}, Lorg/libtorrent4j/swig/tcp_endpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    invoke-direct {v0, v1}, Lorg/libtorrent4j/TcpEndpoint;-><init>(Lorg/libtorrent4j/swig/tcp_endpoint;)V

    return-object v0
.end method

.method public port()I
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TcpEndpoint;->endp:Lorg/libtorrent4j/swig/tcp_endpoint;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tcp_endpoint;->port()I

    move-result p0

    return p0
.end method

.method public swig()Lorg/libtorrent4j/swig/tcp_endpoint;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/TcpEndpoint;->endp:Lorg/libtorrent4j/swig/tcp_endpoint;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/libtorrent4j/TcpEndpoint;->endp:Lorg/libtorrent4j/swig/tcp_endpoint;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/tcp_endpoint;->address()Lorg/libtorrent4j/swig/address;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/address;->to_string()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tcp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/libtorrent4j/swig/address;->is_v4()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/libtorrent4j/TcpEndpoint;->endp:Lorg/libtorrent4j/swig/tcp_endpoint;

    invoke-virtual {p0}, Lorg/libtorrent4j/swig/tcp_endpoint;->port()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
