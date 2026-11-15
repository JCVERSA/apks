.class public final Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->z0(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1",
        "Landroid/widget/FrameLayout;",
        "",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "Lzfb;",
        "onMeasure",
        "(II)V",
        "widgetsgdpr_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/ContextThemeWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 8

    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {v0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->D(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lolb;->q0(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v2, v3

    :cond_1
    iget-object v3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {v3}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->q(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {v4, p0, v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->r(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/View;Z)I

    move-result v4

    iget-object v6, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {v6, p0, v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->p(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;Landroid/view/View;Z)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    if-ne v7, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    if-ne v7, v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    if-ne v7, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    if-eq v7, v6, :cond_3

    :cond_2
    invoke-virtual {p0, v3, v4, v3, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {v1}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->f(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)I

    move-result v1

    mul-int/2addr v1, v5

    sub-int/2addr v0, v1

    add-int/2addr v0, v4

    add-int/2addr v0, v6

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const/16 v1, 0x10

    goto :goto_1

    :cond_5
    const/16 v1, 0xb4

    :goto_1
    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$wrapDialogContentView$dialogWrapper$1;->b:Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;

    invoke-static {v2}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->k(Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-lez v0, :cond_7

    if-eqz v2, :cond_6

    if-le v1, v0, :cond_7

    :cond_6
    const/high16 p2, -0x80000000

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
