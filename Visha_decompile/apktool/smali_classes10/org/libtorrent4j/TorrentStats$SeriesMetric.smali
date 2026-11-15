.class public final enum Lorg/libtorrent4j/TorrentStats$SeriesMetric;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/libtorrent4j/TorrentStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeriesMetric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/libtorrent4j/TorrentStats$SeriesMetric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/libtorrent4j/TorrentStats$SeriesMetric;

.field public static final enum DOWNLOAD_RATE:Lorg/libtorrent4j/TorrentStats$SeriesMetric;

.field public static final enum TIME:Lorg/libtorrent4j/TorrentStats$SeriesMetric;

.field public static final enum UPLOAD_RATE:Lorg/libtorrent4j/TorrentStats$SeriesMetric;


# direct methods
.method private static synthetic $values()[Lorg/libtorrent4j/TorrentStats$SeriesMetric;
    .locals 3

    sget-object v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;->TIME:Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    sget-object v1, Lorg/libtorrent4j/TorrentStats$SeriesMetric;->DOWNLOAD_RATE:Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    sget-object v2, Lorg/libtorrent4j/TorrentStats$SeriesMetric;->UPLOAD_RATE:Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    filled-new-array {v0, v1, v2}, [Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    const-string v1, "TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/libtorrent4j/TorrentStats$SeriesMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;->TIME:Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    new-instance v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    const-string v1, "DOWNLOAD_RATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/libtorrent4j/TorrentStats$SeriesMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;->DOWNLOAD_RATE:Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    new-instance v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    const-string v1, "UPLOAD_RATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/libtorrent4j/TorrentStats$SeriesMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;->UPLOAD_RATE:Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    invoke-static {}, Lorg/libtorrent4j/TorrentStats$SeriesMetric;->$values()[Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    move-result-object v0

    sput-object v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;->$VALUES:[Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/libtorrent4j/TorrentStats$SeriesMetric;
    .locals 1

    const-class v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    return-object p0
.end method

.method public static values()[Lorg/libtorrent4j/TorrentStats$SeriesMetric;
    .locals 1

    sget-object v0, Lorg/libtorrent4j/TorrentStats$SeriesMetric;->$VALUES:[Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    invoke-virtual {v0}, [Lorg/libtorrent4j/TorrentStats$SeriesMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/libtorrent4j/TorrentStats$SeriesMetric;

    return-object v0
.end method
