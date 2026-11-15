.class public Lcom/hunantv/media/player/pragma/DebugLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MODULE_ID:Ljava/lang/String; = "12"

.field private static final REPORT_LOG_LEVEL_DEBUG:I = 0x0

.field private static final REPORT_LOG_LEVEL_ERROR:I = 0x3

.field private static final REPORT_LOG_LEVEL_INFO:I = 0x1

.field private static final REPORT_LOG_LEVEL_WARN:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget v0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs dfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget v0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs efmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget v0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static printCause(Ljava/lang/Throwable;)V
    .locals 1

    sget v0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    invoke-static {p0}, Lcom/hunantv/media/player/pragma/DebugLog;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static printStackTrace(Ljava/lang/Throwable;)V
    .locals 1

    sget v0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private static reportLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "12"

    invoke-static {p0, v0, p1, p2}, Lcom/hunantv/media/player/libnative/ImgoReportLog;->ImgoLogReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget v0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs vfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget v0, Lcom/hunantv/media/player/pragma/PlayerConfig;->use_report_level:I

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs wfmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2, p0, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->reportLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
