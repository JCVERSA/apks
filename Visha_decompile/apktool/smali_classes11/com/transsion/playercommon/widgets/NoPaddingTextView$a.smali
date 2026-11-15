.class public Lcom/transsion/playercommon/widgets/NoPaddingTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/NoPaddingTextView;->getNoVerticalPaddingText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/transsion/playercommon/widgets/NoPaddingTextView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/NoPaddingTextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/NoPaddingTextView$a;->c:Lcom/transsion/playercommon/widgets/NoPaddingTextView;

    iput-object p2, p0, Lcom/transsion/playercommon/widgets/NoPaddingTextView$a;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/NoPaddingTextView$a;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p3, p1, p5, p4, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/NoPaddingTextView$a;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/NoPaddingTextView$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p0

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int p3, p1, p2

    int-to-float p3, p3

    sub-float/2addr p0, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p0, p3

    int-to-float p2, p2

    sub-float/2addr p2, p0

    float-to-int p2, p2

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p1, p1

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_0
    iget p0, p2, Landroid/graphics/Rect;->top:I

    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_0
    iget p0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return-void
.end method
