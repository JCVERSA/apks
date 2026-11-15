.class public final Lcom/yandex/div/core/dagger/DivKitHistogramsModule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/div/core/dagger/DivKitHistogramsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;

    invoke-direct {v0}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;-><init>()V

    sput-object v0, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->a:Lcom/yandex/div/core/dagger/DivKitHistogramsModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static final d()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lem2;

    invoke-direct {v0}, Lem2;-><init>()V

    return-object v0
.end method

.method public static final e(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final c(Lcom/yandex/div/histogram/HistogramConfiguration;Loj8;)Loj8;
    .locals 0

    invoke-interface {p1}, Loq4;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "null cannot be cast to non-null type javax.inject.Provider<java.util.concurrent.Executor>"

    invoke-static {p2, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ldm2;

    invoke-direct {p2}, Ldm2;-><init>()V

    :goto_0
    return-object p2
.end method

.method public final f(Lcom/yandex/div/histogram/HistogramConfiguration;Loj8;Loj8;)Lcom/yandex/div/histogram/DivParsingHistogramReporter;
    .locals 1

    const-string v0, "histogramConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "histogramReporterDelegate"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executorService"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yandex/div/histogram/HistogramConfiguration;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->c(Lcom/yandex/div/histogram/HistogramConfiguration;Loj8;)Loj8;

    move-result-object p1

    invoke-interface {p2}, Loj8;->get()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "histogramReporterDelegate.get()"

    invoke-static {p2, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lsq4;

    invoke-virtual {p0, p2}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->g(Lsq4;)Loj8;

    move-result-object p0

    new-instance p2, Lyn2;

    new-instance p3, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideDivParsingHistogramReporter$1;

    invoke-direct {p3, p0}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideDivParsingHistogramReporter$1;-><init>(Ljava/lang/Object;)V

    new-instance p0, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideDivParsingHistogramReporter$2;

    invoke-direct {p0, p1}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideDivParsingHistogramReporter$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p0}, Lyn2;-><init>(Lc74;Lc74;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/div/histogram/DivParsingHistogramReporter;->a:Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;

    invoke-virtual {p0}, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;->a()Lcom/yandex/div/histogram/DivParsingHistogramReporter;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method public final g(Lsq4;)Loj8;
    .locals 1

    new-instance p0, Lax2;

    new-instance v0, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideHistogramReporter$1;

    invoke-direct {v0, p1}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideHistogramReporter$1;-><init>(Lsq4;)V

    invoke-direct {p0, v0}, Lax2;-><init>(Lc74;)V

    return-object p0
.end method

.method public final h(Lcom/yandex/div/histogram/HistogramConfiguration;Loj8;Loj8;)Lsq4;
    .locals 0

    const-string p0, "histogramConfiguration"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "histogramRecorderProvider"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "histogramColdTypeCheckerProvider"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yandex/div/histogram/HistogramConfiguration;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/yandex/div/core/dagger/DivHistogramsModuleKt;->b(Lcom/yandex/div/histogram/HistogramConfiguration;Loj8;Loj8;)Lsq4;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lsq4$a;->a:Lsq4$a;

    :goto_0
    return-object p0
.end method
