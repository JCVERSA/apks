.class public final Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mimedia/activity/MediaVideoMoreActivity$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u0000 \u00152\u00020\u0001:\u0001\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\rR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\rR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\r\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;",
        "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;",
        "<init>",
        "()V",
        "Lzfb;",
        "initView",
        "onBackgroundLayoutInit",
        "Landroid/widget/TextView;",
        "N",
        "Landroid/widget/TextView;",
        "tv_media_library_title",
        "",
        "O",
        "Ljava/lang/String;",
        "mediaLibraryId",
        "P",
        "mediaLibraryName",
        "Q",
        "virtualPersonName",
        "R",
        "virtualPersonPhoto",
        "S",
        "a",
        "mimedia_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final S:Lcom/transsion/mimedia/activity/MediaVideoMoreActivity$a;


# instance fields
.field public N:Landroid/widget/TextView;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->S:Lcom/transsion/mimedia/activity/MediaVideoMoreActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->h0(Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->i0(Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;Landroid/view/View;)V

    return-void
.end method

.method public static final h0(Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;Landroid/view/View;)V
    .locals 6

    sget-object v0, Lcom/transsion/mimedia/activity/MediaBottomShareActivity;->X:Lcom/transsion/mimedia/activity/MediaBottomShareActivity$a;

    iget-object v2, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->O:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->P:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->Q:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->R:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/mimedia/activity/MediaBottomShareActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    sget-object p1, Laz5;->a:Laz5$a;

    iget-object v0, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->O:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->P:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->Q:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->R:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p0}, Laz5$a;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final i0(Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->P:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, p1, v0, v1, v1}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    sget-object p1, Laz5;->a:Laz5$a;

    iget-object v0, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->O:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->P:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->Q:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->R:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p0}, Laz5$a;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/mimedia/R$layout;->dialog_media_video_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/transsion/mimedia/R$id;->tv_media_library_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->N:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mediaLibraryId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->O:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "mediaLibraryName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->P:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->Q:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_avatar"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->R:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->N:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;->P:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    sget v1, Lcom/transsion/mimedia/R$id;->ll_media_library_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lom6;

    invoke-direct {v2, p0}, Lom6;-><init>(Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/transsion/mimedia/R$id;->ll_media_library_feedback:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lpm6;

    invoke-direct {v1, p0}, Lpm6;-><init>(Lcom/transsion/mimedia/activity/MediaVideoMoreActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackgroundLayoutInit()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onBackgroundLayoutInit()V

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->getRealContainerView()Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBottomSheetPanel;

    move-result-object v0

    sget v1, Lcom/transsion/mimedia/R$color;->os_altitude_primary_color:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackgroundLayoutInit error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "MediaVideoMoreActivity"

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
