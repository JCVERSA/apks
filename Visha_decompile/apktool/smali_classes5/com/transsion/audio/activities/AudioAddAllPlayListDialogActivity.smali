.class public Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:Ljava/util/List;

.field public O:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;->i0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;->j0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final h0(Ljava/lang/String;ZZLjava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v0, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;->N:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p4}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;-><init>(Landroid/content/Context;Ljava/util/List;Z[Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setTitle(Ljava/lang/String;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setBackIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    new-instance p1, Lql;

    invoke-direct {p1, p0}, Lql;-><init>(Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;)V

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleBackIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    :cond_0
    if-eqz p3, :cond_1

    new-instance p1, Lrl;

    invoke-direct {p1, p0}, Lrl;-><init>(Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;)V

    invoke-virtual {p4, p1}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setOnTitleCloseIconClickListener(Landroid/view/View$OnClickListener;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    :cond_1
    invoke-virtual {p4, p3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    return-void
.end method

.method public final synthetic i0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->popPage()Z

    return-void
.end method

.method public initView()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;->N:Ljava/util/List;

    invoke-static {}, Lvg9;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v1, "is_last"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;->O:Z

    sget v0, Lcom/transsion/playercommon/R$string;->add_all_song_to_playlist:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;->O:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getLastPlayList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/transsion/audio/activities/AudioAddAllPlayListDialogActivity;->h0(Ljava/lang/String;ZZLjava/util/ArrayList;)V

    return-void
.end method

.method public final synthetic j0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method
