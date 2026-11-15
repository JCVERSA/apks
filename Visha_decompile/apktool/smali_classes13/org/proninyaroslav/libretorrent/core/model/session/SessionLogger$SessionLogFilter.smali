.class public final enum Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionLogFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

.field public static final enum DHT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

.field public static final enum PEER:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

.field public static final enum PORTMAP:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

.field public static final enum SESSION:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

.field public static final enum TORRENT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;


# instance fields
.field private final filter:Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;
    .locals 5

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->SESSION:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->DHT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->PEER:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->PORTMAP:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    sget-object v4, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->TORRENT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    new-instance v1, Lje9;

    invoke-direct {v1}, Lje9;-><init>()V

    const-string v2, "SESSION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;-><init>(Ljava/lang/String;ILorg/proninyaroslav/libretorrent/core/logger/LogFilter;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->SESSION:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    new-instance v1, Lke9;

    invoke-direct {v1}, Lke9;-><init>()V

    const-string v2, "DHT"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;-><init>(Ljava/lang/String;ILorg/proninyaroslav/libretorrent/core/logger/LogFilter;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->DHT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    new-instance v1, Lle9;

    invoke-direct {v1}, Lle9;-><init>()V

    const-string v2, "PEER"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;-><init>(Ljava/lang/String;ILorg/proninyaroslav/libretorrent/core/logger/LogFilter;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->PEER:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    new-instance v1, Lme9;

    invoke-direct {v1}, Lme9;-><init>()V

    const-string v2, "PORTMAP"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;-><init>(Ljava/lang/String;ILorg/proninyaroslav/libretorrent/core/logger/LogFilter;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->PORTMAP:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    new-instance v1, Lne9;

    invoke-direct {v1}, Lne9;-><init>()V

    const-string v2, "TORRENT"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;-><init>(Ljava/lang/String;ILorg/proninyaroslav/libretorrent/core/logger/LogFilter;)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->TORRENT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->$values()[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/proninyaroslav/libretorrent/core/logger/LogFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/proninyaroslav/libretorrent/core/logger/LogFilter;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;-><init>(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/logger/LogFilter;)V

    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->filter:Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;

    return-void
.end method

.method public static synthetic a(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->lambda$static$0(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->lambda$static$4(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->lambda$static$2(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->lambda$static$3(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 0

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->lambda$static$1(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->SESSION_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$static$1(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->DHT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$static$2(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->PEER_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$static$3(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->PORTMAP_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$static$4(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->TORRENT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    return-object v0
.end method


# virtual methods
.method public filter()Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->filter:Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;

    return-object p0
.end method
