.class public Lorg/acra/collector/LogFileCollector;
.super Lorg/acra/collector/BaseReportFieldCollector;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/acra/collector/LogFileCollector;",
        "Lorg/acra/collector/BaseReportFieldCollector;",
        "<init>",
        "()V",
        "Lorg/acra/ReportField;",
        "reportField",
        "Landroid/content/Context;",
        "context",
        "Lorg/acra/config/CoreConfiguration;",
        "config",
        "Lts8;",
        "reportBuilder",
        "Lorg/acra/data/CrashReportData;",
        "target",
        "Lzfb;",
        "collect",
        "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V",
        "Lorg/acra/collector/Collector$Order;",
        "getOrder",
        "()Lorg/acra/collector/Collector$Order;",
        "order",
        "acra-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    filled-new-array {v0}, [Lorg/acra/ReportField;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/acra/collector/BaseReportFieldCollector;-><init>([Lorg/acra/ReportField;)V

    return-void
.end method


# virtual methods
.method public collect(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "reportField"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "context"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "reportBuilder"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/acra/config/CoreConfiguration;->getApplicationLogFile()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    new-instance p1, Lty9;

    invoke-virtual {p3}, Lorg/acra/config/CoreConfiguration;->getApplicationLogFileDir()Lorg/acra/file/Directory;

    move-result-object p4

    invoke-virtual {p3}, Lorg/acra/config/CoreConfiguration;->getApplicationLogFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Lorg/acra/file/Directory;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Lty9;-><init>(Ljava/io/File;)V

    invoke-virtual {p3}, Lorg/acra/config/CoreConfiguration;->getApplicationLogFileLines()I

    move-result p2

    invoke-virtual {p1, p2}, Lty9;->f(I)Lty9;

    move-result-object p1

    invoke-virtual {p1}, Lty9;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lorg/acra/data/CrashReportData;->h(Lorg/acra/ReportField;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lc;->d:Le;

    sget-object p1, Lc;->c:Ljava/lang/String;

    sget-object p2, Lorg/acra/ReportField;->APPLICATION_LOG:Lorg/acra/ReportField;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " was enabled but applicationLogFile was not set. No application log will be recorded."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Le;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic enabled(Lorg/acra/config/CoreConfiguration;)Z
    .locals 0

    invoke-super {p0, p1}, Lac8;->enabled(Lorg/acra/config/CoreConfiguration;)Z

    move-result p0

    return p0
.end method

.method public getOrder()Lorg/acra/collector/Collector$Order;
    .locals 0

    sget-object p0, Lorg/acra/collector/Collector$Order;->LATE:Lorg/acra/collector/Collector$Order;

    return-object p0
.end method
