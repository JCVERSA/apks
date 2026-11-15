.class public final enum Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

.field public static final enum MOVING:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

.field public static final enum SAVE_RESUME:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;
    .locals 2

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;->MOVING:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;->SAVE_RESUME:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    filled-new-array {v0, v1}, [Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    const-string v1, "MOVING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;->MOVING:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    const-string v1, "SAVE_RESUME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;->SAVE_RESUME:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;->$values()[Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

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

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;

    return-object v0
.end method
