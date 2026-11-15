.class public final Lorg/libtorrent4j/swig/socket_type_t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final http:Lorg/libtorrent4j/swig/socket_type_t;

.field public static final http_ssl:Lorg/libtorrent4j/swig/socket_type_t;

.field public static final i2p:Lorg/libtorrent4j/swig/socket_type_t;

.field public static final rtc:Lorg/libtorrent4j/swig/socket_type_t;

.field public static final socks5:Lorg/libtorrent4j/swig/socket_type_t;

.field public static final socks5_ssl:Lorg/libtorrent4j/swig/socket_type_t;

.field private static swigNext:I

.field private static swigValues:[Lorg/libtorrent4j/swig/socket_type_t;

.field public static final tcp:Lorg/libtorrent4j/swig/socket_type_t;

.field public static final tcp_ssl:Lorg/libtorrent4j/swig/socket_type_t;

.field public static final utp:Lorg/libtorrent4j/swig/socket_type_t;

.field public static final utp_ssl:Lorg/libtorrent4j/swig/socket_type_t;


# instance fields
.field private final swigName:Ljava/lang/String;

.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v1, "tcp"

    invoke-direct {v0, v1}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/libtorrent4j/swig/socket_type_t;->tcp:Lorg/libtorrent4j/swig/socket_type_t;

    new-instance v1, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v2, "socks5"

    invoke-direct {v1, v2}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/libtorrent4j/swig/socket_type_t;->socks5:Lorg/libtorrent4j/swig/socket_type_t;

    new-instance v2, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v3, "http"

    invoke-direct {v2, v3}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v2, Lorg/libtorrent4j/swig/socket_type_t;->http:Lorg/libtorrent4j/swig/socket_type_t;

    new-instance v3, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v4, "utp"

    invoke-direct {v3, v4}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v3, Lorg/libtorrent4j/swig/socket_type_t;->utp:Lorg/libtorrent4j/swig/socket_type_t;

    new-instance v4, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v5, "i2p"

    invoke-direct {v4, v5}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v4, Lorg/libtorrent4j/swig/socket_type_t;->i2p:Lorg/libtorrent4j/swig/socket_type_t;

    new-instance v5, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v6, "rtc"

    invoke-direct {v5, v6}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v5, Lorg/libtorrent4j/swig/socket_type_t;->rtc:Lorg/libtorrent4j/swig/socket_type_t;

    new-instance v6, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v7, "tcp_ssl"

    invoke-direct {v6, v7}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v6, Lorg/libtorrent4j/swig/socket_type_t;->tcp_ssl:Lorg/libtorrent4j/swig/socket_type_t;

    new-instance v7, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v8, "socks5_ssl"

    invoke-direct {v7, v8}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v7, Lorg/libtorrent4j/swig/socket_type_t;->socks5_ssl:Lorg/libtorrent4j/swig/socket_type_t;

    new-instance v8, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v9, "http_ssl"

    invoke-direct {v8, v9}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v8, Lorg/libtorrent4j/swig/socket_type_t;->http_ssl:Lorg/libtorrent4j/swig/socket_type_t;

    new-instance v9, Lorg/libtorrent4j/swig/socket_type_t;

    const-string v10, "utp_ssl"

    invoke-direct {v9, v10}, Lorg/libtorrent4j/swig/socket_type_t;-><init>(Ljava/lang/String;)V

    sput-object v9, Lorg/libtorrent4j/swig/socket_type_t;->utp_ssl:Lorg/libtorrent4j/swig/socket_type_t;

    filled-new-array/range {v0 .. v9}, [Lorg/libtorrent4j/swig/socket_type_t;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/swig/socket_type_t;->swigValues:[Lorg/libtorrent4j/swig/socket_type_t;

    const/4 v0, 0x0

    sput v0, Lorg/libtorrent4j/swig/socket_type_t;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/libtorrent4j/swig/socket_type_t;->swigName:Ljava/lang/String;

    .line 3
    sget p1, Lorg/libtorrent4j/swig/socket_type_t;->swigNext:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lorg/libtorrent4j/swig/socket_type_t;->swigNext:I

    iput p1, p0, Lorg/libtorrent4j/swig/socket_type_t;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/libtorrent4j/swig/socket_type_t;->swigName:Ljava/lang/String;

    .line 6
    iput p2, p0, Lorg/libtorrent4j/swig/socket_type_t;->swigValue:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lorg/libtorrent4j/swig/socket_type_t;->swigNext:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/libtorrent4j/swig/socket_type_t;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/libtorrent4j/swig/socket_type_t;->swigName:Ljava/lang/String;

    .line 10
    iget p1, p2, Lorg/libtorrent4j/swig/socket_type_t;->swigValue:I

    iput p1, p0, Lorg/libtorrent4j/swig/socket_type_t;->swigValue:I

    add-int/lit8 p1, p1, 0x1

    .line 11
    sput p1, Lorg/libtorrent4j/swig/socket_type_t;->swigNext:I

    return-void
.end method

.method public static swigToEnum(I)Lorg/libtorrent4j/swig/socket_type_t;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/swig/socket_type_t;->swigValues:[Lorg/libtorrent4j/swig/socket_type_t;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    if-ltz p0, :cond_0

    aget-object v0, v0, p0

    iget v1, v0, Lorg/libtorrent4j/swig/socket_type_t;->swigValue:I

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/libtorrent4j/swig/socket_type_t;->swigValues:[Lorg/libtorrent4j/swig/socket_type_t;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    iget v2, v1, Lorg/libtorrent4j/swig/socket_type_t;->swigValue:I

    if-ne v2, p0, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/libtorrent4j/swig/socket_type_t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/swig/socket_type_t;->swigValue:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/libtorrent4j/swig/socket_type_t;->swigName:Ljava/lang/String;

    return-object p0
.end method
