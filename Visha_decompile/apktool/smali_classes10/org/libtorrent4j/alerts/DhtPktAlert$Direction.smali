.class public final enum Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/alerts/DhtPktAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

.field public static final enum INCOMING:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

.field public static final enum OUTGOING:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->INCOMING:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    sget-object v1, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->OUTGOING:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    sget-object v2, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->UNKNOWN:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    filled-new-array {v0, v1, v2}, [Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    sget-object v1, Lorg/libtorrent4j/swig/dht_pkt_alert$direction_t;->incoming:Lorg/libtorrent4j/swig/dht_pkt_alert$direction_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_pkt_alert$direction_t;->swigValue()I

    move-result v1

    const-string v2, "INCOMING"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->INCOMING:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    new-instance v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    sget-object v1, Lorg/libtorrent4j/swig/dht_pkt_alert$direction_t;->outgoing:Lorg/libtorrent4j/swig/dht_pkt_alert$direction_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_pkt_alert$direction_t;->swigValue()I

    move-result v1

    const-string v2, "OUTGOING"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->OUTGOING:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    new-instance v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->UNKNOWN:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    invoke-static {}, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->$values()[Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->$VALUES:[Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

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

    iput p3, p0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;
    .locals 5

    const-class v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->UNKNOWN:Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;
    .locals 1

    const-class v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->$VALUES:[Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    invoke-virtual {v0}, [Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/alerts/DhtPktAlert$Direction;->swigValue:I

    return p0
.end method
