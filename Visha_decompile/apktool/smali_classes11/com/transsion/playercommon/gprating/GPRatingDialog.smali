.class public Lcom/transsion/playercommon/gprating/GPRatingDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public l:F

.field public m:I

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Ljava/lang/String;

.field public q:Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

.field public r:I

.field public s:I

.field public t:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->l:F

    sget v0, Lcom/transsion/playercommon/R$string;->rating_tip_1:I

    sget v1, Lcom/transsion/playercommon/R$string;->rating_tip_2:I

    sget v2, Lcom/transsion/playercommon/R$string;->rating_tip_3:I

    sget v3, Lcom/transsion/playercommon/R$string;->rating_tip_4:I

    sget v4, Lcom/transsion/playercommon/R$string;->rating_tip_5:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->t:[I

    return-void
.end method

.method public static synthetic D(Lcom/transsion/playercommon/gprating/GPRatingDialog;Landroid/widget/ImageView;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->G(Landroid/widget/ImageView;F)V

    return-void
.end method

.method private E()V
    .locals 2

    iget v0, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->l:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->o:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->t:[I

    aget p0, p0, v0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private synthetic G(Landroid/widget/ImageView;F)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->n:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_rating_one:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_rating_two:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_rating_three:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result v1

    if-nez v1, :cond_3

    const/high16 v1, 0x40900000    # 4.5f

    invoke-virtual {p0, p2, v1}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    sget p2, Lcom/transsion/playercommon/R$drawable;->ic_rating_four:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    move p2, v0

    :cond_4
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/transsion/playercommon/R$drawable;->ic_rating_default:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->s:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->n:Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, p2, v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_6

    sget v2, Lcom/transsion/playercommon/R$dimen;->gp_guide_normal_five_w:I

    goto :goto_2

    :cond_6
    sget v2, Lcom/transsion/playercommon/R$dimen;->gp_guide_normal:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_7

    sget v3, Lcom/transsion/playercommon/R$dimen;->gp_guide_normal_five_h:I

    goto :goto_3

    :cond_7
    sget v3, Lcom/transsion/playercommon/R$dimen;->gp_guide_normal:I

    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_8

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_rating_five:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    sget v0, Lcom/transsion/playercommon/R$string;->gp_go_rate:I

    goto :goto_4

    :cond_9
    sget v0, Lcom/transsion/playercommon/R$string;->submit:I

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iput p2, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->l:F

    invoke-direct {p0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->E()V

    return-void
.end method

.method private synthetic H(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->l:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->m:I

    iget v2, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->l:F

    iget-object v3, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->p:Ljava/lang/String;

    invoke-static {p1, v2, v3}, Lpy5;->c(IFLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v2, "mmkv_gp_rating"

    invoke-virtual {p1, v2, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    :cond_0
    iget p1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->l:F

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p0, p1, v2}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->L(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->l:F

    invoke-virtual {p0, p1, v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->F(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p0, Lcom/transsion/playercommon/R$string;->gp_rating_check:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$string;->feedback:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->l:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;->f(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic I(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v0, "mmkv_gp_rating_interval_3"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "mmkv_gp_rating_cancel_count"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    iget p1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->m:I

    iget-object p0, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->p:Ljava/lang/String;

    invoke-static {p1, p0}, Lpy5;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static K(Ljava/lang/String;)Lcom/transsion/playercommon/gprating/GPRatingDialog;
    .locals 1

    new-instance v0, Lcom/transsion/playercommon/gprating/GPRatingDialog;

    invoke-direct {v0}, Lcom/transsion/playercommon/gprating/GPRatingDialog;-><init>()V

    iput-object p0, v0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static L(Landroid/content/Context;)V
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

.method public static synthetic u(Lcom/transsion/playercommon/gprating/GPRatingDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->J(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic v(Lcom/transsion/playercommon/gprating/GPRatingDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->H(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/transsion/playercommon/gprating/GPRatingDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/gprating/GPRatingDialog;->I(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public F(FF)Z
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

.method public final synthetic J(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
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

    sget p0, Lcom/transsion/playercommon/R$layout;->dialog_gp_rating:I

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
    .locals 5

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget p2, Lcom/transsion/playercommon/R$id;->score:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

    iput-object p2, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->q:Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

    sget p2, Lcom/transsion/playercommon/R$id;->tv_desc:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    sget-boolean v0, Lpp3;->c:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/playercommon/R$string;->gp_rating_tip_pre:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$string;->gp_rating_tip:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    sget p2, Lcom/transsion/playercommon/R$id;->bg_top:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    sget v0, Lcom/transsion/playercommon/R$attr;->os_platform_basic_color:I

    sget v1, Lcom/transsion/playercommon/R$attr;->os_platform_disabled_color:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$color;->visha_basic_color:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->r:I

    sget v1, Lcom/transsion/playercommon/R$color;->visha_disabled_color:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->s:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Lcom/transsion/playercommon/R$id;->submit:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->n:Landroid/widget/TextView;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v4, "count"

    invoke-virtual {v1, v4, v2}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->m:I

    sget v1, Lcom/transsion/playercommon/R$id;->rating_tip:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->o:Landroid/widget/TextView;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    iget v3, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->m:I

    invoke-virtual {v1, v4, v3}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    iget v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->m:I

    iget-object v3, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lpy5;->e(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/playercommon/gprating/GPRatingDialog;->q:Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;

    new-instance v3, Lva4;

    invoke-direct {v3, p0, p2}, Lva4;-><init>(Lcom/transsion/playercommon/gprating/GPRatingDialog;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Lcom/transsion/widgets/ratingbar/RtlDfRatingBar;->setOnRatingChangedListener(Lcom/transsion/widgets/ratingbar/OnRatingChangedListener;)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lwa4;

    invoke-direct {v0, p0}, Lwa4;-><init>(Lcom/transsion/playercommon/gprating/GPRatingDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/playercommon/R$id;->cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lxa4;

    invoke-direct {p2, p0}, Lxa4;-><init>(Lcom/transsion/playercommon/gprating/GPRatingDialog;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance p2, Lya4;

    invoke-direct {p2, p0}, Lya4;-><init>(Lcom/transsion/playercommon/gprating/GPRatingDialog;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-void
.end method

.method public showListDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
