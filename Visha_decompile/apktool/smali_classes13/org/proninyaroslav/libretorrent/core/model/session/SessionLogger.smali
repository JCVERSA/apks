.class Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;
.super Lorg/proninyaroslav/libretorrent/core/logger/Logger;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;,
        Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;,
        Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;
    }
.end annotation


# static fields
.field private static nextLogEntryId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;-><init>(I)V

    return-void
.end method


# virtual methods
.method public applyFilterParams(Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;)V
    .locals 4

    const/4 v0, 0x5

    new-array v1, v0, [Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;

    new-array v0, v0, [Ljava/lang/String;

    iget-boolean v2, p1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterSessionLog:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->SESSION:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->filter()Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->SESSION:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    :goto_0
    iget-boolean v2, p1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterDhtLog:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->DHT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->filter()Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->DHT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    :goto_1
    iget-boolean v2, p1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterPeerLog:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->PEER:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->filter()Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->PEER:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    :goto_2
    iget-boolean v2, p1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterPortmapLog:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->PORTMAP:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->filter()Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_3

    :cond_3
    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->PORTMAP:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    :goto_3
    iget-boolean p1, p1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionFilterParams;->filterTorrentLog:Z

    const/4 v2, 0x4

    if-eqz p1, :cond_4

    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->TORRENT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->filter()Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;

    move-result-object p1

    aput-object p1, v1, v2

    goto :goto_4

    :cond_4
    sget-object p1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;->TORRENT:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogFilter;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    :goto_4
    invoke-virtual {p0, v0}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->removeFilter([Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->addFilter([Lorg/proninyaroslav/libretorrent/core/logger/Logger$NewFilter;)V

    return-void
.end method

.method public send(Lorg/libtorrent4j/alerts/Alert;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$1;->$SwitchMap$org$libtorrent4j$alerts$AlertType:[I

    invoke-interface {p1}, Lorg/libtorrent4j/alerts/Alert;->type()Lorg/libtorrent4j/alerts/AlertType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const-string v2, "] "

    const-string v3, "["

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_0
    new-instance v6, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    sget v1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->TORRENT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lorg/libtorrent4j/alerts/TorrentLogAlert;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentLogAlert;->logMessage()Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    :goto_0
    move-object p1, v6

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lorg/libtorrent4j/alerts/PortmapLogAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/PortmapLogAlert;->mapType()Lorg/libtorrent4j/PortmapTransport;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/PortmapLogAlert;->logMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    sget v1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->PORTMAP_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_2
    check-cast p1, Lorg/libtorrent4j/alerts/PeerLogAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/PeerLogAlert;->direction()Lorg/libtorrent4j/alerts/PeerLogAlert$Direction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/PeerLogAlert;->eventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/PeerLogAlert;->logMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    sget v1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->PEER_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    check-cast p1, Lorg/libtorrent4j/alerts/DhtLogAlert;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/DhtLogAlert;->module()Lorg/libtorrent4j/alerts/DhtLogAlert$DhtModule;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/DhtLogAlert;->logMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance p1, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    sget v1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->DHT_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    new-instance v6, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;

    sget v1, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    add-int/lit8 v0, v1, 0x1

    sput v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->nextLogEntryId:I

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;->SESSION_LOG:Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger$SessionLogEntryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Lorg/libtorrent4j/alerts/LogAlert;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/LogAlert;->logMessage()Ljava/lang/String;

    move-result-object v3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;-><init>(ILjava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/logger/Logger;->send(Lorg/proninyaroslav/libretorrent/core/logger/LogEntry;)V

    :cond_5
    return-void
.end method
