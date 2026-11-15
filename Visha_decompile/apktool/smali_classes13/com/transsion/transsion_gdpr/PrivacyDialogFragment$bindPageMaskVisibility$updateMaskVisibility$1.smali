.class final Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transsion_gdpr/PrivacyDialogFragment;->C(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $maskView:Landroid/view/View;

.field final synthetic $titleScrollView:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;->$titleScrollView:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    iput-object p2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;->$maskView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;->$titleScrollView:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;->$titleScrollView:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;->$titleScrollView:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;->$titleScrollView:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/transsion/transsion_gdpr/PrivacyDialogFragment$bindPageMaskVisibility$updateMaskVisibility$1;->$maskView:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
