.class public final enum Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/alerts/TrackerAnnounceAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackerAnnounceEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

.field public static final enum COMPLETED:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

.field public static final enum NONE:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

.field public static final enum STARTED:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

.field public static final enum STOPPED:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;
    .locals 5

    sget-object v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->NONE:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    sget-object v1, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->COMPLETED:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    sget-object v2, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->STARTED:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    sget-object v3, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->STOPPED:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    sget-object v4, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->UNKNOWN:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->NONE:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    new-instance v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    const-string v1, "COMPLETED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->COMPLETED:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    new-instance v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    const-string v1, "STARTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->STARTED:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    new-instance v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    const-string v1, "STOPPED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->STOPPED:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    new-instance v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->UNKNOWN:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    invoke-static {}, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->$values()[Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->$VALUES:[Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

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

    iput p3, p0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;
    .locals 5

    const-class v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->getSwig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->UNKNOWN:Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;
    .locals 1

    const-class v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->$VALUES:[Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    invoke-virtual {v0}, [Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;

    return-object v0
.end method


# virtual methods
.method public getSwig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/alerts/TrackerAnnounceAlert$TrackerAnnounceEvent;->swigValue:I

    return p0
.end method
