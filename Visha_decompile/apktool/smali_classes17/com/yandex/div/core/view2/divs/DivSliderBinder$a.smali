.class public final Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/view2/divs/DivSliderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivSliderBinder$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivEdgeInsets;JLoj3;Landroid/util/DisplayMetrics;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/yandex/div2/DivEdgeInsets;->g:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/yandex/div/core/view2/divs/DivSliderBinder$a;->b(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I

    move-result p0

    return p0
.end method

.method public final b(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)I
    .locals 4

    const-string p0, "unit"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "metrics"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/yandex/div/core/view2/divs/DivSliderBinder$a$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p0, p0, p3

    const/4 p3, 0x1

    if-eq p0, p3, :cond_6

    const/4 p3, 0x2

    if-eq p0, p3, :cond_5

    const/4 p3, 0x3

    if-ne p0, p3, :cond_4

    const/16 p0, 0x1f

    shr-long p3, p1, p0

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-eqz p0, :cond_3

    const-wide/16 v2, -0x1

    cmp-long p0, p3, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable convert \'"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "\' to Int"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p0, p1, v0

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p0, p1

    goto :goto_1

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->s0(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_1

    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->K(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public final c(Lcom/yandex/div2/DivSlider$TextStyle;Landroid/util/DisplayMetrics;Lbu2;Loj3;)Lop9;
    .locals 6

    const-string p0, "<this>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "metrics"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "typefaceProvider"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "resolver"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lop9;

    iget-object v0, p1, Lcom/yandex/div2/DivSlider$TextStyle;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Lcom/yandex/div2/DivSlider$TextStyle;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivSizeUnit;

    invoke-static {v0, v1, v2, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->U(JLcom/yandex/div2/DivSizeUnit;Landroid/util/DisplayMetrics;)F

    move-result v1

    iget-object v0, p1, Lcom/yandex/div2/DivSlider$TextStyle;->e:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivFontWeight;

    iget-object v2, p1, Lcom/yandex/div2/DivSlider$TextStyle;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->g0(Lcom/yandex/div2/DivFontWeight;Ljava/lang/Long;)I

    move-result v0

    invoke-static {v0, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->e0(ILbu2;)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object p3, p1, Lcom/yandex/div2/DivSlider$TextStyle;->g:Lcom/yandex/div2/DivPoint;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz p3, :cond_1

    invoke-static {p3, p2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I

    move-result p3

    int-to-float p3, p3

    move v3, p3

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iget-object p3, p1, Lcom/yandex/div2/DivSlider$TextStyle;->g:Lcom/yandex/div2/DivPoint;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz p3, :cond_2

    invoke-static {p3, p2, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I

    move-result p2

    int-to-float p2, p2

    move v4, p2

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    iget-object p1, p1, Lcom/yandex/div2/DivSlider$TextStyle;->h:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lop9;-><init>(FLandroid/graphics/Typeface;FFI)V

    return-object p0
.end method
