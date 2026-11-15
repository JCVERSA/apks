.class public Lcom/hunantv/media/player/libnative/ImgoReportLog;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ImgoLogReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/hunantv/media/player/MgtvPlayerLogger;->getLogCallback()Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hunantv/media/player/MgtvPlayerLogger;->isDebugMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/MgtvPlayerLogger;->getLogCallback()Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MgtvCore-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/hunantv/media/player/MgtvPlayerLogger$OnLogCallback;->onLogCb(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
