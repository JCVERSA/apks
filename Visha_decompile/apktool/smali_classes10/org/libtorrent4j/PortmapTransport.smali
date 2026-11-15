.class public final enum Lorg/libtorrent4j/PortmapTransport;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/PortmapTransport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/PortmapTransport;

.field public static final enum NAT_PMP:Lorg/libtorrent4j/PortmapTransport;

.field public static final enum UPNP:Lorg/libtorrent4j/PortmapTransport;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/PortmapTransport;
    .locals 2

    sget-object v0, Lorg/libtorrent4j/PortmapTransport;->NAT_PMP:Lorg/libtorrent4j/PortmapTransport;

    sget-object v1, Lorg/libtorrent4j/PortmapTransport;->UPNP:Lorg/libtorrent4j/PortmapTransport;

    filled-new-array {v0, v1}, [Lorg/libtorrent4j/PortmapTransport;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/PortmapTransport;

    sget-object v1, Lorg/libtorrent4j/swig/portmap_transport;->natpmp:Lorg/libtorrent4j/swig/portmap_transport;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/portmap_transport;->swigValue()I

    move-result v1

    const-string v2, "NAT_PMP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/PortmapTransport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/PortmapTransport;->NAT_PMP:Lorg/libtorrent4j/PortmapTransport;

    new-instance v0, Lorg/libtorrent4j/PortmapTransport;

    sget-object v1, Lorg/libtorrent4j/swig/portmap_transport;->upnp:Lorg/libtorrent4j/swig/portmap_transport;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/portmap_transport;->swigValue()I

    move-result v1

    const-string v2, "UPNP"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/PortmapTransport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/PortmapTransport;->UPNP:Lorg/libtorrent4j/PortmapTransport;

    invoke-static {}, Lorg/libtorrent4j/PortmapTransport;->$values()[Lorg/libtorrent4j/PortmapTransport;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/PortmapTransport;->$VALUES:[Lorg/libtorrent4j/PortmapTransport;

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

    iput p3, p0, Lorg/libtorrent4j/PortmapTransport;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/PortmapTransport;
    .locals 6

    const-class v0, Lorg/libtorrent4j/PortmapTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/libtorrent4j/PortmapTransport;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/libtorrent4j/PortmapTransport;->swig()I

    move-result v5

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No enum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with value "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/PortmapTransport;
    .locals 1

    const-class v0, Lorg/libtorrent4j/PortmapTransport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/PortmapTransport;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/PortmapTransport;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/PortmapTransport;->$VALUES:[Lorg/libtorrent4j/PortmapTransport;

    invoke-virtual {v0}, [Lorg/libtorrent4j/PortmapTransport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/PortmapTransport;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/PortmapTransport;->swigValue:I

    return p0
.end method
