.class public final enum Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/alerts/PeerBlockedAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

.field public static final enum I2P_MIXED:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

.field public static final enum INVALID_LOCAL_INTERFACE:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

.field public static final enum IP_FILTER:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

.field public static final enum PORT_FILTER:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

.field public static final enum PRIVILEGED_PORTS:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

.field public static final enum SSRF_MITIGATION:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

.field public static final enum TCP_DISABLED:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

.field public static final enum UTP_DISABLED:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;
    .locals 9

    sget-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->IP_FILTER:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v1, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->PORT_FILTER:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v2, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->I2P_MIXED:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v3, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->PRIVILEGED_PORTS:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v4, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->UTP_DISABLED:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v5, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->TCP_DISABLED:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v6, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->INVALID_LOCAL_INTERFACE:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v7, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->SSRF_MITIGATION:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v8, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->UNKNOWN:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    filled-new-array/range {v0 .. v8}, [Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v1, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->ip_filter:Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->swigValue()I

    move-result v1

    const-string v2, "IP_FILTER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->IP_FILTER:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v1, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->port_filter:Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->swigValue()I

    move-result v1

    const-string v2, "PORT_FILTER"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->PORT_FILTER:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v1, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->i2p_mixed:Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->swigValue()I

    move-result v1

    const-string v2, "I2P_MIXED"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->I2P_MIXED:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v1, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->privileged_ports:Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->swigValue()I

    move-result v1

    const-string v2, "PRIVILEGED_PORTS"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->PRIVILEGED_PORTS:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v1, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->utp_disabled:Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->swigValue()I

    move-result v1

    const-string v2, "UTP_DISABLED"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->UTP_DISABLED:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v1, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->tcp_disabled:Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->swigValue()I

    move-result v1

    const-string v2, "TCP_DISABLED"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->TCP_DISABLED:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v1, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->invalid_local_interface:Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->swigValue()I

    move-result v1

    const-string v2, "INVALID_LOCAL_INTERFACE"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->INVALID_LOCAL_INTERFACE:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    sget-object v1, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->ssrf_mitigation:Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_blocked_alert$reason_t;->swigValue()I

    move-result v1

    const-string v2, "SSRF_MITIGATION"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->SSRF_MITIGATION:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    const/16 v1, 0x8

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->UNKNOWN:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    invoke-static {}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->$values()[Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->$VALUES:[Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

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

    iput p3, p0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;
    .locals 5

    const-class v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->UNKNOWN:Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;
    .locals 1

    const-class v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->$VALUES:[Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    invoke-virtual {v0}, [Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/alerts/PeerBlockedAlert$Reason;->swigValue:I

    return p0
.end method
