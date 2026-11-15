.class public final Lcom/yandex/div/core/view2/divs/DivTextBinder;
.super Lwu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivTextBinder$a;
    }
.end annotation


# instance fields
.field public final b:Lcu2;

.field public final c:Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lcu2;Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;Z)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typefaceResolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spannedTextBuilder"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder;->b:Lcu2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder;->c:Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;

    iput-boolean p4, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder;->d:Z

    return-void
.end method

.method public static final synthetic A(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->t0(Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic B(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div2/DivRadialGradientRadius;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->u0(Lcom/yandex/div2/DivRadialGradientRadius;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->C(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->D(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;JLcom/yandex/div2/DivSizeUnit;D)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->E(Landroid/widget/TextView;JLcom/yandex/div2/DivSizeUnit;D)V

    return-void
.end method

.method public static final synthetic i(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic j(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;JLy91;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->G(Landroid/widget/TextView;JLy91;)V

    return-void
.end method

.method public static final synthetic k(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->H(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic l(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->I(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic m(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->J(Landroid/widget/TextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    return-void
.end method

.method public static final synthetic n(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Ljava/util/List;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->K(Landroid/widget/TextView;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic o(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/internal/widget/EllipsizedTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->L(Lcom/yandex/div/internal/widget/EllipsizedTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    return-void
.end method

.method public static final synthetic p(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->M(Landroid/widget/TextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    return-void
.end method

.method public static final synthetic q(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->N(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static final synthetic r(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lcom/yandex/div2/DivLineStyle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->O(Landroid/widget/TextView;Lcom/yandex/div2/DivLineStyle;)V

    return-void
.end method

.method public static final synthetic s(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->P(Landroid/widget/TextView;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V

    return-void
.end method

.method public static final synthetic t(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;ILjava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->Q(Landroid/widget/TextView;ILjava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic u(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lof9;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->R(Landroid/widget/TextView;Lof9;)V

    return-void
.end method

.method public static final synthetic v(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->S(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Z)V

    return-void
.end method

.method public static final synthetic w(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->T(Landroid/widget/TextView;Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic x(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;Lcom/yandex/div2/DivLineStyle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->U(Landroid/widget/TextView;Lcom/yandex/div2/DivLineStyle;)V

    return-void
.end method

.method public static final synthetic y(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->r0(Landroid/widget/TextView;)I

    move-result p0

    return p0
.end method

.method public static final synthetic z(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div2/DivShadow;Loj3;Landroid/util/DisplayMetrics;I)Lof9;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->s0(Lcom/yandex/div2/DivShadow;Loj3;Landroid/util/DisplayMetrics;I)Lof9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final C(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 3

    iget-object p0, p2, Lcom/yandex/div2/DivText;->j0:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivText$Truncate;

    sget-object v0, Lcom/yandex/div/core/view2/divs/DivTextBinder$a;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setEllipsisLocation(Landroid/text/TextUtils$TruncateAt;)V

    sget-object v0, Lcom/yandex/div2/DivText$Truncate;->NONE:Lcom/yandex/div2/DivText$Truncate;

    const/4 v2, 0x0

    if-eq p0, v0, :cond_5

    iget-object p0, p2, Lcom/yandex/div2/DivText;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_4
    move p0, v2

    :goto_1
    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setAutoEllipsize(Z)V

    return-void
.end method

.method public final D(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p0, "it"

    invoke-static {p2, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    xor-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    return-void
.end method

.method public final E(Landroid/widget/TextView;JLcom/yandex/div2/DivSizeUnit;D)V
    .locals 6

    const/16 p0, 0x1f

    shr-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_3

    const-wide/16 v4, -0x1

    cmp-long p0, v0, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable convert \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\' to Int"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p0, p2, v2

    if-lez p0, :cond_2

    const p0, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 p0, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int p0, p2

    :goto_1
    invoke-static {p1, p0, p4}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->k(Landroid/widget/TextView;ILcom/yandex/div2/DivSizeUnit;)V

    invoke-static {p1, p5, p6, p0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->p(Landroid/widget/TextView;DI)V

    return-void
.end method

.method public final F(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lpha;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder;->d:Z

    const/4 v1, 0x0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0xa

    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v2, 0xad

    invoke-static {p2, v2, v1, p0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result p0

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHyphenationFrequency(I)V

    :cond_3
    return-void
.end method

.method public final G(Landroid/widget/TextView;JLy91;)V
    .locals 7

    invoke-static {p1}, Lpdc;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Lfl5;->e:Lfl5$a;

    long-to-float v2, p2

    invoke-virtual {p4}, Ly91;->a()[I

    move-result-object v3

    invoke-virtual {p4}, Ly91;->b()[F

    move-result-object v4

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->y(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    sub-int v6, p0, p2

    invoke-virtual/range {v1 .. v6}, Lfl5$a;->a(F[I[FII)Landroid/graphics/LinearGradient;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivTextBinder$b;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivTextBinder$b;-><init>(Landroid/widget/TextView;JLy91;Lcom/yandex/div/core/view2/divs/DivTextBinder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public final H(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->getAdaptiveMaxLines$div_release()Le8;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le8;->l()V

    :cond_0
    const/high16 v1, -0x80000000

    const-string v2, "\' to Int"

    const-string v3, "Unable convert \'"

    const-wide/16 v4, -0x1

    const/16 v6, 0x1f

    const v7, 0x7fffffff

    const-wide/16 v8, 0x0

    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    new-instance v10, Le8;

    invoke-direct {v10, v0}, Le8;-><init>(Landroid/widget/TextView;)V

    new-instance v11, Le8$a;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    shr-long v14, v12, v6

    cmp-long v16, v14, v8

    if-eqz v16, :cond_4

    cmp-long v14, v14, v4

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    sget-object v14, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v14

    if-eqz v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lxi;->i(Ljava/lang/String;)V

    :cond_2
    cmp-long v12, v12, v8

    if-lez v12, :cond_3

    move v12, v7

    goto :goto_1

    :cond_3
    move v12, v1

    goto :goto_1

    :cond_4
    :goto_0
    long-to-int v12, v12

    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    shr-long v15, v13, v6

    cmp-long v6, v15, v8

    if-eqz v6, :cond_7

    cmp-long v4, v15, v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    sget-object v4, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    :cond_6
    cmp-long v2, v13, v8

    if-lez v2, :cond_8

    move v1, v7

    goto :goto_3

    :cond_7
    :goto_2
    long-to-int v1, v13

    :cond_8
    :goto_3
    invoke-direct {v11, v12, v1}, Le8$a;-><init>(II)V

    invoke-virtual {v10, v11}, Le8;->i(Le8$a;)V

    invoke-virtual {v0, v10}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->setAdaptiveMaxLines$div_release(Le8;)V

    goto :goto_7

    :cond_9
    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    shr-long v12, v10, v6

    cmp-long v6, v12, v8

    if-eqz v6, :cond_d

    cmp-long v4, v12, v4

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    sget-object v4, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    :cond_b
    cmp-long v2, v10, v8

    if-lez v2, :cond_c

    move v1, v7

    :cond_c
    :goto_4
    move v7, v1

    goto :goto_6

    :cond_d
    :goto_5
    long-to-int v1, v10

    goto :goto_4

    :cond_e
    :goto_6
    invoke-virtual {v0, v7}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setMaxLines(I)V

    :goto_7
    return-void
.end method

.method public final I(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "\u2026"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setEllipsis(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final J(Landroid/widget/TextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder;->c:Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;

    invoke-virtual {p0, p2, p1, p3}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->l(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final K(Landroid/widget/TextView;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Ljava/util/List;)V
    .locals 8

    invoke-static {p1}, Lpdc;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable;->g:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;

    check-cast p5, Ljava/util/Collection;

    invoke-static {p5}, Li81;->a1(Ljava/util/Collection;)[I

    move-result-object v5

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->y(Lcom/yandex/div/core/view2/divs/DivTextBinder;Landroid/widget/TextView;)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p0, p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    sub-int v7, p0, p5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Companion;->d(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;[III)Landroid/graphics/RadialGradient;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder$c;-><init>(Landroid/widget/TextView;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Ljava/util/List;Lcom/yandex/div/core/view2/divs/DivTextBinder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public final L(Lcom/yandex/div/internal/widget/EllipsizedTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V
    .locals 6

    iget-object v4, p3, Lcom/yandex/div2/DivText;->p:Lcom/yandex/div2/DivText$Ellipsis;

    if-nez v4, :cond_0

    const-string p0, "\u2026"

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/EllipsizedTextView;->setEllipsis(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder;->c:Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;

    new-instance v5, Lcom/yandex/div/core/view2/divs/DivTextBinder$applyRichEllipsis$1;

    invoke-direct {v5, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$applyRichEllipsis$1;-><init>(Lcom/yandex/div/internal/widget/EllipsizedTextView;)V

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->k(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText$Ellipsis;Le74;)Landroid/text/Spanned;

    return-void
.end method

.method public final M(Landroid/widget/TextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder;->c:Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivTextBinder$applyRichText$1;

    invoke-direct {v0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$applyRichText$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->m(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;Le74;)Landroid/text/Spanned;

    return-void
.end method

.method public final N(Landroid/widget/TextView;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-void
.end method

.method public final O(Landroid/widget/TextView;Lcom/yandex/div2/DivLineStyle;)V
    .locals 0

    sget-object p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p2, 0x2

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p0

    and-int/lit8 p0, p0, -0x11

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p0

    or-int/lit8 p0, p0, 0x10

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    :goto_0
    return-void
.end method

.method public final P(Landroid/widget/TextView;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V
    .locals 2

    invoke-static {p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->O(Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setGravity(I)V

    sget-object p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    const/4 p3, 0x5

    if-eq p0, p2, :cond_2

    const/4 p2, 0x2

    const/4 v0, 0x4

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    const/4 v1, 0x6

    if-eq p0, p2, :cond_0

    if-eq p0, v0, :cond_2

    if-eq p0, p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v0

    :cond_2
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setTextAlignment(I)V

    return-void
.end method

.method public final Q(Landroid/widget/TextView;ILjava/lang/Integer;)V
    .locals 2

    new-instance p0, Landroid/content/res/ColorStateList;

    const v0, 0x101009c

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    filled-new-array {p3, p2}, [I

    move-result-object p2

    invoke-direct {p0, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final R(Landroid/widget/TextView;Lof9;)V
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v1, p2, Lcom/yandex/div/core/widget/DivViewWrapper;

    if-eqz v1, :cond_0

    move-object p0, p2

    check-cast p0, Lcom/yandex/div/core/widget/DivViewWrapper;

    :cond_0
    const/4 p2, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0, p0, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Lcom/yandex/div/core/widget/DivViewWrapper;

    if-eqz v2, :cond_3

    move-object p0, v1

    check-cast p0, Lcom/yandex/div/core/widget/DivViewWrapper;

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2}, Lof9;->d()F

    move-result p0

    invoke-virtual {p2}, Lof9;->b()F

    move-result v0

    invoke-virtual {p2}, Lof9;->c()F

    move-result v1

    invoke-virtual {p2}, Lof9;->a()I

    move-result p2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method public final S(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/yandex/div/internal/widget/SuperLineHeightTextView;->setTightenWidth(Z)V

    return-void
.end method

.method public final T(Landroid/widget/TextView;Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/DivTextBinder;->b:Lcu2;

    invoke-static {p0, p2, p3, p4}, Ldu2;->a(Lcu2;Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Long;)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public final U(Landroid/widget/TextView;Lcom/yandex/div2/DivLineStyle;)V
    .locals 0

    sget-object p0, Lcom/yandex/div/core/view2/divs/DivTextBinder$a;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p2, 0x2

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p0

    and-int/lit8 p0, p0, -0x9

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p0

    or-int/lit8 p0, p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setPaintFlags(I)V

    :goto_0
    return-void
.end method

.method public V(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    const-string v0, "<this>"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v4, Lcom/yandex/div2/DivText;->b:Lcom/yandex/div2/DivAction;

    iget-object v10, v4, Lcom/yandex/div2/DivText;->d:Ljava/util/List;

    iget-object v11, v4, Lcom/yandex/div2/DivText;->J:Ljava/util/List;

    iget-object v12, v4, Lcom/yandex/div2/DivText;->o:Ljava/util/List;

    iget-object v13, v4, Lcom/yandex/div2/DivText;->D:Ljava/util/List;

    iget-object v14, v4, Lcom/yandex/div2/DivText;->C:Ljava/util/List;

    iget-object v15, v4, Lcom/yandex/div2/DivText;->P:Ljava/util/List;

    iget-object v0, v4, Lcom/yandex/div2/DivText;->O:Ljava/util/List;

    iget-object v2, v4, Lcom/yandex/div2/DivText;->c:Lcom/yandex/div2/DivAnimation;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivText;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v18

    iget-object v8, v4, Lcom/yandex/div2/DivText;->l:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v7, p1

    move-object/from16 v19, v8

    move-object/from16 v8, p2

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-static/range {v7 .. v19}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAction;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v7

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->p0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->k0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->Z(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->Y(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->l0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->q0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->i0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->b0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual/range {p0 .. p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->j0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;)V

    invoke-virtual/range {p0 .. p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->W(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->X(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v3

    move-object/from16 v3, p3

    move-object v9, v4

    move-object/from16 v4, p4

    move-object v10, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->m0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v10, v9, v8, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->n0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v10, v9, v8, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->h0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v10, v9, v8, v7}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->o0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V

    invoke-virtual {v6, v10, v9}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->v0(Landroid/view/View;Lcom/yandex/div2/DivText;)V

    return-void
.end method

.method public final W(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;)V
    .locals 3

    iget-object v0, p3, Lcom/yandex/div2/DivText;->p:Lcom/yandex/div2/DivText$Ellipsis;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivText$Ellipsis;->c:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_4

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivText$Ellipsis;->b:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivText$Ellipsis;->a:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_4

    if-eqz p4, :cond_3

    iget-object v1, p4, Lcom/yandex/div2/DivText;->p:Lcom/yandex/div2/DivText$Ellipsis;

    :cond_3
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->c0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText$Ellipsis;Lcom/yandex/div2/DivText$Ellipsis;Loj3;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->f0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    :goto_3
    return-void
.end method

.method public final X(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivText;->i:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivText;->i:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/yandex/div2/DivText;->j0:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_1

    iget-object v1, p3, Lcom/yandex/div2/DivText;->j0:Lcom/yandex/div/json/expressions/Expression;

    :cond_1
    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->C(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p2, Lcom/yandex/div2/DivText;->j0:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindEllipsize$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindEllipsize$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    :cond_4
    iget-object p0, p2, Lcom/yandex/div2/DivText;->j0:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final Y(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 2

    iget-object v0, p2, Lcom/yandex/div2/DivText;->u:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/yandex/div2/DivText;->u:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p2, Lcom/yandex/div2/DivText;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p3, v1

    :goto_1
    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->D(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->u:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindFontFeatureSettings$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindFontFeatureSettings$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_4
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final Z(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 7

    iget-object v0, p2, Lcom/yandex/div2/DivText;->v:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivText;->v:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_1

    iget-object v2, p3, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/yandex/div2/DivText;->H:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_2

    iget-object v1, p3, Lcom/yandex/div2/DivText;->H:Lcom/yandex/div/json/expressions/Expression;

    :cond_2
    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p2, Lcom/yandex/div2/DivText;->v:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object p3, p2, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    check-cast v4, Lcom/yandex/div2/DivSizeUnit;

    iget-object p3, p2, Lcom/yandex/div2/DivText;->H:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->E(Landroid/widget/TextView;JLcom/yandex/div2/DivSizeUnit;D)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->v:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p2, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p2, Lcom/yandex/div2/DivText;->H:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindFontSize$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindFontSize$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->v:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->H:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    check-cast p3, Lcom/yandex/div2/DivText;

    check-cast p4, Lcom/yandex/div2/DivText;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->V(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;)V

    return-void
.end method

.method public final a0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivLinearGradient;Lcom/yandex/div2/DivTextGradient;Loj3;)V
    .locals 7

    instance-of v0, p4, Lcom/yandex/div2/DivTextGradient$b;

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    check-cast p4, Lcom/yandex/div2/DivTextGradient$b;

    invoke-virtual {p4}, Lcom/yandex/div2/DivTextGradient$b;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcom/yandex/div2/DivLinearGradient;->c:Lnj3;

    invoke-virtual {p4}, Lcom/yandex/div2/DivTextGradient$b;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivLinearGradient;->c:Lnj3;

    invoke-static {v0, v1}, Luj3;->a(Lnj3;Lnj3;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p3, Lcom/yandex/div2/DivLinearGradient;->b:Ljava/util/List;

    invoke-virtual {p4}, Lcom/yandex/div2/DivTextGradient$b;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object p4

    iget-object p4, p4, Lcom/yandex/div2/DivLinearGradient;->b:Ljava/util/List;

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_6

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_3

    invoke-static {}, Ly71;->u()V

    :cond_3
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivLinearGradient$ColorPoint;

    check-cast v2, Lcom/yandex/div2/DivLinearGradient$ColorPoint;

    invoke-static {v2, v1}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->k(Lcom/yandex/div2/DivLinearGradient$ColorPoint;Lcom/yandex/div2/DivLinearGradient$ColorPoint;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    iget-object p4, p3, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p4, p5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {p3, p5}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->O(Lcom/yandex/div2/DivLinearGradient;Loj3;)Ly91;

    move-result-object p4

    invoke-static {p4, p2}, Lz91;->a(Ly91;Lcom/yandex/div/core/view2/Div2View;)Ly91;

    move-result-object p4

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->G(Landroid/widget/TextView;JLy91;)V

    iget-object p4, p3, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p4}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p4, p3, Lcom/yandex/div2/DivLinearGradient;->c:Lnj3;

    invoke-static {p4}, Luj3;->e(Lnj3;)Z

    move-result p4

    if-eqz p4, :cond_a

    iget-object p4, p3, Lcom/yandex/div2/DivLinearGradient;->b:Ljava/util/List;

    if-eqz p4, :cond_9

    check-cast p4, Ljava/lang/Iterable;

    instance-of v0, p4, Ljava/util/Collection;

    if-eqz v0, :cond_7

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_8
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivLinearGradient$ColorPoint;

    invoke-static {v0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->E(Lcom/yandex/div2/DivLinearGradient$ColorPoint;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_9
    :goto_3
    return-void

    :cond_a
    :goto_4
    new-instance p4, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindLinearTextGradient$callback$1;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindLinearTextGradient$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivLinearGradient;Loj3;Lcom/yandex/div/core/view2/Div2View;)V

    iget-object p0, p3, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p5, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p3, Lcom/yandex/div2/DivLinearGradient;->c:Lnj3;

    if-eqz p0, :cond_b

    invoke-interface {p0, p5, p4}, Lnj3;->b(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_5

    :cond_b
    const/4 p0, 0x0

    :goto_5
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p3, Lcom/yandex/div2/DivLinearGradient;->b:Ljava/util/List;

    if-eqz p0, :cond_c

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivLinearGradient$ColorPoint;

    invoke-static {p1, p2, p5, p4}, Lsj3;->d(Lqj3;Lcom/yandex/div2/DivLinearGradient$ColorPoint;Loj3;Le74;)V

    goto :goto_6

    :cond_c
    return-void
.end method

.method public final b0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivText;->L:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivText;->L:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/yandex/div2/DivText;->M:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/yandex/div2/DivText;->M:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p2, Lcom/yandex/div2/DivText;->L:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    goto :goto_2

    :cond_3
    move-object p3, v1

    :goto_2
    iget-object v0, p2, Lcom/yandex/div2/DivText;->M:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->H(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/Long;Ljava/lang/Long;)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->L:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p2, Lcom/yandex/div2/DivText;->M:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-void

    :cond_5
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindMaxLines$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindMaxLines$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->L:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_4

    :cond_6
    move-object p0, v1

    :goto_4
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->M:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_7
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final c0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText$Ellipsis;Lcom/yandex/div2/DivText$Ellipsis;Loj3;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/yandex/div2/DivText$Ellipsis;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/yandex/div2/DivText$Ellipsis;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object p3, v0

    :goto_1
    invoke-static {v1, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    iget-object p3, p2, Lcom/yandex/div2/DivText$Ellipsis;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object p3, v0

    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->I(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    iget-object p3, p2, Lcom/yandex/div2/DivText$Ellipsis;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_4
    move-object p3, v0

    :goto_3
    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    iget-object p3, p2, Lcom/yandex/div2/DivText$Ellipsis;->d:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_5
    move-object p3, v0

    :goto_4
    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_6

    return-void

    :cond_6
    if-eqz p2, :cond_7

    iget-object p2, p2, Lcom/yandex/div2/DivText$Ellipsis;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p2, :cond_7

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainEllipsis$1;

    invoke-direct {p3, p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainEllipsis$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;)V

    invoke-virtual {p2, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    :cond_7
    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final d0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;)V
    .locals 11

    iget-object v0, p3, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    iget-object v2, p4, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p3, Lcom/yandex/div2/DivText;->I:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p4, :cond_1

    iget-object v2, p4, Lcom/yandex/div2/DivText;->I:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p3, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p4, :cond_2

    iget-object v2, p4, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p3}, Lcom/yandex/div2/DivText;->getExtensions()Ljava/util/List;

    move-result-object v0

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/yandex/div2/DivText;->getExtensions()Ljava/util/List;

    move-result-object p4

    goto :goto_3

    :cond_3
    move-object p4, v1

    :goto_3
    if-nez v0, :cond_4

    if-nez p4, :cond_4

    goto :goto_5

    :cond_4
    if-eqz v0, :cond_a

    if-nez p4, :cond_5

    goto :goto_6

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_6

    goto :goto_6

    :cond_6
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_7

    invoke-static {}, Ly71;->u()V

    :cond_7
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivExtension;

    check-cast v3, Lcom/yandex/div2/DivExtension;

    iget-object v3, v3, Lcom/yandex/div2/DivExtension;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/yandex/div2/DivExtension;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    move v2, v4

    goto :goto_4

    :cond_9
    :goto_5
    return-void

    :cond_a
    :goto_6
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p4

    iget-object v0, p3, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->J(Landroid/widget/TextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p3, Lcom/yandex/div2/DivText;->I:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p3, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;

    move-object v5, v0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindPlainText$callback$1;-><init>(Lcom/yandex/div2/DivText;Loj3;Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;)V

    iget-object p0, p3, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p3, Lcom/yandex/div2/DivText;->I:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_c
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p3, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final e0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivRadialGradient;Lcom/yandex/div2/DivTextGradient;Loj3;)V
    .locals 11

    instance-of v0, p3, Lcom/yandex/div2/DivTextGradient$c;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    check-cast p3, Lcom/yandex/div2/DivTextGradient$c;

    invoke-virtual {p3}, Lcom/yandex/div2/DivTextGradient$c;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {p3}, Lcom/yandex/div2/DivTextGradient$c;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {p3}, Lcom/yandex/div2/DivTextGradient$c;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object v1

    iget-object v1, v1, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    invoke-virtual {p3}, Lcom/yandex/div2/DivTextGradient$c;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object p3

    iget-object p3, p3, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    invoke-static {v0, p3}, Luj3;->a(Lnj3;Lnj3;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget-object p3, p2, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    const-string v0, "displayMetrics"

    invoke-static {v4, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v4, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->u0(Lcom/yandex/div2/DivRadialGradientRadius;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;

    move-result-object v7

    iget-object p3, p2, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {p0, p3, v4, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->t0(Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    move-result-object v8

    iget-object p3, p2, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {p0, p3, v4, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->t0(Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;

    move-result-object v9

    iget-object p3, p2, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    if-eqz p3, :cond_2

    invoke-interface {p3, p4}, Lnj3;->a(Loj3;)Ljava/util/List;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v10, p3

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :goto_2
    move-object v5, p0

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->K(Landroid/widget/TextView;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;Ljava/util/List;)V

    iget-object p3, p2, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    invoke-static {p3}, Luj3;->e(Lnj3;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p2, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    if-eqz p3, :cond_4

    new-instance v6, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRadialTextGradient$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivRadialGradient;Landroid/util/DisplayMetrics;Loj3;)V

    invoke-interface {p3, p4, v6}, Lnj3;->b(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final f0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V
    .locals 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->L(Lcom/yandex/div/internal/widget/EllipsizedTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    iget-object v0, p3, Lcom/yandex/div2/DivText;->p:Lcom/yandex/div2/DivText$Ellipsis;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    new-instance v2, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRichEllipsis$callback$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRichEllipsis$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    iget-object p0, v0, Lcom/yandex/div2/DivText$Ellipsis;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, v0, Lcom/yandex/div2/DivText$Ellipsis;->c:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p0, :cond_f

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivText$Range;

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p2

    :goto_2
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->l:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, p2

    :goto_3
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, p2

    :goto_4
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->n:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_5

    :cond_5
    move-object v3, p2

    :goto_5
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object v3, p2

    :goto_6
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->r:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_7

    :cond_7
    move-object v3, p2

    :goto_7
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_8

    :cond_8
    move-object v3, p2

    :goto_8
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_9

    :cond_9
    move-object v3, p2

    :goto_9
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->v:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_a

    :cond_a
    move-object v3, p2

    :goto_a
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->c:Lcom/yandex/div2/DivTextRangeBackground;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/yandex/div2/DivTextRangeBackground;->b()Ljava/lang/Object;

    move-result-object v3

    goto :goto_b

    :cond_b
    move-object v3, p2

    :goto_b
    instance-of v4, v3, Lcom/yandex/div2/DivSolidBackground;

    if-eqz v4, :cond_c

    check-cast v3, Lcom/yandex/div2/DivSolidBackground;

    iget-object v3, v3, Lcom/yandex/div2/DivSolidBackground;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    :cond_c
    iget-object v3, p3, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/yandex/div2/DivTextRangeBorder;->b:Lcom/yandex/div2/DivStroke;

    if-eqz v3, :cond_d

    iget-object v3, v3, Lcom/yandex/div2/DivStroke;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_d

    invoke-virtual {v3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_c

    :cond_d
    move-object v3, p2

    :goto_c
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p3, p3, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    if-eqz p3, :cond_e

    iget-object p3, p3, Lcom/yandex/div2/DivTextRangeBorder;->b:Lcom/yandex/div2/DivStroke;

    if-eqz p3, :cond_e

    iget-object p3, p3, Lcom/yandex/div2/DivStroke;->d:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_e

    invoke-virtual {p3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p3

    goto :goto_d

    :cond_e
    move-object p3, p2

    :goto_d
    invoke-virtual {p1, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    goto/16 :goto_0

    :cond_f
    iget-object p0, v0, Lcom/yandex/div2/DivText$Ellipsis;->b:Ljava/util/List;

    if-eqz p0, :cond_11

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivText$Image;

    iget-object v0, p3, Lcom/yandex/div2/DivText$Image;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivText$Image;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivText$Image;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    goto :goto_f

    :cond_10
    move-object v0, p2

    :goto_f
    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v0, p3, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    iget-object v0, v0, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p3, p3, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    iget-object p3, p3, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, v1, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    goto :goto_e

    :cond_11
    return-void
.end method

.method public final g0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V
    .locals 4

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->M(Landroid/widget/TextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    iget-object v1, p3, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, v0}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->F(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p3, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRichText$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRichText$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    invoke-virtual {v1, v0, v2}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRichText$callback$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindRichText$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    iget-object p0, p3, Lcom/yandex/div2/DivText;->v:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p3, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p3, Lcom/yandex/div2/DivText;->t:Lcom/yandex/div/json/expressions/Expression;

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p3, Lcom/yandex/div2/DivText;->I:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, p2

    :goto_1
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p3, Lcom/yandex/div2/DivText;->Q:Ljava/util/List;

    if-eqz p0, :cond_d

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivText$Range;

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_3

    :cond_2
    move-object v3, p2

    :goto_3
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_4

    :cond_3
    move-object v3, p2

    :goto_4
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->i:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_5

    :cond_4
    move-object v3, p2

    :goto_5
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->l:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_6

    :cond_5
    move-object v3, p2

    :goto_6
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_7

    :cond_6
    move-object v3, p2

    :goto_7
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->n:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_8

    :cond_7
    move-object v3, p2

    :goto_8
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_9

    :cond_8
    move-object v3, p2

    :goto_9
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->r:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_a

    :cond_9
    move-object v3, p2

    :goto_a
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_b

    :cond_a
    move-object v3, p2

    :goto_b
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v3

    goto :goto_c

    :cond_b
    move-object v3, p2

    :goto_c
    invoke-virtual {p1, v3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v2, v2, Lcom/yandex/div2/DivText$Range;->v:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    goto :goto_d

    :cond_c
    move-object v2, p2

    :goto_d
    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    goto/16 :goto_2

    :cond_d
    iget-object p0, p3, Lcom/yandex/div2/DivText;->F:Ljava/util/List;

    if-eqz p0, :cond_f

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivText$Image;

    iget-object v2, p3, Lcom/yandex/div2/DivText$Image;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivText$Image;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivText$Image;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivText$Image;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivText$Image;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, p2

    :goto_f
    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object v2, p3, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, v2, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p3, p3, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    iget-object p3, p3, Lcom/yandex/div2/DivFixedSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    goto :goto_e

    :cond_f
    return-void
.end method

.method public final h0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 1

    iget-object v0, p2, Lcom/yandex/div2/DivText;->T:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/yandex/div2/DivText;->T:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p2, Lcom/yandex/div2/DivText;->T:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->N(Landroid/widget/TextView;Z)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->T:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p2, p2, Lcom/yandex/div2/DivText;->T:Lcom/yandex/div/json/expressions/Expression;

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindSelectable$1;

    invoke-direct {p3, p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindSelectable$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;)V

    invoke-virtual {p2, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final i0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 1

    iget-object v0, p2, Lcom/yandex/div2/DivText;->V:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/yandex/div2/DivText;->V:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p2, Lcom/yandex/div2/DivText;->V:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivLineStyle;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->O(Landroid/widget/TextView;Lcom/yandex/div2/DivLineStyle;)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->V:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p2, p2, Lcom/yandex/div2/DivText;->V:Lcom/yandex/div/json/expressions/Expression;

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindStrikethrough$1;

    invoke-direct {p3, p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindStrikethrough$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;)V

    invoke-virtual {p2, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final j0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;)V
    .locals 1

    iget-object v0, p3, Lcom/yandex/div2/DivText;->Q:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/yandex/div2/DivText;->F:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->d0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->g0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;)V

    :goto_0
    return-void
.end method

.method public final k0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivText;->X:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivText;->X:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/yandex/div2/DivText;->Y:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_1

    iget-object v1, p3, Lcom/yandex/div2/DivText;->Y:Lcom/yandex/div/json/expressions/Expression;

    :cond_1
    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p2, Lcom/yandex/div2/DivText;->X:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivAlignmentHorizontal;

    iget-object v0, p2, Lcom/yandex/div2/DivText;->Y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAlignmentVertical;

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->P(Landroid/widget/TextView;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->X:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p2, Lcom/yandex/div2/DivText;->Y:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextAlignment$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextAlignment$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->X:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->Y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final l0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivText;->Z:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivText;->Z:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/yandex/div2/DivText;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/yandex/div2/DivText;->s:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p2, Lcom/yandex/div2/DivText;->Z:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    iget-object v0, p2, Lcom/yandex/div2/DivText;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->Q(Landroid/widget/TextView;ILjava/lang/Integer;)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->Z:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p2, Lcom/yandex/div2/DivText;->s:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextColor$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextColor$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->Z:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_5
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final m0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 7

    iget-object p3, p3, Lcom/yandex/div2/DivText;->a0:Lcom/yandex/div2/DivTextGradient;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_0
    instance-of v1, p3, Lcom/yandex/div2/DivTextGradient$b;

    if-eqz v1, :cond_2

    check-cast p3, Lcom/yandex/div2/DivTextGradient$b;

    invoke-virtual {p3}, Lcom/yandex/div2/DivTextGradient$b;->c()Lcom/yandex/div2/DivLinearGradient;

    move-result-object v4

    if-eqz p4, :cond_1

    iget-object v0, p4, Lcom/yandex/div2/DivText;->a0:Lcom/yandex/div2/DivTextGradient;

    :cond_1
    move-object v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->a0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div2/DivLinearGradient;Lcom/yandex/div2/DivTextGradient;Loj3;)V

    goto :goto_0

    :cond_2
    instance-of p2, p3, Lcom/yandex/div2/DivTextGradient$c;

    if-eqz p2, :cond_4

    check-cast p3, Lcom/yandex/div2/DivTextGradient$c;

    invoke-virtual {p3}, Lcom/yandex/div2/DivTextGradient$c;->c()Lcom/yandex/div2/DivRadialGradient;

    move-result-object p2

    if-eqz p4, :cond_3

    iget-object v0, p4, Lcom/yandex/div2/DivText;->a0:Lcom/yandex/div2/DivTextGradient;

    :cond_3
    invoke-virtual {p0, p1, p2, v0, p5}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->e0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivRadialGradient;Lcom/yandex/div2/DivTextGradient;Loj3;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final n0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 9

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p3, :cond_1

    iget-object v2, p3, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz p3, :cond_3

    iget-object v2, p3, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-eqz p3, :cond_5

    iget-object v2, p3, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_5

    :cond_5
    move-object v2, v1

    :goto_5
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    if-eqz p3, :cond_7

    iget-object v2, p3, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_7

    :cond_7
    move-object v2, v1

    :goto_7
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_8

    :cond_8
    move-object v0, v1

    :goto_8
    if-eqz p3, :cond_9

    iget-object v2, p3, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_9

    :cond_9
    move-object v2, v1

    :goto_9
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_a

    :cond_a
    move-object v0, v1

    :goto_a
    if-eqz p3, :cond_b

    iget-object v2, p3, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_b

    :cond_b
    move-object v2, v1

    :goto_b
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_c

    :cond_c
    move-object v0, v1

    :goto_c
    if-eqz p3, :cond_d

    iget-object p3, p3, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz p3, :cond_d

    iget-object p3, p3, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz p3, :cond_d

    iget-object p3, p3, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz p3, :cond_d

    iget-object p3, p3, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_d

    :cond_d
    move-object p3, v1

    :goto_d
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_e

    return-void

    :cond_e
    iget-object p3, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    if-eqz p3, :cond_f

    const-string v0, "displayMetrics"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/yandex/div2/DivText;->Z:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, p3, p4, v7, v0}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->s0(Lcom/yandex/div2/DivShadow;Loj3;Landroid/util/DisplayMetrics;I)Lof9;

    move-result-object v0

    goto :goto_e

    :cond_f
    move-object v0, v1

    :goto_e
    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->R(Landroid/widget/TextView;Lof9;)V

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_f

    :cond_10
    move-object v0, v1

    :goto_f
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_10

    :cond_11
    move-object v0, v1

    :goto_10
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_11

    :cond_12
    move-object v0, v1

    :goto_11
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_12

    :cond_13
    move-object v0, v1

    :goto_12
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_13

    :cond_14
    move-object v0, v1

    :goto_13
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_14

    :cond_15
    move-object v0, v1

    :goto_14
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p2, Lcom/yandex/div2/DivText;->b0:Lcom/yandex/div2/DivShadow;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_15

    :cond_16
    move-object v0, v1

    :goto_15
    invoke-static {v0}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTextShadow$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivShadow;Loj3;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivText;)V

    if-eqz p3, :cond_18

    iget-object p0, p3, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_18

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_16

    :cond_18
    move-object p0, v1

    :goto_16
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    if-eqz p3, :cond_19

    iget-object p0, p3, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_19

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_17

    :cond_19
    move-object p0, v1

    :goto_17
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    if-eqz p3, :cond_1a

    iget-object p0, p3, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_18

    :cond_1a
    move-object p0, v1

    :goto_18
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    if-eqz p3, :cond_1b

    iget-object p0, p3, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_19

    :cond_1b
    move-object p0, v1

    :goto_19
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    if-eqz p3, :cond_1c

    iget-object p0, p3, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz p0, :cond_1c

    iget-object p0, p0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    if-eqz p0, :cond_1c

    iget-object p0, p0, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_1a

    :cond_1c
    move-object p0, v1

    :goto_1a
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    if-eqz p3, :cond_1d

    iget-object p0, p3, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz p0, :cond_1d

    iget-object p0, p0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz p0, :cond_1d

    iget-object p0, p0, Lcom/yandex/div2/DivDimension;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_1b

    :cond_1d
    move-object p0, v1

    :goto_1b
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    if-eqz p3, :cond_1e

    iget-object p0, p3, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    if-eqz p0, :cond_1e

    iget-object p0, p0, Lcom/yandex/div2/DivDimension;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, p4, v0}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_1e
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final o0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 1

    iget-object v0, p2, Lcom/yandex/div2/DivText;->c0:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/yandex/div2/DivText;->c0:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p2, Lcom/yandex/div2/DivText;->c0:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->S(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Z)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->c0:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p2, p2, Lcom/yandex/div2/DivText;->c0:Lcom/yandex/div/json/expressions/Expression;

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTightenWidth$1;

    invoke-direct {p3, p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTightenWidth$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;)V

    invoke-virtual {p2, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final p0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivText;->t:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivText;->t:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/yandex/div2/DivText;->y:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/yandex/div2/DivText;->y:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p2, Lcom/yandex/div2/DivText;->t:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object p3, v1

    :goto_2
    iget-object v0, p2, Lcom/yandex/div2/DivText;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivFontWeight;

    iget-object v2, p2, Lcom/yandex/div2/DivText;->z:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_3

    :cond_4
    move-object v2, v1

    :goto_3
    invoke-virtual {p0, p1, p3, v0, v2}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->T(Landroid/widget/TextView;Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Long;)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->t:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p2, Lcom/yandex/div2/DivText;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p2, Lcom/yandex/div2/DivText;->z:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_5

    return-void

    :cond_5
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTypeface$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindTypeface$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->t:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_4

    :cond_6
    move-object p0, v1

    :goto_4
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivText;->z:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_7
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final q0(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText;Loj3;)V
    .locals 1

    iget-object v0, p2, Lcom/yandex/div2/DivText;->k0:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/yandex/div2/DivText;->k0:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p2, Lcom/yandex/div2/DivText;->k0:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivLineStyle;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivTextBinder;->U(Landroid/widget/TextView;Lcom/yandex/div2/DivLineStyle;)V

    iget-object p3, p2, Lcom/yandex/div2/DivText;->k0:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p2, p2, Lcom/yandex/div2/DivText;->k0:Lcom/yandex/div/json/expressions/Expression;

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindUnderline$1;

    invoke-direct {p3, p0, p1}, Lcom/yandex/div/core/view2/divs/DivTextBinder$bindUnderline$1;-><init>(Lcom/yandex/div/core/view2/divs/DivTextBinder;Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;)V

    invoke-virtual {p2, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final r0(Landroid/widget/TextView;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final s0(Lcom/yandex/div2/DivShadow;Loj3;Landroid/util/DisplayMetrics;I)Lof9;
    .locals 4

    ushr-int/lit8 p0, p4, 0x18

    iget-object p4, p1, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p4, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-static {p4, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p4

    iget-object v0, p1, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    iget-object v0, v0, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    invoke-static {v0, p3, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    iget-object v1, v1, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    invoke-static {v1, p3, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I

    move-result p3

    int-to-float p3, p3

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget-object v2, p1, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p1, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    int-to-double v2, p0

    mul-double/2addr p1, v2

    double-to-int p0, p1

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    new-instance p1, Lof9;

    invoke-direct {p1, v0, p3, p4, p0}, Lof9;-><init>(FFFI)V

    return-object p1
.end method

.method public final t0(Lcom/yandex/div2/DivRadialGradientCenter;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a;
    .locals 0

    instance-of p0, p1, Lcom/yandex/div2/DivRadialGradientCenter$b;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$a;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientCenter$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientCenter$b;->c()Lcom/yandex/div2/DivRadialGradientFixedCenter;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradientFixedCenter;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$a;-><init>(F)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/yandex/div2/DivRadialGradientCenter$c;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$b;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientCenter$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientCenter$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradientRelativeCenter;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    double-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$a$b;-><init>(F)V

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final u0(Lcom/yandex/div2/DivRadialGradientRadius;Landroid/util/DisplayMetrics;Loj3;)Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius;
    .locals 0

    instance-of p0, p1, Lcom/yandex/div2/DivRadialGradientRadius$b;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$a;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientRadius$b;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientRadius$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivFixedSize;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$a;-><init>(F)V

    goto :goto_1

    :cond_0
    instance-of p0, p1, Lcom/yandex/div2/DivRadialGradientRadius$c;

    if-eqz p0, :cond_5

    new-instance p0, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;

    check-cast p1, Lcom/yandex/div2/DivRadialGradientRadius$c;

    invoke-virtual {p1}, Lcom/yandex/div2/DivRadialGradientRadius$c;->c()Lcom/yandex/div2/DivRadialGradientRelativeRadius;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradientRelativeRadius;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div2/DivRadialGradientRelativeRadius$Value;

    sget-object p2, Lcom/yandex/div/core/view2/divs/DivTextBinder$a;->c:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;->NEAREST_SIDE:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    sget-object p1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;->FARTHEST_SIDE:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;->NEAREST_CORNER:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;->FARTHEST_CORNER:Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;

    :goto_0
    invoke-direct {p0, p1}, Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative;-><init>(Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;)V

    :goto_1
    return-object p0

    :cond_5
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final v0(Landroid/view/View;Lcom/yandex/div2/DivText;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->isFocusable()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p2, Lcom/yandex/div2/DivText;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method
