.class public Lorg/acra/collector/LogCatCollector;
.super Lorg/acra/collector/BaseReportFieldCollector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/collector/LogCatCollector$a;,
        Lorg/acra/collector/LogCatCollector$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 $2\u00020\u0001:\u0001%B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0012\u00a2\u0006\u0004\u0008\u0008\u0010\tJ=\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0012\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J/\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ7\u0010\u0016\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u001cH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u001fR\u0014\u0010#\u001a\u00020 8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u0006&"
    }
    d2 = {
        "Lorg/acra/collector/LogCatCollector;",
        "Lorg/acra/collector/BaseReportFieldCollector;",
        "<init>",
        "()V",
        "Lorg/acra/config/CoreConfiguration;",
        "config",
        "",
        "bufferName",
        "collectLogCat",
        "(Lorg/acra/config/CoreConfiguration;Ljava/lang/String;)Ljava/lang/String;",
        "Ljava/io/InputStream;",
        "input",
        "Lkotlin/Function1;",
        "",
        "filter",
        "",
        "limit",
        "streamToString",
        "(Lorg/acra/config/CoreConfiguration;Ljava/io/InputStream;Le74;I)Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "Lorg/acra/ReportField;",
        "collect",
        "Lts8;",
        "reportBuilder",
        "shouldCollect",
        "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z",
        "reportField",
        "Lorg/acra/data/CrashReportData;",
        "target",
        "Lzfb;",
        "(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V",
        "Lorg/acra/collector/Collector$Order;",
        "getOrder",
        "()Lorg/acra/collector/Collector$Order;",
        "order",
        "Companion",
        "a",
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


# static fields
.field public static final Companion:Lorg/acra/collector/LogCatCollector$a;

.field private static final READ_TIMEOUT:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/acra/collector/LogCatCollector$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/acra/collector/LogCatCollector$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/acra/collector/LogCatCollector;->Companion:Lorg/acra/collector/LogCatCollector$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lorg/acra/ReportField;->LOGCAT:Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->EVENTSLOG:Lorg/acra/ReportField;

    sget-object v2, Lorg/acra/ReportField;->RADIOLOG:Lorg/acra/ReportField;

    filled-new-array {v0, v1, v2}, [Lorg/acra/ReportField;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/acra/collector/BaseReportFieldCollector;-><init>([Lorg/acra/ReportField;)V

    return-void
.end method

.method private collectLogCat(Lorg/acra/config/CoreConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myPid()I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "logcat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    const-string v1, "-b"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lorg/acra/config/CoreConfiguration;->getLogcatArguments()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const-string v2, "-t"

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_1
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    sget-boolean v1, Lc;->b:Z

    if-eqz v1, :cond_3

    sget-object v1, Lc;->d:Le;

    sget-object v2, Lc;->c:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string p2, "default"

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieving logcat output (buffer:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")..."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, p2}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const-string v1, "process.inputStream"

    invoke-static {p2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v4}, Lorg/acra/collector/LogCatCollector;->streamToString(Lorg/acra/config/CoreConfiguration;Ljava/io/InputStream;Le74;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    throw p0
.end method

.method private streamToString(Lorg/acra/config/CoreConfiguration;Ljava/io/InputStream;Le74;I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/CoreConfiguration;",
            "Ljava/io/InputStream;",
            "Le74;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Lty9;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lty9;-><init>(Ljava/io/InputStream;IILe74;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p3}, Lty9;->e(Le74;)Lty9;

    move-result-object p0

    invoke-virtual {p0, p4}, Lty9;->f(I)Lty9;

    move-result-object p0

    invoke-virtual {p1}, Lorg/acra/config/CoreConfiguration;->getLogcatReadNonBlocking()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xbb8

    invoke-virtual {p0, p1}, Lty9;->g(I)Lty9;

    :cond_0
    invoke-virtual {p0}, Lty9;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public collect(Lorg/acra/ReportField;Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lts8;Lorg/acra/data/CrashReportData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "reportField"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "config"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "reportBuilder"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "target"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lorg/acra/collector/LogCatCollector$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p2, p2, p4

    const/4 p4, 0x1

    if-eq p2, p4, :cond_2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_1

    const/4 p4, 0x3

    if-ne p2, p4, :cond_0

    const-string p2, "radio"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const-string p2, "events"

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p3, p2}, Lorg/acra/collector/LogCatCollector;->collectLogCat(Lorg/acra/config/CoreConfiguration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p1, p0}, Lorg/acra/data/CrashReportData;->h(Lorg/acra/ReportField;Ljava/lang/String;)V

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

    sget-object p0, Lorg/acra/collector/Collector$Order;->FIRST:Lorg/acra/collector/Collector$Order;

    return-object p0
.end method

.method public shouldCollect(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collect"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportBuilder"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/acra/collector/BaseReportFieldCollector;->shouldCollect(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Lorg/acra/ReportField;Lts8;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Log9;

    invoke-direct {p0, p1, p2}, Log9;-><init>(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V

    invoke-virtual {p0}, Log9;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "acra.syslog.enable"

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
