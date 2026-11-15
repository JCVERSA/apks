.class public final enum Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/alerts/DhtLogAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DhtModule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

.field public static final enum NODE:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

.field public static final enum ROUTING_TABLE:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

.field public static final enum RPC_MANAGER:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

.field public static final enum TRACKER:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

.field public static final enum TRAVERSAL:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;
    .locals 6

    sget-object v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->TRACKER:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v1, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->NODE:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v2, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->ROUTING_TABLE:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v3, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->RPC_MANAGER:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v4, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->TRAVERSAL:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v5, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->UNKNOWN:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    filled-new-array/range {v0 .. v5}, [Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v1, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->tracker:Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->swigValue()I

    move-result v1

    const-string v2, "TRACKER"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->TRACKER:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    new-instance v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v1, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->node:Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->swigValue()I

    move-result v1

    const-string v2, "NODE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->NODE:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    new-instance v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v1, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->routing_table:Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->swigValue()I

    move-result v1

    const-string v2, "ROUTING_TABLE"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->ROUTING_TABLE:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    new-instance v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v1, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->rpc_manager:Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->swigValue()I

    move-result v1

    const-string v2, "RPC_MANAGER"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->RPC_MANAGER:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    new-instance v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    sget-object v1, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->traversal:Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/dht_log_alert$dht_module_t;->swigValue()I

    move-result v1

    const-string v2, "TRAVERSAL"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->TRAVERSAL:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    new-instance v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    const/4 v1, 0x5

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->UNKNOWN:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    invoke-static {}, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->$values()[Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->$VALUES:[Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

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

    iput p3, p0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;
    .locals 5

    const-class v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->UNKNOWN:Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;
    .locals 1

    const-class v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->$VALUES:[Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    invoke-virtual {v0}, [Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;->swigValue:I

    return p0
.end method
