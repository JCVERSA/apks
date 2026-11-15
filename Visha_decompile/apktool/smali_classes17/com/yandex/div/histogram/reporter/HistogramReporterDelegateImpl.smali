.class public final Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsq4;


# instance fields
.field public final a:Loj8;

.field public final b:Liq4;

.field public final c:Loq4;

.field public final d:Loj8;


# direct methods
.method public constructor <init>(Loj8;Liq4;Loq4;Loj8;)V
    .locals 1

    const-string v0, "histogramRecorder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "histogramCallTypeProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "histogramRecordConfig"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;->a:Loj8;

    iput-object p2, p0, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;->b:Liq4;

    iput-object p3, p0, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;->c:Loq4;

    iput-object p4, p0, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;->d:Loj8;

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;)Loj8;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;->a:Loj8;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    const-string v0, "histogramName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;->b:Liq4;

    invoke-virtual {v0, p1}, Liq4;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p4, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    sget-object p4, Ltq4;->a:Ltq4;

    iget-object v0, p0, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;->c:Loq4;

    invoke-virtual {p4, v4, v0}, Ltq4;->a(Ljava/lang/String;Loq4;)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    iget-object p4, p0, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;->d:Loj8;

    invoke-interface {p4}, Loj8;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ldea;

    new-instance v0, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl$reportDuration$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl$reportDuration$1;-><init>(Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {p4, v0}, Ldea;->a(Lc74;)V

    return-void
.end method
