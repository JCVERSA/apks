.class public Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public l:F

.field public m:I

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Ljava/lang/String;

.field public s:Landroid/widget/EditText;

.field public t:Landroid/view/View;

.field public u:Lcom/transsion/widgets/MultiFlowLayout;

.field public v:[I

.field public w:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    sget v0, Lcom/transsion/playercommon/R$string;->rating_tip_1:I

    sget v1, Lcom/transsion/playercommon/R$string;->rating_tip_2:I

    sget v2, Lcom/transsion/playercommon/R$string;->rating_tip_3:I

    sget v3, Lcom/transsion/playercommon/R$string;->rating_tip_4:I

    sget v4, Lcom/transsion/playercommon/R$string;->rating_tip_5:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->v:[I

    sget v0, Lcom/transsion/playercommon/R$string;->rating_feed_1:I

    sget v1, Lcom/transsion/playercommon/R$string;->rating_feed_2:I

    sget v2, Lcom/transsion/playercommon/R$string;->rating_feed_3:I

    sget v3, Lcom/transsion/playercommon/R$string;->rating_feed_4:I

    sget v4, Lcom/transsion/playercommon/R$string;->rating_feed_5:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->w:[I

    return-void
.end method

.method public static synthetic D(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->L(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;Lcom/transsion/widgets/MultiFlowLayout$FlowBean;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->K(Lcom/transsion/widgets/MultiFlowLayout$FlowBean;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic F(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->H()V

    return-void
.end method

.method private synthetic L(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    invoke-virtual {v1}, Lcom/transsion/widgets/MultiFlowLayout;->getSelectedLabels()Ljava/util/List;

    move-result-object v1

    const-string v2, "_"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    invoke-virtual {v1}, Lcom/transsion/widgets/MultiFlowLayout;->getSelectedLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    invoke-virtual {v1}, Lcom/transsion/widgets/MultiFlowLayout;->getSelectedLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    invoke-virtual {v4}, Lcom/transsion/widgets/MultiFlowLayout;->getSelectedLabels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;

    iget v4, v4, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;->type:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    invoke-virtual {v4}, Lcom/transsion/widgets/MultiFlowLayout;->getSelectedLabels()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;

    iget v4, v4, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;->type:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->m:I

    iget v2, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->r:Ljava/lang/String;

    invoke-static {v1, v2, p1, v3}, Lpy5;->d(IFLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v1, "mmkv_gp_rating_download"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_3
    iget p1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0, p1, v1}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->P(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p0, Lcom/transsion/playercommon/R$string;->gp_rating_check:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$string;->feedback:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->s:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, v0, v2, v1}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;->f(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_2
    return-void
.end method

.method private synthetic M(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "gp_download_count_Limit"

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "gp_download_count_time"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "gp_download_count"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    iget p1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->m:I

    iget-object p0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->r:Ljava/lang/String;

    invoke-static {p1, p0}, Lpy5;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static O(Ljava/lang/String;)Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;

    invoke-direct {v0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;-><init>()V

    iput-object p0, v0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static P(Landroid/content/Context;)V
    .locals 5

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "com.android.vending"

    const/high16 v2, 0x10000000

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v4, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v3, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic u(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->N(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->M(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;Landroid/widget/ImageView;F)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->J(Landroid/widget/ImageView;F)V

    return-void
.end method


# virtual methods
.method public final G()V
    .locals 5

    iget v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->v:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->t:Landroid/view/View;

    if-eqz v0, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->o:Landroid/widget/TextView;

    if-nez v0, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->H()V

    return-void
.end method

.method public final H()V
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    invoke-virtual {v0}, Lcom/transsion/widgets/MultiFlowLayout;->getSelectedLabels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object p0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public I(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic J(Landroid/widget/ImageView;F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_rating_one:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_rating_two:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_rating_three:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result v1

    if-nez v1, :cond_3

    const/high16 v1, 0x40900000    # 4.5f

    invoke-virtual {p0, p2, v1}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget p2, Lcom/transsion/playercommon/R$drawable;->ic_rating_four:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    move p2, v0

    :cond_4
    :goto_0
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->I(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_rating_five:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_6

    sget v2, Lcom/transsion/playercommon/R$dimen;->gp_guide_normal_five_w_small:I

    goto :goto_1

    :cond_6
    sget v2, Lcom/transsion/playercommon/R$dimen;->gp_guide_normal_small:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_7

    sget v3, Lcom/transsion/playercommon/R$dimen;->gp_guide_normal_five_h_small:I

    goto :goto_2

    :cond_7
    sget v3, Lcom/transsion/playercommon/R$dimen;->gp_guide_normal_small:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    sget v0, Lcom/transsion/playercommon/R$string;->gp_go_rate:I

    goto :goto_3

    :cond_8
    sget v0, Lcom/transsion/playercommon/R$string;->submit:I

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iput p2, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->l:F

    invoke-virtual {p0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->G()V

    return-void
.end method

.method public final synthetic K(Lcom/transsion/widgets/MultiFlowLayout$FlowBean;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->H()V

    return-void
.end method

.method public final synthetic N(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    sget p0, Lcom/transsion/playercommon/R$layout;->dialog_download_gp_rating:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v2, v2, -0x60

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x51

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v2, v2, -0x60

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/transsion/playercommon/R$color;->transparent:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v2, 0x0

    const/16 v3, 0xa2

    invoke-virtual {p0, v2, v2, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/playercommon/R$id;->score:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

    sget v0, Lcom/transsion/playercommon/R$id;->bg_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/transsion/playercommon/R$id;->submit:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->n:Landroid/widget/TextView;

    sget v1, Lcom/transsion/playercommon/R$id;->rate_tip:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->o:Landroid/widget/TextView;

    sget v1, Lcom/transsion/playercommon/R$id;->rating_tip:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->q:Landroid/widget/TextView;

    sget v1, Lcom/transsion/playercommon/R$id;->input:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->s:Landroid/widget/EditText;

    sget v1, Lcom/transsion/playercommon/R$id;->input_tip:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->p:Landroid/widget/TextView;

    sget v1, Lcom/transsion/playercommon/R$id;->tag:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgets/MultiFlowLayout;

    iput-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    sget v1, Lcom/transsion/playercommon/R$id;->input_lay:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->t:Landroid/view/View;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "count"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->m:I

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->o:Landroid/widget/TextView;

    sget-boolean v5, Lpp3;->c:Z

    if-eqz v5, :cond_0

    sget v5, Lcom/transsion/playercommon/R$string;->gp_rating_tip_pre:I

    goto :goto_0

    :cond_0
    sget v5, Lcom/transsion/playercommon/R$string;->gp_rating_tip:I

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget v5, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->m:I

    invoke-virtual {v1, v2, v5}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    iget v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->m:I

    iget-object v2, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lpy5;->e(ILjava/lang/String;)V

    new-instance v1, Lbz2;

    invoke-direct {v1, p0, v0}, Lbz2;-><init>(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v1}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->setOnRatingChangedListener(Lcom/transsion/widgets/ratingbar/OnRatingChangedListener;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->w:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    new-instance v2, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v1, v0}, Lcom/transsion/widgets/MultiFlowLayout$FlowBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    invoke-virtual {v0, p2, v4}, Lcom/transsion/widgets/MultiFlowLayout;->setLabels(Ljava/util/List;Z)V

    iget-object p2, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->u:Lcom/transsion/widgets/MultiFlowLayout;

    new-instance v0, Lcz2;

    invoke-direct {v0, p0}, Lcz2;-><init>(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;)V

    invoke-virtual {p2, v0}, Lcom/transsion/widgets/MultiFlowLayout;->setOnTagClickListener(Lcom/transsion/widgets/MultiFlowLayout$OnTagClickListener;)V

    iget-object p2, p0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;->s:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog$a;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog$a;-><init>(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, v3}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    sget p2, Lcom/transsion/playercommon/R$id;->submit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Ldz2;

    invoke-direct {v0, p0}, Ldz2;-><init>(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/playercommon/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lez2;

    invoke-direct {p2, p0}, Lez2;-><init>(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance p2, Lfz2;

    invoke-direct {p2, p0}, Lfz2;-><init>(Lcom/transsion/playercommon/gprating/DownloadGPRatingDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2
    return-void
.end method

.method public showListDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
