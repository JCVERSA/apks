.class public final enum Lorg/libtorrent4j/TorrentStatus$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/TorrentStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/TorrentStatus$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/TorrentStatus$State;

.field public static final enum CHECKING_FILES:Lorg/libtorrent4j/TorrentStatus$State;

.field public static final enum CHECKING_RESUME_DATA:Lorg/libtorrent4j/TorrentStatus$State;

.field public static final enum DOWNLOADING:Lorg/libtorrent4j/TorrentStatus$State;

.field public static final enum DOWNLOADING_METADATA:Lorg/libtorrent4j/TorrentStatus$State;

.field public static final enum FINISHED:Lorg/libtorrent4j/TorrentStatus$State;

.field public static final enum SEEDING:Lorg/libtorrent4j/TorrentStatus$State;

.field public static final enum UNKNOWN:Lorg/libtorrent4j/TorrentStatus$State;


# instance fields
.field private final swigValue:I


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/TorrentStatus$State;
    .locals 7

    sget-object v0, Lorg/libtorrent4j/TorrentStatus$State;->CHECKING_FILES:Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v1, Lorg/libtorrent4j/TorrentStatus$State;->DOWNLOADING_METADATA:Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v2, Lorg/libtorrent4j/TorrentStatus$State;->DOWNLOADING:Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v3, Lorg/libtorrent4j/TorrentStatus$State;->FINISHED:Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v4, Lorg/libtorrent4j/TorrentStatus$State;->SEEDING:Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v5, Lorg/libtorrent4j/TorrentStatus$State;->CHECKING_RESUME_DATA:Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v6, Lorg/libtorrent4j/TorrentStatus$State;->UNKNOWN:Lorg/libtorrent4j/TorrentStatus$State;

    filled-new-array/range {v0 .. v6}, [Lorg/libtorrent4j/TorrentStatus$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v1, Lorg/libtorrent4j/swig/torrent_status$state_t;->checking_files:Lorg/libtorrent4j/swig/torrent_status$state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result v1

    const-string v2, "CHECKING_FILES"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/TorrentStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/TorrentStatus$State;->CHECKING_FILES:Lorg/libtorrent4j/TorrentStatus$State;

    new-instance v0, Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v1, Lorg/libtorrent4j/swig/torrent_status$state_t;->downloading_metadata:Lorg/libtorrent4j/swig/torrent_status$state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result v1

    const-string v2, "DOWNLOADING_METADATA"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/TorrentStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/TorrentStatus$State;->DOWNLOADING_METADATA:Lorg/libtorrent4j/TorrentStatus$State;

    new-instance v0, Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v1, Lorg/libtorrent4j/swig/torrent_status$state_t;->downloading:Lorg/libtorrent4j/swig/torrent_status$state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result v1

    const-string v2, "DOWNLOADING"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/TorrentStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/TorrentStatus$State;->DOWNLOADING:Lorg/libtorrent4j/TorrentStatus$State;

    new-instance v0, Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v1, Lorg/libtorrent4j/swig/torrent_status$state_t;->finished:Lorg/libtorrent4j/swig/torrent_status$state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result v1

    const-string v2, "FINISHED"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/TorrentStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/TorrentStatus$State;->FINISHED:Lorg/libtorrent4j/TorrentStatus$State;

    new-instance v0, Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v1, Lorg/libtorrent4j/swig/torrent_status$state_t;->seeding:Lorg/libtorrent4j/swig/torrent_status$state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result v1

    const-string v2, "SEEDING"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/TorrentStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/TorrentStatus$State;->SEEDING:Lorg/libtorrent4j/TorrentStatus$State;

    new-instance v0, Lorg/libtorrent4j/TorrentStatus$State;

    sget-object v1, Lorg/libtorrent4j/swig/torrent_status$state_t;->checking_resume_data:Lorg/libtorrent4j/swig/torrent_status$state_t;

    invoke-virtual {v1}, Lorg/libtorrent4j/swig/torrent_status$state_t;->swigValue()I

    move-result v1

    const-string v2, "CHECKING_RESUME_DATA"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/libtorrent4j/TorrentStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/TorrentStatus$State;->CHECKING_RESUME_DATA:Lorg/libtorrent4j/TorrentStatus$State;

    new-instance v0, Lorg/libtorrent4j/TorrentStatus$State;

    const/4 v1, 0x6

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/libtorrent4j/TorrentStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/libtorrent4j/TorrentStatus$State;->UNKNOWN:Lorg/libtorrent4j/TorrentStatus$State;

    invoke-static {}, Lorg/libtorrent4j/TorrentStatus$State;->$values()[Lorg/libtorrent4j/TorrentStatus$State;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentStatus$State;->$VALUES:[Lorg/libtorrent4j/TorrentStatus$State;

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

    iput p3, p0, Lorg/libtorrent4j/TorrentStatus$State;->swigValue:I

    return-void
.end method

.method public static fromSwig(I)Lorg/libtorrent4j/TorrentStatus$State;
    .locals 5

    const-class v0, Lorg/libtorrent4j/TorrentStatus$State;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/TorrentStatus$State;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/libtorrent4j/TorrentStatus$State;->swig()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/libtorrent4j/TorrentStatus$State;->UNKNOWN:Lorg/libtorrent4j/TorrentStatus$State;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/TorrentStatus$State;
    .locals 1

    const-class v0, Lorg/libtorrent4j/TorrentStatus$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/TorrentStatus$State;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/TorrentStatus$State;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/TorrentStatus$State;->$VALUES:[Lorg/libtorrent4j/TorrentStatus$State;

    invoke-virtual {v0}, [Lorg/libtorrent4j/TorrentStatus$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/TorrentStatus$State;

    return-object v0
.end method


# virtual methods
.method public swig()I
    .locals 0

    iget p0, p0, Lorg/libtorrent4j/TorrentStatus$State;->swigValue:I

    return p0
.end method
