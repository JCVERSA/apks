.class public final enum Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionLogEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

.field public static final enum DHT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

.field public static final enum PEER_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

.field public static final enum PORTMAP_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

.field public static final enum SESSION_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

.field public static final enum TORRENT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;
    .locals 5

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->SESSION_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->DHT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->PEER_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->PORTMAP_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->TORRENT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    const-string v1, "SESSION_LOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->SESSION_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    const-string v1, "DHT_LOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->DHT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    const-string v1, "PEER_LOG"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->PEER_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    const-string v1, "PORTMAP_LOG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->PORTMAP_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    const-string v1, "TORRENT_LOG"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->TORRENT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->$values()[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    return-object v0
.end method
