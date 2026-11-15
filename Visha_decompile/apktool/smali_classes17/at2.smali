.class public abstract Lat2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lcom/yandex/div2/DivTextRangeBorder;Landroid/util/DisplayMetrics;Loj3;)[F
    .locals 0

    invoke-static {p0, p1, p2}, Lat2;->b(Lcom/yandex/div2/DivTextRangeBorder;Landroid/util/DisplayMetrics;Loj3;)[F

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/yandex/div2/DivTextRangeBorder;Landroid/util/DisplayMetrics;Loj3;)[F
    .locals 0

    iget-object p0, p0, Lcom/yandex/div2/DivTextRangeBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p0, p1, p2

    const/4 p2, 0x1

    aput p0, p1, p2

    const/4 p2, 0x2

    aput p0, p1, p2

    const/4 p2, 0x3

    aput p0, p1, p2

    const/4 p2, 0x4

    aput p0, p1, p2

    const/4 p2, 0x5

    aput p0, p1, p2

    const/4 p2, 0x6

    aput p0, p1, p2

    const/4 p2, 0x7

    aput p0, p1, p2

    return-object p1
.end method
