.class public final Lcom/yandex/div/internal/widget/slider/SliderView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/slider/SliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/yandex/div/internal/widget/slider/SliderView;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/slider/SliderView;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$isThumbSecondaryEnabled(Lcom/yandex/div/internal/widget/slider/SliderView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbValue()F

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbValue()F

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbSecondaryValue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView$b;->c(FLjava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public final b()F
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->access$isThumbSecondaryEnabled(Lcom/yandex/div/internal/widget/slider/SliderView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getMinValue()F

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbValue()F

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/slider/SliderView$b;->a:Lcom/yandex/div/internal/widget/slider/SliderView;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/slider/SliderView;->getThumbSecondaryValue()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/internal/widget/slider/SliderView$b;->d(FLjava/lang/Float;)F

    move-result p0

    return p0
.end method

.method public final c(FLjava/lang/Float;)F
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public final d(FLjava/lang/Float;)F
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_0
    return p1
.end method
