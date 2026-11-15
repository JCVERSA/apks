.class public final Liq4;
.super Lcom/yandex/div/histogram/HistogramCallTypeChecker;
.source "SourceFile"


# instance fields
.field public final b:Lc74;


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 1

    const-string v0, "histogramColdTypeChecker"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/div/histogram/HistogramCallTypeChecker;-><init>()V

    iput-object p1, p0, Liq4;->b:Lc74;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "histogramName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Liq4;->b:Lc74;

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq4;

    invoke-virtual {v0, p1}, Lcom/yandex/div/histogram/HistogramCallTypeChecker;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/histogram/HistogramCallTypeChecker;->a(Ljava/lang/String;)Z

    const-string p0, "Cold"

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/histogram/HistogramCallTypeChecker;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "Cool"

    return-object p0

    :cond_1
    const-string p0, "Warm"

    return-object p0
.end method
