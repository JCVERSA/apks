.class public Lcom/hunantv/media/source/ImgoCacheLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/source/ImgoCacheLogger$Callback;
    }
.end annotation


# static fields
.field public static final REPORT_LOG_LEVEL_DEBUG:I = 0x0

.field public static final REPORT_LOG_LEVEL_ERROR:I = 0x3

.field public static final REPORT_LOG_LEVEL_INFO:I = 0x1

.field public static final REPORT_LOG_LEVEL_WARN:I = 0x2

.field private static sLoggerCallback:Lcom/hunantv/media/source/ImgoCacheLogger$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cbLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/hunantv/media/source/ImgoCacheLogger;->sLoggerCallback:Lcom/hunantv/media/source/ImgoCacheLogger$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lcom/hunantv/media/source/ImgoCacheLogger$Callback;->onLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->cbLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->cbLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getCallback()Lcom/hunantv/media/source/ImgoCacheLogger$Callback;
    .locals 2

    const-class v0, Lcom/hunantv/media/source/ImgoCacheLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/hunantv/media/source/ImgoCacheLogger;->sLoggerCallback:Lcom/hunantv/media/source/ImgoCacheLogger$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->cbLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized setCallback(Lcom/hunantv/media/source/ImgoCacheLogger$Callback;)V
    .locals 1

    const-class v0, Lcom/hunantv/media/source/ImgoCacheLogger;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/hunantv/media/source/ImgoCacheLogger;->sLoggerCallback:Lcom/hunantv/media/source/ImgoCacheLogger$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/source/ImgoCacheLogger;->cbLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
