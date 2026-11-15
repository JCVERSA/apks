.class public final Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final b:I

.field public final c:Ljava/lang/ref/WeakReference;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;I)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->b:I

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->d:Z

    return p0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->d:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "widget"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->y:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;

    invoke-virtual {v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$b;->a()Lid4;

    move-result-object v0

    iget p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->b:I

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lid4;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lid4;->a(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 7

    const-string v0, "ds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget v2, Lcom/transsion/widgetsgdpr/R$attr;->contentLinkTextColor:I

    sget v3, Lcom/transsion/widgetsgdpr/R$attr;->contentLinkTextFont:I

    sget v4, Lcom/transsion/widgetsgdpr/R$attr;->contentLinkTextWeight:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    invoke-static {v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->l(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v2, "context.obtainStyledAttr\u2026mCustomThemeResId, attrs)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsgdpr/R$color;->os_gdpr_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/16 v6, 0x226

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-static {v4, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-boolean p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$f;->d:Z

    if-eqz p0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
