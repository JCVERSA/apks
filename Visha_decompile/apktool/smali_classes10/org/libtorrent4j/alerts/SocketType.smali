.class public final enum Lorg/libtorrent4j/alerts/SocketType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/alerts/SocketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum HTTP:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum HTTP_SSL:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum I2P:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum RTC:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum SOCKS5:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum SOCKS5_SSL:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum TCP:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum TCP_SSL:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum UTP:Lorg/libtorrent4j/alerts/SocketType;

.field public static final enum UTP_SSL:Lorg/libtorrent4j/alerts/SocketType;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/alerts/SocketType;
    .locals 11

    sget-object v0, Lorg/libtorrent4j/alerts/SocketType;->TCP:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/alerts/SocketType;->TCP_SSL:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v2, Lorg/libtorrent4j/alerts/SocketType;->UTP:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v3, Lorg/libtorrent4j/alerts/SocketType;->I2P:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v4, Lorg/libtorrent4j/alerts/SocketType;->SOCKS5:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v5, Lorg/libtorrent4j/alerts/SocketType;->SOCKS5_SSL:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v6, Lorg/libtorrent4j/alerts/SocketType;->UTP_SSL:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v7, Lorg/libtorrent4j/alerts/SocketType;->HTTP:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v8, Lorg/libtorrent4j/alerts/SocketType;->HTTP_SSL:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v9, Lorg/libtorrent4j/alerts/SocketType;->RTC:Lorg/libtorrent4j/alerts/SocketType;

    sget-object v10, Lorg/libtorrent4j/alerts/SocketType;->UNKNOWN:Lorg/libtorrent4j/alerts/SocketType;

    filled-new-array/range {v0 .. v10}, [Lorg/libtorrent4j/alerts/SocketType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->tcp:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "TCP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->TCP:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->tcp_ssl:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "TCP_SSL"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->TCP_SSL:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->utp:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "UTP"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->UTP:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->i2p:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "I2P"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->I2P:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->socks5:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "SOCKS5"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->SOCKS5:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->socks5_ssl:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "SOCKS5_SSL"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->SOCKS5_SSL:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->utp_ssl:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "UTP_SSL"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->UTP_SSL:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->http:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "HTTP"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->HTTP:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->http_ssl:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "HTTP_SSL"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->HTTP_SSL:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->rtc:Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/socket_type_t;->swigValue()I

    move-result v1

    const-string v2, "RTC"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->RTC:Lorg/libtorrent4j/alerts/SocketType;

    new-instance v0, Lorg/libtorrent4j/alerts/SocketType;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/alerts/SocketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->UNKNOWN:Lorg/libtorrent4j/alerts/SocketType;

    invoke-static {}, Lorg/libtorrent4j/alerts/SocketType;->$values()[Lorg/libtorrent4j/alerts/SocketType;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/alerts/SocketType;->$VALUES:[Lorg/libtorrent4j/alerts/SocketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/libtorrent4j/alerts/SocketType;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/alerts/SocketType;
    .locals 5

    const-class v0, Lorg/libtorrent4j/alerts/SocketType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/SocketType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/alerts/SocketType;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/alerts/SocketType;->UNKNOWN:Lorg/libtorrent4j/alerts/SocketType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/alerts/SocketType;
    .locals 1

    const-class v0, Lorg/libtorrent4j/alerts/SocketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/alerts/SocketType;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/alerts/SocketType;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/alerts/SocketType;->$VALUES:[Lorg/libtorrent4j/alerts/SocketType;

    invoke-virtual {v0}, [Lorg/libtorrent4j/alerts/SocketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/SocketType;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/alerts/SocketType;->swigValue:I

    return p0
.end method
