.class public Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:Landroid/view/View;

.field public O:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public P:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public Q:Landroidx/recyclerview/widget/RecyclerView;

.field public R:Landroidx/recyclerview/widget/RecyclerView;

.field public S:Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;

.field public T:Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;

.field public U:Lcom/transsion/playercommon/data/MediaOperateMenuBean;

.field public V:Ljava/lang/Runnable;

.field public W:Landroid/os/Handler;

.field public X:Z

.field public Y:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field public Z:Ljava/lang/String;

.field public a0:Ljava/lang/String;

.field public b0:Ljava/lang/String;

.field public c0:Z

.field public d0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

.field public e0:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    new-instance v0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$1;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->V:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->W:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->X:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Z:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->a0:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->b0:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->e0:Landroid/graphics/Rect;

    return-void
.end method

.method private synthetic C0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    return-void
.end method

.method private synthetic E0(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/transsion/utils/BaseConstant;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/playercommon/R$string;->audio_edit_error_tip:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method

.method private static synthetic F0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "edit audio file failed, exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "audio_edit"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/transsion/playercommon/R$string;->audio_edit_error_tip:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method private static synthetic G0(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x32

    if-lt p0, p1, :cond_0

    sget p0, Lcom/transsion/playercommon/R$string;->over_text_length:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    return-void
.end method

.method public static J0(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.tools.activities.SettingActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static N0(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "media_info_type"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class p1, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic f0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g0(Landroid/text/Editable;Landroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->G0(Landroid/text/Editable;Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->I0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic i0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->H0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private initData()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v1, Lpp3;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Llc3;->c(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lmw2;->c:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_operate_dolby_open:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$drawable;->ic_operate_dolby_close:I

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$string;->audio_dolby_sound:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-direct {v4, v1, v3}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->X:Z

    if-eqz v1, :cond_2

    invoke-static {}, Llc3;->d()Z

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljrb;->c()Z

    move-result v1

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$string;->eq:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    sget v5, Lcom/transsion/playercommon/R$string;->os_equalizer:I

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, v2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v1}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->setNeedThemeColor(Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    new-instance v1, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    sget v3, Lcom/transsion/playercommon/R$string;->os_alarm_clock:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/playercommon/R$string;->play_timer:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->U:Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->x0()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O0(J)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Q0()V

    invoke-virtual {p0, v3}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P0(Z)V

    :cond_3
    new-instance v1, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    sget v4, Lcom/transsion/playercommon/R$string;->os_Double_speed:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/playercommon/R$string;->speed:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->L0()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iput-boolean v3, v1, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->showDescription:Z

    invoke-virtual {p0, v5}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->M0(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->description:Ljava/lang/String;

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    sget v4, Lcom/transsion/playercommon/R$string;->os_share:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/playercommon/R$string;->share:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v6, v2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/playercommon/R$string;->os_Audio_channel:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/playercommon/R$string;->audio_channel_title:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    invoke-direct {v4, v6, v7, v8}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/playercommon/R$string;->os_move:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/playercommon/R$string;->visha_file_trans:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "file_trans_menu_click"

    invoke-static {p0, v8, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v3

    const/16 v3, 0xd

    invoke-direct {v4, v6, v7, v2, v3}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$string;->os_add:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/playercommon/R$string;->add_to_playlist:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v6}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->X:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->w0()Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$string;->os_ring:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/playercommon/R$string;->phone_ringtone:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    invoke-direct {v2, v3, v4, v6}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    new-instance v2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$string;->os_edit:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/playercommon/R$string;->rename:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean v6, v6, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v6, :cond_6

    const/16 v6, 0x3eb

    goto :goto_3

    :cond_6
    const/16 v6, 0xc

    :goto_3
    invoke-direct {v2, v3, v4, v6}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    new-instance v2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$string;->os_info:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/playercommon/R$string;->info:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    invoke-direct {v2, v3, v4, v6}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$string;->os_feedback:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/playercommon/R$string;->feedback:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xa

    invoke-direct {v2, v3, v4, v6}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$string;->os_settings:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/playercommon/R$string;->setting:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xb

    invoke-direct {v2, v3, v4, v6}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/playercommon/R$string;->os_delete:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/playercommon/R$string;->delete:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    invoke-direct {v2, v3, v4, v6}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;

    invoke-direct {v2, v0}, Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->S:Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;

    new-instance v0, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;

    invoke-direct {v0, v1}, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->T:Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->S:Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->T:Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->A0()V

    return-void
.end method

.method public static synthetic j0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->F0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->C0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->E0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic m0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->d0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    return-object p0
.end method

.method public static bridge synthetic n0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic o0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->v0(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic p0(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Q0()V

    return-void
.end method

.method private q0(Z)V
    .locals 4

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getSmartEditEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->d0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-direct {p1, p0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->d0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->d0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->setAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->d0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->d0:Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;

    new-instance v0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$b;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$b;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/widgets/AudioSmartEditPageView;->setOnSmartEditPageChangeListener(Lcom/transsion/playercommon/widgets/AudioSmartEditPageView$j;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/playercommon/R$layout;->audio_editor_dialog:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitleLayoutVisible(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setBackIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->audio_edit:I

    invoke-virtual {v2, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(I)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    new-instance v1, Lck6;

    invoke-direct {v1, p0}, Lck6;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V

    invoke-virtual {v2, v1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleBackIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->z0(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method private t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lek6;

    invoke-direct {v1, p0, p2, p3, p1}, Lek6;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p2, Lfk6;

    invoke-direct {p2, p0}, Lfk6;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V

    new-instance p0, Lgk6;

    invoke-direct {p0}, Lgk6;-><init>()V

    invoke-virtual {p1, p2, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method private y0()F
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->X:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lw6c;->b(Landroid/content/Context;)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lw6c;->i(Landroid/content/Context;)F

    move-result p0

    :goto_0
    return p0
.end method

.method private z0(Landroid/view/View;Z)V
    .locals 10

    sget v0, Lcom/transsion/playercommon/R$id;->et_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    new-instance v1, Ldk6;

    invoke-direct {v1}, Ldk6;-><init>()V

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/transsion/playercommon/R$id;->et_artist:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v7, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v5, v5, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/transsion/playercommon/R$id;->et_album:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v8, v2, v1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setInputNum(ILcom/transsion/widgetslib/widget/editext/OSMaterialEditText$c;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v8}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    sget v1, Lcom/transsion/playercommon/R$id;->tv_artist:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    sget v1, Lcom/transsion/playercommon/R$id;->tv_album:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v1, Lcom/transsion/playercommon/R$id;->tv_save:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p0}, Lb39;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_1

    const/high16 v1, 0x43580000    # 216.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43380000    # 184.0f

    :goto_0
    invoke-static {p0, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setWidth(I)V

    :cond_2
    new-instance v9, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$c;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$c;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v8}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v1

    new-instance v2, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$5;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Landroid/widget/TextView;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$d;

    invoke-direct {v2, p0, v1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$d;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;I)V

    invoke-static {p0, v2}, Lag5;->k(Landroid/app/Activity;Lag5$e;)V

    new-instance v9, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, v7

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$e;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;Z)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Z:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->a0:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->getEditText()Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->b0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Y:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->e0(Z)V

    new-instance v1, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$a;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->f0(Lcom/transsion/playercommon/utils/storage/FileOperateUtils$k;)V

    :cond_0
    return-void
.end method

.method public final B0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->S:Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;

    if-eqz v0, :cond_0

    new-instance v1, Lak6;

    invoke-direct {v1, p0}, Lak6;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->T:Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;

    if-eqz v0, :cond_1

    new-instance v1, Lbk6;

    invoke-direct {v1, p0}, Lbk6;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    :cond_1
    return-void
.end method

.method public final synthetic D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;)Ljava/lang/Boolean;
    .locals 2

    new-instance p4, Ljava/io/File;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/transsion/audiotagger/audio/AudioFileIO;->read(Ljava/io/File;)Lcom/transsion/audiotagger/audio/AudioFile;

    move-result-object p4

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ARTIST:Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {p4, v0, p1, v1}, Lul;->d(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->ALBUM:Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-static {p4, v0, p2, v1}, Lul;->d(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    sget-object v0, Lcom/transsion/audiotagger/tag/FieldKey;->TITLE:Lcom/transsion/audiotagger/tag/FieldKey;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {p4, v0, p3, p0}, Lul;->d(Lcom/transsion/audiotagger/audio/AudioFile;Lcom/transsion/audiotagger/tag/FieldKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p4}, Lcom/transsion/audiotagger/audio/AudioFileIO;->write(Lcom/transsion/audiotagger/audio/AudioFile;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic H0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string p1, "vd_audio_play"

    const-string p2, "btn"

    if-eqz p3, :cond_3

    const-string v0, "vd_audio_more_pop_cl"

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    const/4 p1, 0x3

    if-eq p3, p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    goto :goto_0

    :cond_0
    const-string p1, "audio_play_more_share_cl"

    invoke-static {v0, p2, p1}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->K0()V

    goto :goto_0

    :cond_1
    const-string p3, "audio_speed"

    invoke-static {p1, p2, p3}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    goto :goto_0

    :cond_2
    const-string p1, "audio_play_more_timer_cl"

    invoke-static {v0, p2, p1}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    goto :goto_0

    :cond_3
    const-string p3, "audio_play_equalizer_cl"

    invoke-static {p1, p2, p3}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    :goto_0
    return-void
.end method

.method public final synthetic I0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->T:Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    if-eqz p1, :cond_9

    iget p1, p1, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->flagId:I

    const-string p2, "btn"

    const/4 p3, 0x2

    if-eq p1, p3, :cond_8

    const/4 p3, 0x3

    if-eq p1, p3, :cond_6

    const/4 p3, 0x4

    if-eq p1, p3, :cond_5

    const/4 p3, 0x5

    if-eq p1, p3, :cond_4

    const/4 p3, 0x6

    if-eq p1, p3, :cond_3

    const/16 p3, 0x3eb

    if-eq p1, p3, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/16 p3, 0x495

    invoke-virtual {p1, p3, p2}, Lh27;->e(I[Ljava/lang/Object;)V

    const-string p1, "file_trans_menu_click"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object p1, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    iget-boolean p2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->X:Z

    if-eqz p2, :cond_0

    const-string p2, "vd_audio"

    goto :goto_0

    :cond_0
    const-string p2, "vd_video"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->m(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    goto :goto_3

    :pswitch_1
    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    goto :goto_3

    :pswitch_2
    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    goto :goto_3

    :pswitch_3
    iget-boolean p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->X:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->r0()V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->R0()V

    :goto_2
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    goto :goto_3

    :pswitch_4
    const-string p1, "vd_audio_play"

    const-string p3, "output_switch"

    invoke-static {p1, p2, p3}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lgt;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p3}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, p3}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->u0()V

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    invoke-static {p1}, Lkz5;->c(Z)V

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Y:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz p1, :cond_7

    const-string p2, "audioplay"

    iput-object p2, p1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->p:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0, p3}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    goto :goto_3

    :cond_8
    const-string p1, "audio_play_addlist"

    invoke-static {p1}, Lp06;->h0(Ljava/lang/String;)V

    const-string p1, "vd_audio_more_pop_cl"

    const-string v0, "audio_play_more_addlist_cl"

    invoke-static {p1, p2, v0}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->s0(I)V

    :cond_9
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final K0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/MediaItem;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lrr3;->a(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V

    const-string v0, "vd_share_menu_cl"

    const-wide v1, 0xd91af2732cL

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, v2}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public final L0()Z
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->y0()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final M0(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->y0()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/playercommon/R$string;->speed_icon:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public O0(J)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    cmp-long p0, p1, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public P0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->W:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->W:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->V:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->x0()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->U:Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-static {v0, v1}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->description:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->U:Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O0(J)Z

    move-result v0

    iput-boolean v0, v2, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->showDescription:Z

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->S:Lcom/transsion/playercommon/adapter/MediaOperateHorizontalAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTimerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->U:Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    iget-object p0, p0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaOperateMenuDialogActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final R0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "youtube"

    :goto_0
    sget v2, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v2, :cond_1

    sget p0, Lcom/transsion/playercommon/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->feedback:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v1, v0}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;->e(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_1
    const-string p0, "vd_playshow"

    invoke-static {p0}, Lez5;->b(Ljava/lang/String;)V

    return-void
.end method

.method public initView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v0, :cond_0

    const-string v0, "mediaItem is null"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MediaOperateMenuDialogActivity"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "media_info_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->X:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_2
    sget v0, Lcom/transsion/playercommon/R$layout;->dialog_media_more_sheet:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->N:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->rv_operate_list_horizontal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->Q:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->N:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->rv_operate_list_vertical:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->R:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->N:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->showTitle(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->N:Landroid/view/View;

    sget v1, Lcom/transsion/playercommon/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->initData()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->B0()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->c0:Z

    return-void
.end method

.method public isFixedHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x7d1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$8;

    invoke-direct {p2, p0, p1}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity$8;-><init>(Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;Landroid/net/Uri;)V

    invoke-static {p2}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onBackPressed()V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->T:Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/adapter/MediaOperateVerticalAdapter;->release()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->c0:Z

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged config:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaOperateMenuDialogActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->N:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->c0:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->W:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r0()V
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sget v1, Lcom/transsion/playercommon/core/MainApp;->w:I

    if-nez v1, :cond_1

    sget p0, Lcom/transsion/playercommon/R$string;->no_network:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->feedback:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Lcom/transsion/playercommon/vishaweb/pages/VishaFeedbackPage;->e(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    :goto_1
    const-string p0, "au_playshow"

    invoke-static {p0}, Lez5;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final s0(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "action_flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "out_data"

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public final u0()V
    .locals 4

    sget-boolean v0, Lpp3;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lnx8;->m(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0}, Lul;->c(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->q0(Z)V

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p0, :cond_2

    const-string p0, "mv"

    goto :goto_2

    :cond_2
    const-string p0, "audio"

    :goto_2
    const-string v0, "vd_vmore_edit_pop"

    const-string v1, "from"

    const-string v2, "playshow"

    const-string v3, "file_type"

    invoke-static {v0, v1, v2, v3, p0}, Lhb0;->markTrackTwo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    sget p0, Lcom/transsion/playercommon/R$string;->audio_format_not_support_edit:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_3
    const-string p0, "vd_vmore_edit_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    const-string p0, "btn"

    const-string v0, "audio_play_more_edit_cl"

    const-string v1, "vd_audio_more_pop_cl"

    invoke-static {v1, p0, v0}, Lp06;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final v0(Lcom/transsion/playercommon/data/FileOperateItem;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "item_click_data"

    invoke-virtual {p1}, Lcom/transsion/playercommon/data/FileOperateItem;->getFlag()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_flag"

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "out_data"

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "rename_data"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public final w0()Lcom/transsion/playercommon/data/MediaOperateMenuBean;
    .locals 4

    sget-boolean v0, Lpp3;->E:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->os_edit:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->getSmartEditEnable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/playercommon/R$string;->visha_smart_edit:I

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/transsion/playercommon/R$string;->audio_edit:I

    goto :goto_0

    :goto_1
    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/transsion/playercommon/data/MediaOperateMenuBean;

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$string;->os_edit:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/playercommon/R$string;->rename:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x3eb

    goto :goto_2

    :cond_2
    const/16 p0, 0xc

    :goto_2
    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/playercommon/data/MediaOperateMenuBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public x0()J
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/MediaOperateMenuDialogActivity;->X:Z

    if-eqz v0, :cond_0

    const-string v0, "music_timer"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lw6c;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lw6c;->l(Landroid/content/Context;)J

    move-result-wide v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
