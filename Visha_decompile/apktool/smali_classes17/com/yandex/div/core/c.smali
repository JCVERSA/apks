.class public final Lcom/yandex/div/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/c$a;
    }
.end annotation


# instance fields
.field public final a:Loj8;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Loj8;

.field public final d:Loj8;

.field public final e:Loj8;


# direct methods
.method public constructor <init>(Loj8;Ljava/util/concurrent/ExecutorService;Loj8;Loj8;Loj8;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/div/core/c;->a:Loj8;

    .line 4
    iput-object p2, p0, Lcom/yandex/div/core/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object p3, p0, Lcom/yandex/div/core/c;->c:Loj8;

    .line 6
    iput-object p4, p0, Lcom/yandex/div/core/c;->d:Loj8;

    .line 7
    iput-object p5, p0, Lcom/yandex/div/core/c;->e:Loj8;

    return-void
.end method

.method public synthetic constructor <init>(Loj8;Ljava/util/concurrent/ExecutorService;Loj8;Loj8;Loj8;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/yandex/div/core/c;-><init>(Loj8;Ljava/util/concurrent/ExecutorService;Loj8;Loj8;Loj8;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/histogram/a;
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/c;->c:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/histogram/HistogramConfiguration;

    invoke-interface {p0}, Lcom/yandex/div/histogram/HistogramConfiguration;->b()Loj8;

    move-result-object p0

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "histogramConfiguration.g\u2026geHistogramReporter.get()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div/histogram/a;

    return-object p0
.end method

.method public final b()Lyo2;
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/c;->e:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "divRequestExecutor.get()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lyo2;

    return-object p0
.end method

.method public final c()Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/c;->b:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public final d()Ljk3;
    .locals 1

    sget-object v0, Ljk3;->b:Ljk3$a;

    iget-object p0, p0, Lcom/yandex/div/core/c;->d:Loj8;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/storage/DivStorageComponent;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljk3$a;->c(Ljava/lang/Object;)Ljk3;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lcom/yandex/div/histogram/HistogramConfiguration;
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/c;->c:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "histogramConfiguration.get()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div/histogram/HistogramConfiguration;

    return-object p0
.end method

.method public final f()Loq4;
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/c;->c:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "histogramConfiguration.get()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Loq4;

    return-object p0
.end method

.method public final g()Lqq4;
    .locals 1

    new-instance v0, Lqq4;

    iget-object p0, p0, Lcom/yandex/div/core/c;->c:Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/histogram/HistogramConfiguration;

    invoke-interface {p0}, Lcom/yandex/div/histogram/HistogramConfiguration;->g()Loj8;

    move-result-object p0

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhq4;

    invoke-direct {v0, p0}, Lqq4;-><init>(Lhq4;)V

    return-object v0
.end method

.method public final h()Lzb9;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/c;->a:Loj8;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
