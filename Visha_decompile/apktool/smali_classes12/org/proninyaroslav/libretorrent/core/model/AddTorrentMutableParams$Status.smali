.class public final enum Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

.field public static final enum ERROR:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

.field public static final enum FETCHING_MAGNET:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

.field public static final enum FETCHING_MAGNET_COMPLETED:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

.field public static final enum TASK_EXIST:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

.field public static final enum TIMEOUT:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

.field public static final enum UNKNOWN:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;
    .locals 6

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->UNKNOWN:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->FETCHING_MAGNET:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->FETCHING_MAGNET_COMPLETED:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->ERROR:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->TIMEOUT:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    sget-object v5, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->TASK_EXIST:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    filled-new-array/range {v0 .. v5}, [Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->UNKNOWN:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    const-string v1, "FETCHING_MAGNET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->FETCHING_MAGNET:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    const-string v1, "FETCHING_MAGNET_COMPLETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->FETCHING_MAGNET_COMPLETED:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->ERROR:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->TIMEOUT:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    const-string v1, "TASK_EXIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->TASK_EXIST:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->$values()[Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

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

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams$Status;

    return-object v0
.end method
