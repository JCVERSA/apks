.class public final Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    int-to-float p0, p0

    invoke-virtual {p1, p2, p0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 7

    const-string v0, "widget"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0, p1, p3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;->a(Landroid/widget/TextView;Landroid/view/MotionEvent;)I

    move-result v1

    const-class v2, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    invoke-interface {p2, v1, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    const-string v3, "spans"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const/4 v6, 0x0

    if-nez v3, :cond_1

    aget-object v2, v2, v4

    goto :goto_1

    :cond_1
    move-object v2, v6

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v5, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    goto/16 :goto_6

    :cond_2
    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;->a:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    if-eqz v0, :cond_b

    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;->a:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    if-gt p3, v1, :cond_3

    if-gt v1, p2, :cond_3

    move v4, v5

    :cond_3
    iget-object p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;->a:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->a()Z

    move-result p2

    if-ne p2, v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;->a:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->b(Z)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :goto_3
    return v5

    :cond_6
    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;->a:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    if-eqz v1, :cond_b

    if-ne v0, v5, :cond_7

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    move p3, v5

    goto :goto_4

    :cond_7
    move p3, v4

    :goto_4
    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;->a:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v4}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->b(Z)V

    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-object v6, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;->a:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    if-eqz p3, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->onClick(Landroid/view/View;)V

    :cond_9
    return v5

    :cond_a
    if-eqz v2, :cond_b

    iput-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$a;->a:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;

    invoke-virtual {v2, v5}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->b(Z)V

    invoke-interface {p2, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    invoke-interface {p2, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p2, p0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return v5

    :cond_b
    :goto_6
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
