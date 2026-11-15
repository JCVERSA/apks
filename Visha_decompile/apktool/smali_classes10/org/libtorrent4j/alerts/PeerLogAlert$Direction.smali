.class public final enum Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/alerts/PeerLogAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

.field public static final enum INCOMING:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

.field public static final enum INCOMING_MESSAGE:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

.field public static final enum INFO:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

.field public static final enum OUTGOING:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

.field public static final enum OUTGOING_MESSAGE:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;
    .locals 6

    sget-object v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->INCOMING_MESSAGE:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v1, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->OUTGOING_MESSAGE:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v2, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->INCOMING:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v3, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->OUTGOING:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v4, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->INFO:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v5, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->UNKNOWN:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    filled-new-array/range {v0 .. v5}, [Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v1, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->incoming_message:Lorg/libtorrent4j/swig/peer_log_alert$direction_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->swigValue()I

    move-result v1

    const-string v2, "INCOMING_MESSAGE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->INCOMING_MESSAGE:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v1, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->outgoing_message:Lorg/libtorrent4j/swig/peer_log_alert$direction_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->swigValue()I

    move-result v1

    const-string v2, "OUTGOING_MESSAGE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->OUTGOING_MESSAGE:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v1, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->incoming:Lorg/libtorrent4j/swig/peer_log_alert$direction_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->swigValue()I

    move-result v1

    const-string v2, "INCOMING"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->INCOMING:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v1, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->outgoing:Lorg/libtorrent4j/swig/peer_log_alert$direction_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->swigValue()I

    move-result v1

    const-string v2, "OUTGOING"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->OUTGOING:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    sget-object v1, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->info:Lorg/libtorrent4j/swig/peer_log_alert$direction_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/peer_log_alert$direction_t;->swigValue()I

    move-result v1

    const-string v2, "INFO"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->INFO:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    new-instance v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    const/4 v1, 0x5

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->UNKNOWN:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    invoke-static {}, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->$values()[Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->$VALUES:[Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

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

    iput p3, p0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;
    .locals 5

    const-class v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->UNKNOWN:Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;
    .locals 1

    const-class v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->$VALUES:[Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    invoke-virtual {v0}, [Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;->swigValue:I

    return p0
.end method
