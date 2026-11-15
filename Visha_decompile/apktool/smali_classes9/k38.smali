.class public abstract Lk38;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Ljava/lang/ref/WeakReference;

.field public static volatile c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lk38;->l(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lk38;->k(Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lk38;->j(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lk38;->i(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static e()V
    .locals 2

    sget-object v0, Lo18;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/magicvideo/services/VideosService;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/services/VideosService;->n()V

    :cond_0
    return-void
.end method

.method public static f(Landroid/app/Activity;)V
    .locals 5

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/magicvideo/R$layout;->dialog_from_share_tip:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/magicvideo/R$id;->stay_visha:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-boolean v4, Lpp3;->c:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/transsion/magicvideo/R$string;->from_youtube_stay_pre:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/transsion/magicvideo/R$string;->from_youtube_stay:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lh38;

    invoke-direct {v3, v0, p0}, Lh38;-><init>(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v2, Lcom/transsion/magicvideo/R$id;->back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Li38;

    invoke-direct {v3, v0, p0}, Li38;-><init>(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    sget v0, Lcom/transsion/magicvideo/R$id;->cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lj38;

    invoke-direct {v1, p0}, Lj38;-><init>(Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p0, "popup_ytb_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public static g()Lcom/transsion/widgetslib/dialog/d;
    .locals 1

    sget-object v0, Lk38;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/d;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static h()Z
    .locals 1

    sget-object v0, Lo18;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/transsion/magicvideo/services/VideosService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic i(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p1}, Lk38;->p(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p0, "popup_ytb_stay_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lcom/transsion/widgetslib/dialog/d$a;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/d$a;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p0, "popup_ytb_return_cl"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic k(Lcom/transsion/widgetslib/dialog/d;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic l(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static m(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lpp3;->u()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_1

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->a0()Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lk38;->h()Z

    move-result p0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->p2(ZZ)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->W1(Z)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->w1(Lcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string p0, "listenVideo,failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "PlayHelper"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static n(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;ZLcom/transsion/playercommon/fragments/AlertDialogFragment$c;)V
    .locals 11

    sget p2, Lcom/transsion/playercommon/R$layout;->dialog_details:I

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    sget p3, Lcom/transsion/playercommon/R$id;->rv_bucket_fragment_info:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$InfoAdapter;

    sget v2, Lcom/transsion/playercommon/R$layout;->item_bucket_fragment_info:I

    invoke-direct {v1, v2}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils$InfoAdapter;-><init>(I)V

    new-instance v2, Lcom/transsion/utils/CustomLinearLayoutManager;

    invoke-direct {v2, p0}, Lcom/transsion/utils/CustomLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    new-instance v6, Lcom/transsion/playercommon/data/InfoBean;

    sget v7, Lcom/transsion/playercommon/R$string;->name:I

    invoke-direct {v6, v7, v2, v4, v5}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v6, v3}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    instance-of v2, p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    if-eqz v2, :cond_2

    new-instance v6, Lcom/transsion/playercommon/data/InfoBean;

    sget v7, Lcom/transsion/playercommon/R$string;->singer:I

    invoke-direct {v6, v7, v2, v4, v5}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-virtual {v6, v3}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    if-eqz v2, :cond_3

    new-instance v6, Lcom/transsion/playercommon/data/InfoBean;

    sget v7, Lcom/transsion/playercommon/R$string;->type:I

    invoke-direct {v6, v7, v2, v4, v5}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-wide v6, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_4

    new-instance v2, Lcom/transsion/playercommon/data/InfoBean;

    sget v8, Lcom/transsion/playercommon/R$string;->duration:I

    invoke-static {v6, v7}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v6

    iget-wide v9, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-direct {v2, v8, v6, v9, v10}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-wide v6, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_5

    new-instance v2, Lcom/transsion/playercommon/data/InfoBean;

    sget v8, Lcom/transsion/playercommon/R$string;->size:I

    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v8, v6, v4, v5}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-wide v6, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_6

    new-instance v2, Lcom/transsion/playercommon/data/InfoBean;

    sget v8, Lcom/transsion/playercommon/R$string;->date:I

    invoke-static {v6, v7}, Lwna;->i(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v8, v6, v4, v5}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-boolean v6, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->isKtFile:Z

    if-eqz v6, :cond_7

    new-instance p1, Lcom/transsion/playercommon/data/InfoBean;

    sget v6, Lcom/transsion/magicvideo/R$string;->path:I

    sget-object v7, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->a:Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;

    invoke-virtual {v7, v2}, Lcom/transsion/cloudcore/cloudapi/manager/CloudVideoPlayInfoManager;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v6, v2, v4, v5}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    goto :goto_0

    :cond_7
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const/4 v6, -0x1

    if-ne v2, v6, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_8
    const/4 v6, 0x0

    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/transsion/playercommon/data/InfoBean;

    sget v6, Lcom/transsion/magicvideo/R$string;->path:I

    invoke-direct {v2, v6, p1, v4, v5}, Lcom/transsion/playercommon/data/InfoBean;-><init>(ILjava/lang/String;J)V

    move-object p1, v2

    :goto_0
    invoke-virtual {p1, v3}, Lcom/transsion/playercommon/data/InfoBean;->setMultiLines(Z)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    new-instance p3, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/transsion/playercommon/R$string;->info:I

    invoke-virtual {p3, p0}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p2, Lcom/transsion/playercommon/R$string;->ok:I

    new-instance p3, Lg38;

    invoke-direct {p3}, Lg38;-><init>()V

    invoke-virtual {p0, p2, p3}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/widgetslib/dialog/d$a;->c(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lk38;->b:Ljava/lang/ref/WeakReference;

    const-string p0, "video_info"

    invoke-static {v0, p0}, Lp06;->g0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static o(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 7

    const-string v0, "PlayHelper"

    if-nez p0, :cond_0

    const-string p0, "showVideoPLayListDialogFragment,failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lk38;->c:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const-string p0, "showVideoPLayListDialogFragment: throttled, skip"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    sput-wide v1, Lk38;->c:J

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "theme_dark"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "call_from"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class p1, Lcom/transsion/magicvideo/activities/VideoPlayListSheetDialogActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->withType(I)Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterBeanBuilder;->build()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/playercommon/router/RouterUtils;->route(Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;Landroid/content/Context;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/16 v0, 0x428

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.sniffer_load.WebActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "web_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mediastudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x27e5

    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, p1, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    sget p1, Lcom/transsion/magicvideo/R$string;->not_support:I

    invoke-static {p1}, Lcom/transsion/utils/ToastUtils;->s(I)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
