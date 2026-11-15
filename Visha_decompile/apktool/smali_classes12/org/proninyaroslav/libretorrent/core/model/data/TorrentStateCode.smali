.class public final enum Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public static final enum CHECKING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public static final enum DOWNLOADING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public static final enum DOWNLOADING_METADATA:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public static final enum ERROR:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public static final enum FINISHED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public static final enum PAUSED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public static final enum SEEDING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public static final enum STOPPED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

.field public static final enum UNKNOWN:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;
    .locals 9

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->UNKNOWN:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->ERROR:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->SEEDING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->PAUSED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    sget-object v5, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->STOPPED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    sget-object v6, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->CHECKING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    sget-object v7, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING_METADATA:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    sget-object v8, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->FINISHED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    filled-new-array/range {v0 .. v8}, [Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->UNKNOWN:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->ERROR:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const-string v1, "SEEDING"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->SEEDING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const-string v1, "PAUSED"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->PAUSED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const-string v1, "STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->STOPPED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const-string v1, "CHECKING"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->CHECKING:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const-string v1, "DOWNLOADING_METADATA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->DOWNLOADING_METADATA:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    const-string v1, "FINISHED"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->FINISHED:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->$values()[Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

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

    iput p3, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->value:I

    return-void
.end method

.method public static fromValue(I)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;
    .locals 5

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->UNKNOWN:Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 0

    iget p0, p0, Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;->value:I

    return p0
.end method
