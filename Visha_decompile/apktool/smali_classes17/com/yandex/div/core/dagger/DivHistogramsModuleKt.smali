.class public abstract Lcom/yandex/div/core/dagger/DivHistogramsModuleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lsq4;)Lrq4;
    .locals 1

    const-string v0, "histogramReporterDelegate"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrq4;

    invoke-direct {v0, p0}, Lrq4;-><init>(Lsq4;)V

    return-object v0
.end method

.method public static final b(Lcom/yandex/div/histogram/HistogramConfiguration;Loj8;Loj8;)Lsq4;
    .locals 2

    const-string v0, "histogramConfiguration"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "histogramRecorderProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "histogramColdTypeChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/yandex/div/histogram/HistogramConfiguration;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lsq4$a;->a:Lsq4$a;

    goto :goto_0

    :cond_0
    new-instance v0, Liq4;

    new-instance v1, Lcom/yandex/div/core/dagger/DivHistogramsModuleKt$createHistogramReporterDelegate$histogramCallTypeProvider$1;

    invoke-direct {v1, p2}, Lcom/yandex/div/core/dagger/DivHistogramsModuleKt$createHistogramReporterDelegate$histogramCallTypeProvider$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Liq4;-><init>(Lc74;)V

    new-instance p2, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;

    invoke-interface {p0}, Lcom/yandex/div/histogram/HistogramConfiguration;->h()Loj8;

    move-result-object v1

    invoke-direct {p2, p1, v0, p0, v1}, Lcom/yandex/div/histogram/reporter/HistogramReporterDelegateImpl;-><init>(Loj8;Liq4;Loq4;Loj8;)V

    move-object p0, p2

    :goto_0
    return-object p0
.end method
