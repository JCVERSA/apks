.class public Lir7;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# static fields
.field public static a:Landroid/text/method/LinkMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static a()Landroid/text/method/LinkMovementMethod;
    .locals 1

    sget-object v0, Lir7;->a:Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_0

    new-instance v0, Lir7;

    invoke-direct {v0}, Lir7;-><init>()V

    sput-object v0, Lir7;->a:Landroid/text/method/LinkMovementMethod;

    :cond_0
    sget-object v0, Lir7;->a:Landroid/text/method/LinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v0, Landroid/text/style/ClickableSpan;

    const/4 v1, 0x0

    invoke-interface {p2, v1, p0, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->z(Landroid/content/Context;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_link_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    :goto_0
    :try_start_1
    array-length v0, p0

    if-ge v1, v0, :cond_0

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aget-object v2, p0, v1

    invoke-interface {p2, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, p0, v1

    invoke-interface {p2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {p2, v0, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr p3, v5

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    int-to-float v5, v5

    invoke-virtual {p3, v4, v5}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, p3, p3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/text/style/ClickableSpan;

    array-length v4, p3

    if-eqz v4, :cond_5

    if-ne v0, v3, :cond_1

    aget-object p3, p3, v2

    invoke-virtual {p3, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lir7;->b(Landroid/widget/TextView;Landroid/text/Spannable;)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lir7;->b(Landroid/widget/TextView;Landroid/text/Spannable;)V

    goto :goto_2

    :cond_3
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v4, Lcom/transsion/xuanniao/account/R$attr;->os_platform_disabled_color:I

    invoke-virtual {v1, v4, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    move p0, v2

    goto :goto_1

    :catch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/transsion/xuanniao/account/R$color;->xn_link_color_dis:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1
    :try_start_1
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aget-object p0, p3, v2

    invoke-interface {p2, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    aget-object p3, p3, v2

    invoke-interface {p2, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    const/16 v0, 0x21

    invoke-interface {p2, p1, p0, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v3

    :cond_5
    invoke-virtual {p0, p1, p2}, Lir7;->b(Landroid/widget/TextView;Landroid/text/Spannable;)V

    :cond_6
    return v2
.end method
