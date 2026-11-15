.class public Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;->h0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;->i0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic h0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lo5b;->f(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    const-string p0, "btn"

    const-string p1, "detail"

    const-string v0, "vd_vmore_tomp3_sucpop_cl"

    invoke-static {v0, p0, p1}, Lh16;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic i0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    iget-object p1, p0, Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lo5b;->h(Landroid/app/Activity;Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const-string p0, "btn"

    const-string p1, "play"

    const-string v0, "vd_vmore_tomp3_sucpop_cl"

    invoke-static {v0, p0, p1}, Lh16;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 4

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$layout;->dialog_trans_complete:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->mContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object v1, p0, Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    sget v1, Lcom/transsion/playercommon/R$id;->btn_detail:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Ll5b;

    invoke-direct {v3, p0}, Ll5b;-><init>(Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/playercommon/R$id;->btn_play:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lm5b;

    invoke-direct {v3, p0}, Lm5b;-><init>(Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/playercommon/R$id;->tv_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/playercommon/utils/meida/TransMp3OkSheetActivity;->N:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    return-void
.end method
