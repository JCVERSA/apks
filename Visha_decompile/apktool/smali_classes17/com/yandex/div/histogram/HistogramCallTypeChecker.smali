.class public abstract Lcom/yandex/div/histogram/HistogramCallTypeChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyi5;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/div/histogram/HistogramCallTypeChecker$reportedHistograms$2;->INSTANCE:Lcom/yandex/div/histogram/HistogramCallTypeChecker$reportedHistograms$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/div/histogram/HistogramCallTypeChecker;->a:Lyi5;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "histogramName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/histogram/HistogramCallTypeChecker;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/histogram/HistogramCallTypeChecker;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    sget-object v0, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final b()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/histogram/HistogramCallTypeChecker;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method
