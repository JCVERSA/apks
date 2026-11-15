.class public final Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$a;,
        Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;,
        Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$c;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$a;


# instance fields
.field public final a:Lcu2;

.field public final b:Lwk2;

.field public final c:Landroid/graphics/Paint;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->e:Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$a;

    return-void
.end method

.method public constructor <init>(Lcu2;Lwk2;)V
    .locals 1

    const-string v0, "typefaceResolver"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->a:Lcu2;

    iput-object p2, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->b:Lwk2;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->h(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 0

    invoke-static {p0}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->j(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;ILcom/yandex/div2/DivText$Image;Loj3;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->s(ILcom/yandex/div2/DivText$Image;Loj3;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Landroid/text/Spannable;IILjava/util/List;ZILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->d(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Landroid/text/Spannable;IILjava/util/List;Z)V

    return-void
.end method

.method public static final h(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Ljava/util/List;)V
    .locals 1

    const-string v0, "$divView"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$textView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$actions"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->n()Lcom/yandex/div/core/view2/divs/DivActionBinder;

    move-result-object p0

    const-string v0, "divView.div2Component.actionBinder"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivActionBinder;->L(Lcom/yandex/div/core/view2/a;Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public static final j(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1

    const-string v0, "$textView"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Landroid/text/Spannable;IILjava/util/List;Z)V
    .locals 0

    move-object p0, p6

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance p0, Lp08;

    invoke-direct {p0, p1, p6}, Lp08;-><init>(Lcom/yandex/div/core/view2/a;Ljava/util/List;)V

    const/16 p1, 0x21

    invoke-interface {p3, p0, p4, p5, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    if-eqz p7, :cond_1

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->enableAccessibleClickableSpanSupport(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Landroid/text/Spannable;IILcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V
    .locals 6

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v5

    new-instance p0, Lcom/yandex/div/core/util/text/DivBackgroundSpan;

    invoke-direct {p0, p6, p7}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;-><init>(Lcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V

    instance-of p1, p2, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p0

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lkm2;->a(Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;Ljava/lang/CharSequence;Lcom/yandex/div/core/util/text/DivBackgroundSpan;IILoj3;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x21

    invoke-interface {p3, p0, p4, p5, p1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->getTextRoundedBgHelper$div_release()Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->a(Lcom/yandex/div/core/util/text/DivBackgroundSpan;)Z

    :cond_1
    return-void
.end method

.method public final g(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Landroid/text/Spannable;Laha;Lcom/yandex/div2/DivText$Image;)Lcom/yandex/div/core/view2/spannable/a;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Laha;->g()I

    move-result v8

    invoke-virtual {v0, v8, v4, v7}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->s(ILcom/yandex/div2/DivText$Image;Loj3;)I

    move-result v8

    iget-object v9, v4, Lcom/yandex/div2/DivText$Image;->j:Lcom/yandex/div2/DivFixedSize;

    const-string v10, "displayMetrics"

    invoke-static {v5, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5, v7}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->H0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v13

    iget-object v9, v4, Lcom/yandex/div2/DivText$Image;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-static {v9, v5, v7}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->H0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v14

    invoke-virtual/range {p4 .. p4}, Laha;->e()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_0
    move v15, v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :goto_1
    iget-object v5, v4, Lcom/yandex/div2/DivText$Image;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v5, v7}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivTextAlignmentVertical;

    invoke-static {v5}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M0(Lcom/yandex/div2/DivTextAlignmentVertical;)Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    move-result-object v16

    iget-object v4, v4, Lcom/yandex/div2/DivText$Image;->a:Lcom/yandex/div2/DivText$Image$Accessibility;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-object v9, v4, Lcom/yandex/div2/DivText$Image$Accessibility;->b:Lcom/yandex/div2/DivText$Image$Accessibility$Type;

    sget-object v10, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$c;->c:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    const/4 v10, 0x3

    const-class v11, Landroid/widget/ImageView;

    if-eq v9, v10, :cond_4

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    :cond_1
    move-object v9, v5

    goto :goto_2

    :cond_2
    invoke-static {v11}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v9

    invoke-interface {v9}, Lde5;->c()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_3
    const-class v9, Landroid/widget/TextView;

    invoke-static {v9}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v9

    invoke-interface {v9}, Lde5;->c()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    invoke-static {v11}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v9

    invoke-interface {v9}, Lde5;->c()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    const-class v9, Landroid/widget/Button;

    invoke-static {v9}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v9

    invoke-interface {v9}, Lde5;->c()Ljava/lang/String;

    move-result-object v9

    :goto_2
    iget-object v4, v4, Lcom/yandex/div2/DivText$Image$Accessibility;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v7}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v4, v5

    :goto_3
    invoke-virtual {v0, v1, v3, v8}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->r(Lcom/yandex/div/core/view2/a;Landroid/text/Spannable;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v7, Llu9;

    invoke-direct {v7, v6, v1, v2, v0}, Llu9;-><init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Ljava/util/List;)V

    goto :goto_4

    :cond_7
    move-object v7, v5

    :goto_4
    new-instance v0, Lcom/yandex/div/core/view2/spannable/a$a;

    invoke-direct {v0, v9, v4, v7}, Lcom/yandex/div/core/view2/spannable/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/div/core/view2/spannable/a$b;)V

    move-object/from16 v17, v0

    goto :goto_5

    :cond_8
    move-object/from16 v17, v5

    :goto_5
    new-instance v0, Lcom/yandex/div/core/view2/spannable/a;

    const/4 v12, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/yandex/div/core/view2/spannable/a;-><init>(Landroid/graphics/drawable/Drawable;IIILcom/yandex/div/core/view2/spannable/TextVerticalAlignment;Lcom/yandex/div/core/view2/spannable/a$a;)V

    add-int/lit8 v1, v8, 0x1

    const/16 v4, 0x21

    invoke-interface {v3, v0, v8, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    instance-of v1, v2, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    if-eqz v1, :cond_9

    move-object v5, v2

    check-cast v5, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5, v0}, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;->addImageSpan$div_release(Lcom/yandex/div/core/view2/spannable/a;)V

    :cond_a
    return-object v0
.end method

.method public final i(Landroid/widget/TextView;Landroid/text/Spannable;Laha;Lcom/yandex/div/core/view2/spannable/b;)V
    .locals 8

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->n()I

    move-result v0

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->f()I

    move-result v1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->d()Lcom/yandex/div2/DivTextAlignmentVertical;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/yandex/div2/DivTextAlignmentVertical;->BASELINE:Lcom/yandex/div2/DivTextAlignmentVertical;

    :cond_1
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->e()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x21

    if-eqz v3, :cond_4

    new-instance p1, Lfd0;

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->m()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Laha;->e()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_1
    invoke-direct {p1, v3, v2}, Lfd0;-><init>(II)V

    invoke-interface {p2, p1, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/yandex/div2/DivTextAlignmentVertical;->BASELINE:Lcom/yandex/div2/DivTextAlignmentVertical;

    if-eq v2, v3, :cond_6

    new-instance v3, Ltob;

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->i()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_5
    move v6, v4

    :goto_2
    invoke-static {v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M0(Lcom/yandex/div2/DivTextAlignmentVertical;)Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    move-result-object v2

    new-instance v7, Lku9;

    invoke-direct {v7, p1}, Lku9;-><init>(Landroid/widget/TextView;)V

    invoke-direct {v3, v6, v2, v7}, Ltob;-><init>(ILcom/yandex/div/core/view2/spannable/TextVerticalAlignment;Loj8;)V

    invoke-interface {p2, v3, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    :goto_3
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->i()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v2, La34;

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->m()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_7
    invoke-virtual {p3}, Laha;->e()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move v3, v4

    :goto_5
    invoke-direct {v2, p1, v3}, La34;-><init>(II)V

    invoke-interface {p2, v2, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v2, Lv24;

    invoke-direct {v2, p1}, Lv24;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->p()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v2, Lcom/yandex/div/internal/spannable/TextColorSpan;

    invoke-direct {v2, p1}, Lcom/yandex/div/internal/spannable/TextColorSpan;-><init>(I)V

    invoke-interface {p2, v2, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->l()Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    new-instance p1, Llk5;

    double-to-float v2, v2

    invoke-direct {p1, v2}, Llk5;-><init>(F)V

    invoke-interface {p2, p1, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->o()Lcom/yandex/div2/DivLineStyle;

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_f

    sget-object v6, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$c;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v6, p1

    if-eq p1, v3, :cond_e

    if-eq p1, v2, :cond_d

    goto :goto_6

    :cond_d
    new-instance p1, Lcom/yandex/div/internal/spannable/NoStrikethroughSpan;

    invoke-direct {p1}, Lcom/yandex/div/internal/spannable/NoStrikethroughSpan;-><init>()V

    invoke-interface {p2, p1, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    :cond_e
    new-instance p1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-interface {p2, p1, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    :goto_6
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->u()Lcom/yandex/div2/DivLineStyle;

    move-result-object p1

    if-eqz p1, :cond_12

    sget-object v6, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$c;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v6, p1

    if-eq p1, v3, :cond_11

    if-eq p1, v2, :cond_10

    goto :goto_7

    :cond_10
    new-instance p1, Lcom/yandex/div/internal/spannable/NoUnderlineSpan;

    invoke-direct {p1}, Lcom/yandex/div/internal/spannable/NoUnderlineSpan;-><init>()V

    invoke-interface {p2, p1, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_11
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p2, p1, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_12
    :goto_7
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->g()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_13

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->j()Lcom/yandex/div2/DivFontWeight;

    move-result-object p1

    if-nez p1, :cond_13

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->k()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_17

    :cond_13
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->j()Lcom/yandex/div2/DivFontWeight;

    move-result-object p1

    if-nez p1, :cond_15

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->k()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {p3}, Laha;->c()Lcom/yandex/div2/DivFontWeight;

    move-result-object p1

    invoke-virtual {p3}, Laha;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->f0(Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;)I

    move-result p1

    goto :goto_9

    :cond_15
    :goto_8
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->j()Lcom/yandex/div2/DivFontWeight;

    move-result-object p1

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->k()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->f0(Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;)I

    move-result p1

    :goto_9
    new-instance v2, Lidb;

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->a:Lcu2;

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->g()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_16

    invoke-virtual {p3}, Laha;->a()Ljava/lang/String;

    move-result-object v3

    :cond_16
    invoke-virtual {p0, v3, p1}, Lcu2;->a(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-direct {v2, p0}, Lidb;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {p2, v2, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_17
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->m()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_18

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->r()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1e

    :cond_18
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->m()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3}, Laha;->e()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/16 p0, 0x12

    goto :goto_a

    :cond_19
    move p0, v5

    :goto_a
    new-instance p1, Ldl5;

    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->r()Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_1a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_b

    :cond_1a
    move p3, v4

    :goto_b
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->m()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_1b
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->t()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_c

    :cond_1c
    move v2, v0

    :goto_c
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->s()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_d

    :cond_1d
    move v3, v1

    :goto_d
    invoke-direct {p1, p3, v4, v2, v3}, Ldl5;-><init>(IIII)V

    invoke-interface {p2, p1, v0, v1, p0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1e
    invoke-virtual {p4}, Lcom/yandex/div/core/view2/spannable/b;->q()Lof9;

    move-result-object p0

    if-eqz p0, :cond_1f

    new-instance p1, Lpf9;

    invoke-direct {p1, p0}, Lpf9;-><init>(Lof9;)V

    invoke-interface {p2, p1, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    return-void
.end method

.method public final k(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;Lcom/yandex/div2/DivText$Ellipsis;Le74;)Landroid/text/Spanned;
    .locals 10

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divText"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ellipsis"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p4, Lcom/yandex/div2/DivText$Ellipsis;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v6, p4, Lcom/yandex/div2/DivText$Ellipsis;->c:Ljava/util/List;

    iget-object v7, p4, Lcom/yandex/div2/DivText$Ellipsis;->b:Ljava/util/List;

    iget-object v8, p4, Lcom/yandex/div2/DivText$Ellipsis;->a:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->n(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le74;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;)Landroid/text/Spanned;
    .locals 10

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divText"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v9}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->n(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le74;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public final m(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;Le74;)Landroid/text/Spanned;
    .locals 10

    const-string v0, "bindingContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "divText"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p3, Lcom/yandex/div2/DivText;->W:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v6, p3, Lcom/yandex/div2/DivText;->Q:Ljava/util/List;

    iget-object v7, p3, Lcom/yandex/div2/DivText;->F:Ljava/util/List;

    iget-object v8, p3, Lcom/yandex/div2/DivText;->d:Ljava/util/List;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p4

    invoke-virtual/range {v1 .. v9}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->n(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le74;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Lcom/yandex/div2/DivText;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Le74;)Landroid/text/Spanned;
    .locals 29

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v0, p5

    move-object/from16 v13, p8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v9

    invoke-interface/range {p4 .. p4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\u200b"

    goto :goto_0

    :cond_0
    move-object/from16 v2, p4

    :goto_0
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, "context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v10, v1, v11, v2, v3}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->q(Landroid/content/Context;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Ljava/lang/String;)Laha;

    move-result-object v7

    invoke-virtual {v7}, Laha;->g()I

    move-result v6

    invoke-virtual {v10, v1, v11, v7, v0}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->u(Landroid/content/Context;Lcom/yandex/div/core/view2/a;Laha;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-virtual {v10, v7, v2, v9}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->t(Laha;Ljava/util/List;Loj3;)Ljava/util/List;

    move-result-object v5

    iget-boolean v2, v10, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->d:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-instance v2, Lel5;

    invoke-direct {v2}, Lel5;-><init>()V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v14, 0x21

    invoke-virtual {v8, v2, v4, v3, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    instance-of v2, v12, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    if-eqz v2, :cond_2

    move-object v2, v12

    check-cast v2, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;->clearImageSpans$div_release()V

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;->getTextRoundedBgHelper$div_release()Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->j()V

    :cond_3
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/core/view2/spannable/b;

    invoke-virtual {v10, v12, v8, v7, v2}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->i(Landroid/widget/TextView;Landroid/text/Spannable;Laha;Lcom/yandex/div/core/view2/spannable/b;)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_11

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_a

    :cond_5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div2/DivText$Range;

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->a:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v2, Lcom/yandex/div2/DivText$Range;->c:Lcom/yandex/div2/DivTextRangeBackground;

    if-nez v3, :cond_7

    iget-object v2, v2, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    if-eqz v2, :cond_6

    :cond_7
    if-eqz v0, :cond_11

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/yandex/div2/DivText$Range;

    iget-object v0, v3, Lcom/yandex/div2/DivText$Range;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 v2, 0x1f

    shr-long v18, v0, v2

    const-wide/16 v20, 0x0

    cmp-long v22, v18, v20

    const v23, 0x7fffffff

    const-string v4, "\' to Int"

    const-string v14, "Unable convert \'"

    const-wide/16 v24, -0x1

    if-eqz v22, :cond_b

    cmp-long v18, v18, v24

    if-nez v18, :cond_8

    goto :goto_4

    :cond_8
    sget-object v18, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v18

    if-eqz v18, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    :cond_9
    cmp-long v0, v0, v20

    if-lez v0, :cond_a

    move/from16 v0, v23

    goto :goto_5

    :cond_a
    const/high16 v0, -0x80000000

    goto :goto_5

    :cond_b
    :goto_4
    long-to-int v0, v0

    :goto_5
    invoke-static {v0, v6}, Lwn8;->g(II)I

    move-result v18

    iget-object v0, v3, Lcom/yandex/div2/DivText$Range;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 v2, 0x1f

    shr-long v26, v0, v2

    cmp-long v2, v26, v20

    if-eqz v2, :cond_f

    cmp-long v2, v26, v24

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    sget-object v2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lxi;->i(Ljava/lang/String;)V

    :cond_d
    cmp-long v0, v0, v20

    if-lez v0, :cond_e

    goto :goto_6

    :cond_e
    const/high16 v23, -0x80000000

    :goto_6
    move/from16 v0, v23

    goto :goto_8

    :cond_f
    :goto_7
    long-to-int v0, v0

    :goto_8
    invoke-static {v0, v6}, Lwn8;->g(II)I

    move-result v0

    move v14, v0

    goto :goto_9

    :cond_10
    move v14, v6

    :goto_9
    iget-object v4, v3, Lcom/yandex/div2/DivText$Range;->a:Ljava/util/List;

    const/16 v19, 0x40

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v28, v3

    move-object v3, v8

    move-object/from16 v23, v4

    const/16 v22, 0x0

    move/from16 v4, v18

    move-object/from16 p3, v5

    move v5, v14

    move/from16 v24, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v7

    move/from16 v7, v21

    move-object/from16 p5, v8

    move/from16 v8, v19

    move-object v11, v9

    move-object/from16 v9, v20

    invoke-static/range {v0 .. v9}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->e(Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Landroid/text/Spannable;IILjava/util/List;ZILjava/lang/Object;)V

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/yandex/div2/DivText$Range;->e:Lcom/yandex/div2/DivTextRangeBorder;

    iget-object v7, v0, Lcom/yandex/div2/DivText$Range;->c:Lcom/yandex/div2/DivTextRangeBackground;

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    invoke-virtual/range {v0 .. v7}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->f(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Landroid/text/Spannable;IILcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V

    move-object/from16 v5, p3

    move-object/from16 v8, p5

    move-object v9, v11

    move/from16 v4, v22

    move-object/from16 v7, v23

    move/from16 v6, v24

    move-object/from16 v11, p1

    goto/16 :goto_3

    :cond_11
    :goto_a
    move/from16 v22, v4

    move-object/from16 p3, v5

    move-object/from16 v23, v7

    move-object/from16 p5, v8

    move-object v11, v9

    invoke-virtual/range {p5 .. p5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->d(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Landroid/text/Spannable;IILjava/util/List;Z)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_17

    :goto_b
    add-int/lit8 v6, v0, -0x1

    move-object/from16 v7, p3

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/yandex/div2/DivText$Image;

    invoke-virtual/range {v23 .. v23}, Laha;->g()I

    move-result v1

    invoke-virtual {v10, v1, v8, v11}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->s(ILcom/yandex/div2/DivText$Image;Loj3;)I

    move-result v9

    if-lez v0, :cond_12

    invoke-virtual/range {v23 .. v23}, Laha;->g()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivText$Image;

    invoke-virtual {v10, v1, v0, v11}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->s(ILcom/yandex/div2/DivText$Image;Loj3;)I

    move-result v0

    move v14, v0

    goto :goto_c

    :cond_12
    const/high16 v14, -0x80000000

    :goto_c
    const-string v0, "#"

    move-object/from16 v5, p5

    invoke-virtual {v5, v9, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v23

    move-object/from16 p3, v7

    move-object v7, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->g(Lcom/yandex/div/core/view2/a;Landroid/widget/TextView;Landroid/text/Spannable;Laha;Lcom/yandex/div2/DivText$Image;)Lcom/yandex/div/core/view2/spannable/a;

    move-result-object v3

    const/16 v16, 0x1

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v9, :cond_13

    move/from16 v4, v16

    goto :goto_d

    :cond_13
    move/from16 v4, v22

    :goto_d
    if-lez v9, :cond_14

    add-int/lit8 v0, v9, -0x1

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lkotlin/text/a;->c(C)Z

    move-result v0

    if-nez v0, :cond_14

    move/from16 v0, v16

    goto :goto_e

    :cond_14
    move/from16 v0, v22

    :goto_e
    if-nez v4, :cond_15

    if-eqz v0, :cond_15

    const-string v0, "\u2060"

    invoke-virtual {v7, v9, v0}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_15
    iget-object v9, v10, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->b:Lwk2;

    iget-object v0, v8, Lcom/yandex/div2/DivText$Image;->i:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v11}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v5, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v8

    move-object v4, v7

    move-object v8, v5

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$b;-><init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText$Image;Lcom/yandex/div/core/view2/spannable/a;Landroid/text/Spanned;Le74;)V

    invoke-interface {v9, v14, v8}, Lwk2;->loadImage(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object v0

    const-string v1, "imageLoader.loadImage(\n \u2026xtConsumer)\n            )"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v0, v12}, Lcom/yandex/div/core/view2/Div2View;->addLoadReference(Ljn5;Landroid/view/View;)V

    if-gez v6, :cond_16

    goto :goto_f

    :cond_16
    move v0, v6

    move-object/from16 p5, v7

    goto/16 :goto_b

    :cond_17
    move-object/from16 v7, p5

    :goto_f
    if-eqz v13, :cond_18

    invoke-interface {v13, v7}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    return-object v7
.end method

.method public final o(Landroid/content/Context;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivShadow;I)Lof9;
    .locals 4

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p2

    ushr-int/lit8 p4, p4, 0x18

    iget-object v0, p3, Lcom/yandex/div2/DivShadow;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const-string v1, "displayMetrics"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->M(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v1, p3, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    iget-object v1, v1, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    invoke-static {v1, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p3, Lcom/yandex/div2/DivShadow;->d:Lcom/yandex/div2/DivPoint;

    iget-object v2, v2, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    invoke-static {v2, p1, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->G0(Lcom/yandex/div2/DivDimension;Landroid/util/DisplayMetrics;Loj3;)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->c:Landroid/graphics/Paint;

    iget-object v2, p3, Lcom/yandex/div2/DivShadow;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p3, p3, Lcom/yandex/div2/DivShadow;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    int-to-double v2, p4

    mul-double/2addr p2, v2

    double-to-int p2, p2

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    new-instance p2, Lof9;

    invoke-direct {p2, v1, p1, v0, p0}, Lof9;-><init>(FFFI)V

    return-object p2
.end method

.method public final p(Landroid/content/Context;Lcom/yandex/div/core/view2/a;Laha;Lcom/yandex/div2/DivText$Range;II)Lcom/yandex/div/core/view2/spannable/b;
    .locals 37

    move-object/from16 v0, p4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Laha;->b()I

    move-result v3

    iget-object v4, v0, Lcom/yandex/div2/DivText$Range;->i:Lcom/yandex/div/json/expressions/Expression;

    const-string v7, "\' to Int"

    const-string v8, "Unable convert \'"

    const-wide/16 v9, -0x1

    const/16 v11, 0x1f

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    shr-long v17, v5, v11

    cmp-long v4, v17, v12

    if-eqz v4, :cond_3

    cmp-long v4, v17, v9

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long v4, v5, v12

    if-lez v4, :cond_2

    const v4, 0x7fffffff

    goto :goto_1

    :cond_2
    const/high16 v4, -0x80000000

    goto :goto_1

    :cond_3
    :goto_0
    long-to-int v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    iget-object v5, v0, Lcom/yandex/div2/DivText$Range;->j:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v5, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div2/DivSizeUnit;

    new-instance v6, Lcom/yandex/div/core/view2/spannable/b;

    iget-object v14, v0, Lcom/yandex/div2/DivText$Range;->b:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v14, :cond_5

    invoke-virtual {v14, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/yandex/div2/DivTextAlignmentVertical;

    move-object/from16 v20, v14

    goto :goto_3

    :cond_5
    const/16 v20, 0x0

    :goto_3
    iget-object v14, v0, Lcom/yandex/div2/DivText$Range;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v14, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    const-string v15, "displayMetrics"

    invoke-static {v1, v15}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v1, v5}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->R0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v21

    iget-object v14, v0, Lcom/yandex/div2/DivText$Range;->g:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v14, :cond_6

    invoke-virtual {v14, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v22, v14

    goto :goto_4

    :cond_6
    const/16 v22, 0x0

    :goto_4
    iget-object v14, v0, Lcom/yandex/div2/DivText$Range;->h:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v14, :cond_7

    invoke-virtual {v14, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v23, v14

    goto :goto_5

    :cond_7
    const/16 v23, 0x0

    :goto_5
    if-eqz v4, :cond_8

    invoke-static {v4, v1, v5}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->R0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v24, v14

    goto :goto_6

    :cond_8
    const/16 v24, 0x0

    :goto_6
    iget-object v14, v0, Lcom/yandex/div2/DivText$Range;->l:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v14, :cond_9

    invoke-virtual {v14, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/yandex/div2/DivFontWeight;

    move-object/from16 v26, v14

    goto :goto_7

    :cond_9
    const/16 v26, 0x0

    :goto_7
    iget-object v14, v0, Lcom/yandex/div2/DivText$Range;->m:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v14, :cond_e

    invoke-virtual {v14, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    shr-long v27, v14, v11

    cmp-long v19, v27, v12

    if-eqz v19, :cond_d

    cmp-long v19, v27, v9

    if-nez v19, :cond_a

    goto :goto_8

    :cond_a
    sget-object v19, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v19

    if-eqz v19, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lxi;->i(Ljava/lang/String;)V

    :cond_b
    cmp-long v9, v14, v12

    if-lez v9, :cond_c

    const v9, 0x7fffffff

    goto :goto_9

    :cond_c
    const/high16 v9, -0x80000000

    goto :goto_9

    :cond_d
    :goto_8
    long-to-int v9, v14

    :goto_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_a

    :cond_e
    const/4 v9, 0x0

    :goto_a
    iget-object v10, v0, Lcom/yandex/div2/DivText$Range;->n:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v10, :cond_10

    invoke-virtual {v10, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_f
    int-to-double v3, v3

    div-double/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_b

    :cond_10
    const/4 v3, 0x0

    :goto_b
    iget-object v4, v0, Lcom/yandex/div2/DivText$Range;->o:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_11

    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4, v1, v5}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->Q0(Ljava/lang/Long;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v29, v4

    goto :goto_c

    :cond_11
    const/16 v29, 0x0

    :goto_c
    iget-object v4, v0, Lcom/yandex/div2/DivText$Range;->r:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_12

    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivLineStyle;

    move-object/from16 v30, v4

    goto :goto_d

    :cond_12
    const/16 v30, 0x0

    :goto_d
    iget-object v4, v0, Lcom/yandex/div2/DivText$Range;->s:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_13

    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v31, v4

    goto :goto_e

    :cond_13
    const/16 v31, 0x0

    :goto_e
    iget-object v4, v0, Lcom/yandex/div2/DivText$Range;->t:Lcom/yandex/div2/DivShadow;

    invoke-virtual/range {p3 .. p3}, Laha;->f()I

    move-result v10

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v12, p2

    invoke-virtual {v14, v15, v12, v4, v10}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->o(Landroid/content/Context;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivShadow;I)Lof9;

    move-result-object v4

    iget-object v10, v0, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v10, :cond_18

    invoke-virtual {v10, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    shr-long v10, v12, v11

    const-wide/16 v14, 0x0

    cmp-long v19, v10, v14

    if-eqz v19, :cond_17

    const-wide/16 v14, -0x1

    cmp-long v10, v10, v14

    if-nez v10, :cond_14

    goto :goto_f

    :cond_14
    sget-object v10, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v10

    if-eqz v10, :cond_15

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lxi;->i(Ljava/lang/String;)V

    :cond_15
    const-wide/16 v7, 0x0

    cmp-long v7, v12, v7

    if-lez v7, :cond_16

    const v16, 0x7fffffff

    goto :goto_10

    :cond_16
    const/high16 v16, -0x80000000

    goto :goto_10

    :cond_17
    :goto_f
    long-to-int v7, v12

    move/from16 v16, v7

    :goto_10
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7, v1, v5}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->R0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v33, v1

    goto :goto_11

    :cond_18
    const/16 v33, 0x0

    :goto_11
    iget-object v1, v0, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_19

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v34, v1

    goto :goto_12

    :cond_19
    const/16 v34, 0x0

    :goto_12
    iget-object v1, v0, Lcom/yandex/div2/DivText$Range;->u:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_1a

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v35, v1

    goto :goto_13

    :cond_1a
    const/16 v35, 0x0

    :goto_13
    iget-object v0, v0, Lcom/yandex/div2/DivText$Range;->v:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/yandex/div2/DivLineStyle;

    move-object/from16 v36, v14

    goto :goto_14

    :cond_1b
    const/16 v36, 0x0

    :goto_14
    move-object/from16 v17, v6

    move/from16 v18, p5

    move/from16 v19, p6

    move-object/from16 v25, v5

    move-object/from16 v27, v9

    move-object/from16 v28, v3

    move-object/from16 v32, v4

    invoke-direct/range {v17 .. v36}, Lcom/yandex/div/core/view2/spannable/b;-><init>(IILcom/yandex/div2/DivTextAlignmentVertical;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/yandex/div2/DivSizeUnit;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Integer;Lcom/yandex/div2/DivLineStyle;Ljava/lang/Integer;Lof9;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/yandex/div2/DivLineStyle;)V

    return-object v6
.end method

.method public final q(Landroid/content/Context;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivText;Ljava/lang/String;)Laha;
    .locals 27

    move-object/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v2

    iget-object v3, v0, Lcom/yandex/div2/DivText;->v:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const/16 v5, 0x1f

    shr-long v6, v3, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    const/high16 v11, -0x80000000

    const v12, 0x7fffffff

    const-string v13, "\' to Int"

    const-string v14, "Unable convert \'"

    const-wide/16 v15, -0x1

    if-eqz v10, :cond_3

    cmp-long v6, v6, v15

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    sget-object v6, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long v3, v3, v8

    if-lez v3, :cond_2

    move v3, v12

    goto :goto_0

    :cond_2
    move v3, v11

    :goto_0
    move/from16 v20, v3

    goto :goto_2

    :cond_3
    :goto_1
    long-to-int v3, v3

    goto :goto_0

    :goto_2
    iget-object v3, v0, Lcom/yandex/div2/DivText;->w:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivSizeUnit;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "displayMetrics"

    invoke-static {v1, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->R0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v19

    iget-object v4, v0, Lcom/yandex/div2/DivText;->y:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v23, v4

    check-cast v23, Lcom/yandex/div2/DivFontWeight;

    iget-object v4, v0, Lcom/yandex/div2/DivText;->z:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_8

    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    shr-long v17, v6, v5

    cmp-long v4, v17, v8

    if-eqz v4, :cond_7

    cmp-long v4, v17, v15

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    sget-object v4, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lxi;->i(Ljava/lang/String;)V

    :cond_5
    cmp-long v4, v6, v8

    if-lez v4, :cond_6

    move v4, v12

    goto :goto_4

    :cond_6
    move v4, v11

    goto :goto_4

    :cond_7
    :goto_3
    long-to-int v4, v6

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v24, v4

    goto :goto_5

    :cond_8
    const/16 v24, 0x0

    :goto_5
    iget-object v4, v0, Lcom/yandex/div2/DivText;->t:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v22, v4

    goto :goto_6

    :cond_9
    const/16 v22, 0x0

    :goto_6
    iget-object v4, v0, Lcom/yandex/div2/DivText;->I:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_e

    invoke-virtual {v4, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    shr-long v4, v6, v5

    cmp-long v10, v4, v8

    if-eqz v10, :cond_c

    cmp-long v4, v4, v15

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    sget-object v4, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lxi;->i(Ljava/lang/String;)V

    :cond_b
    cmp-long v4, v6, v8

    if-lez v4, :cond_d

    move v11, v12

    goto :goto_8

    :cond_c
    :goto_7
    long-to-int v11, v6

    :cond_d
    :goto_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v1, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->R0(Ljava/lang/Number;Landroid/util/DisplayMetrics;Lcom/yandex/div2/DivSizeUnit;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v25, v1

    goto :goto_9

    :cond_e
    const/16 v25, 0x0

    :goto_9
    iget-object v0, v0, Lcom/yandex/div2/DivText;->Z:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v26

    new-instance v0, Laha;

    move-object/from16 v17, v0

    move-object/from16 v18, p4

    move-object/from16 v21, v3

    invoke-direct/range {v17 .. v26}, Laha;-><init>(Ljava/lang/String;IILcom/yandex/div2/DivSizeUnit;Ljava/lang/String;Lcom/yandex/div2/DivFontWeight;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public final r(Lcom/yandex/div/core/view2/a;Landroid/text/Spannable;I)Ljava/util/List;
    .locals 1

    add-int/lit8 p0, p3, 0x1

    const-class v0, Lp08;

    invoke-interface {p2, p3, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lp08;

    array-length p2, p0

    const/4 p3, 0x1

    if-le p2, p3, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object p1

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "Two or more clickable ranges intersect."

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Leg2;->f(Lcom/yandex/div/core/view2/Div2View;Ljava/lang/Throwable;)V

    :cond_0
    invoke-static {p0}, Lhi;->Y([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp08;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lp08;->b()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final s(ILcom/yandex/div2/DivText$Image;Loj3;)I
    .locals 10

    iget-object p0, p2, Lcom/yandex/div2/DivText$Image;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p0, p2, Lcom/yandex/div2/DivText$Image;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivText$Image$IndexingDirection;

    sget-object p2, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$c;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const/4 p2, 0x1

    const/high16 p3, -0x80000000

    const v2, 0x7fffffff

    const-string v3, "\' to Int"

    const-string v4, "Unable convert \'"

    const-wide/16 v5, -0x1

    const/16 v7, 0x1f

    const-wide/16 v8, 0x0

    if-eq p0, p2, :cond_4

    const/4 p2, 0x2

    if-ne p0, p2, :cond_3

    int-to-long p0, p1

    sub-long/2addr p0, v0

    shr-long v0, p0, v7

    cmp-long p2, v0, v8

    if-eqz p2, :cond_2

    cmp-long p2, v0, v5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p2, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lxi;->i(Ljava/lang/String;)V

    :cond_1
    cmp-long p0, p0, v8

    if-lez p0, :cond_8

    :goto_0
    move p3, v2

    goto :goto_3

    :cond_2
    :goto_1
    long-to-int p3, p0

    goto :goto_3

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    shr-long p0, v0, v7

    cmp-long p2, p0, v8

    if-eqz p2, :cond_7

    cmp-long p0, p0, v5

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    sget-object p0, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    :cond_6
    cmp-long p0, v0, v8

    if-lez p0, :cond_8

    goto :goto_0

    :cond_7
    :goto_2
    long-to-int p3, v0

    :cond_8
    :goto_3
    return p3
.end method

.method public final t(Laha;Ljava/util/List;Loj3;)Ljava/util/List;
    .locals 6

    if-eqz p2, :cond_2

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivText$Image;

    iget-object v2, v2, Lcom/yandex/div2/DivText$Image;->f:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Laha;->g()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$preprocessImages$$inlined$sortedBy$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder$preprocessImages$$inlined$sortedBy$1;-><init>(Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;Laha;Loj3;)V

    invoke-static {v0, p2}, Li81;->T0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public final u(Landroid/content/Context;Lcom/yandex/div/core/view2/a;Laha;Ljava/util/List;)Ljava/util/List;
    .locals 20

    const/4 v0, 0x1

    invoke-virtual/range {p3 .. p3}, Laha;->e()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    move-object/from16 v1, p4

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Laha;->g()I

    move-result v2

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    new-array v5, v3, [Ljava/lang/Integer;

    invoke-static {v5}, Lxe9;->e([Ljava/lang/Object;)Ljava/util/TreeSet;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    add-int/2addr v4, v0

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p4, :cond_d

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Lcom/yandex/div2/DivText$Range;

    iget-object v7, v12, Lcom/yandex/div2/DivText$Range;->q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v7, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    const/16 v9, 0x1f

    shr-long v10, v7, v9

    const-wide/16 v13, 0x0

    cmp-long v15, v10, v13

    const/high16 v16, -0x80000000

    const v17, 0x7fffffff

    const-string v0, "\' to Int"

    const-string v3, "Unable convert \'"

    const-wide/16 v18, -0x1

    if-eqz v15, :cond_6

    cmp-long v10, v10, v18

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    sget-object v10, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lxi;->i(Ljava/lang/String;)V

    :cond_4
    cmp-long v7, v7, v13

    if-lez v7, :cond_5

    move/from16 v7, v17

    goto :goto_3

    :cond_5
    move/from16 v7, v16

    goto :goto_3

    :cond_6
    :goto_2
    long-to-int v7, v7

    :goto_3
    invoke-static {v7, v2}, Lwn8;->g(II)I

    move-result v7

    iget-object v8, v12, Lcom/yandex/div2/DivText$Range;->f:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    shr-long v8, v10, v9

    cmp-long v15, v8, v13

    if-eqz v15, :cond_a

    cmp-long v8, v8, v18

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    sget-object v8, Lae5;->a:Lae5;

    invoke-static {}, Lxi;->o()Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxi;->i(Ljava/lang/String;)V

    :cond_8
    cmp-long v0, v10, v13

    if-lez v0, :cond_9

    move/from16 v16, v17

    :cond_9
    move/from16 v0, v16

    goto :goto_5

    :cond_a
    :goto_4
    long-to-int v0, v10

    :goto_5
    invoke-static {v0, v2}, Lwn8;->g(II)I

    move-result v0

    goto :goto_6

    :cond_b
    move v0, v2

    :goto_6
    if-ge v7, v0, :cond_c

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move v13, v7

    move v14, v0

    invoke-virtual/range {v8 .. v14}, Lcom/yandex/div/core/view2/spannable/SpannedTextBuilder;->p(Landroid/content/Context;Lcom/yandex/div/core/view2/a;Laha;Lcom/yandex/div2/DivText$Range;II)Lcom/yandex/div/core/view2/spannable/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/div/core/view2/spannable/b;->v()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v0, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    invoke-static {v6}, Lc81;->A(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Laha;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/yandex/div/core/view2/spannable/b;->u:Lcom/yandex/div/core/view2/spannable/b$a;

    invoke-virtual {v3, v1, v2, v0}, Lcom/yandex/div/core/view2/spannable/b$a;->b(III)Lcom/yandex/div/core/view2/spannable/b;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-static {v5}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_11

    sget-object v0, Lcom/yandex/div/core/view2/spannable/b;->u:Lcom/yandex/div/core/view2/spannable/b$a;

    invoke-virtual {v0, v4, v4}, Lcom/yandex/div/core/view2/spannable/b$a;->a(II)Lcom/yandex/div/core/view2/spannable/b;

    move-result-object v0

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div/core/view2/spannable/b;

    invoke-virtual {v0, v3, v4, v4}, Lcom/yandex/div/core/view2/spannable/b;->w(Lcom/yandex/div/core/view2/spannable/b;II)Lcom/yandex/div/core/view2/spannable/b;

    move-result-object v0

    goto :goto_8

    :cond_10
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    :goto_9
    if-ge v7, v5, :cond_16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v1

    :goto_a
    if-ge v10, v9, :cond_13

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "overlappingSpans[j]"

    invoke-static {v11, v12}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/yandex/div/core/view2/spannable/b;

    invoke-virtual {v11}, Lcom/yandex/div/core/view2/spannable/b;->n()I

    move-result v12

    if-lt v8, v12, :cond_13

    invoke-virtual {v11}, Lcom/yandex/div/core/view2/spannable/b;->n()I

    move-result v12

    if-le v8, v12, :cond_12

    invoke-virtual {v11}, Lcom/yandex/div/core/view2/spannable/b;->f()I

    move-result v12

    if-gt v8, v12, :cond_12

    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_12
    const/4 v11, 0x1

    add-int/2addr v10, v11

    goto :goto_a

    :cond_13
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_15

    sget-object v9, Lcom/yandex/div/core/view2/spannable/b;->u:Lcom/yandex/div/core/view2/spannable/b$a;

    invoke-virtual {v9, v4, v8}, Lcom/yandex/div/core/view2/spannable/b$a;->a(II)Lcom/yandex/div/core/view2/spannable/b;

    move-result-object v9

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/yandex/div/core/view2/spannable/b;

    invoke-virtual {v9, v11, v4, v8}, Lcom/yandex/div/core/view2/spannable/b;->w(Lcom/yandex/div/core/view2/spannable/b;II)Lcom/yandex/div/core/view2/spannable/b;

    move-result-object v9

    goto :goto_b

    :cond_14
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v4, 0x1

    add-int/2addr v7, v4

    move v4, v8

    goto :goto_9

    :cond_16
    return-object v2
.end method
