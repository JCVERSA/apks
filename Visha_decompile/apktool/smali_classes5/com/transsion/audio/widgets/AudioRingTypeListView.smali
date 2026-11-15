.class public Lcom/transsion/audio/widgets/AudioRingTypeListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;
    }
.end annotation


# instance fields
.field private audioItem:Lcom/transsion/dbdata/beans/media/AudioItem;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/audio/widgets/AudioRingTypeListView;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/audio/widgets/AudioRingTypeListView;->audioItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, p1}, Lcom/transsion/audio/widgets/AudioRingTypeListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/widgets/AudioRingTypeListView;Ljava/util/List;Landroid/content/Context;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/transsion/audio/widgets/AudioRingTypeListView;->lambda$init$0(Ljava/util/List;Landroid/content/Context;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$layout;->audio_add_ringtone:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$id;->rv_video_play_filelist:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/audio/adapter/RingtoneAdapter;

    invoke-direct {v1, p1}, Lcom/transsion/audio/adapter/RingtoneAdapter;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v2, p1}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lpp3;->y(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/audio/R$string;->phone_ringtone:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/transsion/audio/R$drawable;->ic_ringtone:I

    invoke-direct {v3, v4, v5}, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v3, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/audio/R$string;->alram_ringtone:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/transsion/audio/R$drawable;->ic_alarm_tone:I

    invoke-direct {v3, v4, v5}, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/audio/R$string;->notification_ringtone:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/transsion/audio/R$drawable;->ic_notification_sound:I

    invoke-direct {v3, v4, v5}, Lcom/transsion/audio/widgets/AudioRingTypeListView$AudioRing;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance v0, Lvz;

    invoke-direct {v0, p0, v2, p1}, Lvz;-><init>(Lcom/transsion/audio/widgets/AudioRingTypeListView;Ljava/util/List;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    return-void
.end method

.method private synthetic lambda$init$0(Ljava/util/List;Landroid/content/Context;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    if-ltz p5, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lt p5, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p5, p5, 0x1

    :try_start_0
    invoke-virtual {p0, p5}, Lcom/transsion/audio/widgets/AudioRingTypeListView;->markPointRingSet(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/audio/widgets/AudioRingTypeListView;->audioItem:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p3, p1, p0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    sget p0, Lcom/transsion/audio/R$string;->set_finish:I

    invoke-static {p2, p0}, Lcom/transsion/utils/ToastUtils;->u(Landroid/content/Context;I)V

    instance-of p0, p2, Lcom/transsion/audio/activities/AudioRingSheetDialogActivity;

    if-eqz p0, :cond_1

    check-cast p2, Lcom/transsion/audio/activities/AudioRingSheetDialogActivity;

    invoke-virtual {p2}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public markPointRingSet(I)V
    .locals 3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v1, "ringset_mode"

    invoke-virtual {p0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p1, "vd_audio_play"

    const-wide/16 v1, 0x246c

    invoke-static {v0, p0, p1, v1, v2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method
