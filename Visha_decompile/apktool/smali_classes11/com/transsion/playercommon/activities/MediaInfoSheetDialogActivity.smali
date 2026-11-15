.class public Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;
.super Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;
.source "SourceFile"


# instance fields
.field public N:Z

.field public O:Lcom/transsion/dbdata/beans/media/MediaItem;

.field public P:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public Q:Landroid/widget/LinearLayout;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/LinearLayout;

.field public X:Landroid/widget/TextView;

.field public Y:Landroid/widget/TextView;

.field public Z:Landroid/widget/LinearLayout;

.field public a0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->N:Z

    return-void
.end method

.method public static synthetic f0(Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->m0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->n0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->l0(Landroid/view/View;)V

    return-void
.end method

.method public static o0(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/MediaItem;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "media_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "media_info_type"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class p1, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final i0(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "click_flag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    :goto_0
    const-string v1, "result_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 p1, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public initView()V
    .locals 5

    sget v0, Lcom/transsion/playercommon/R$layout;->media_info_sheet_dialog:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "media_info_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->N:Z

    const-string v2, "media_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iput-object v1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    if-nez v1, :cond_1

    const-string v0, "MediaInfoSheetDialogActivity"

    const-string v1, "initInfo failed,mediaItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseCloseBottomSheetDialog;->addPage(Landroid/view/View;)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->showTitle(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->setCloseIconVisibility(Z)Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    const v2, 0x3f6147ae    # 0.88f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    sget v1, Lcom/transsion/playercommon/R$id;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->N:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object v1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->j0(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->k0()V

    return-void
.end method

.method public final j0(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/transsion/playercommon/R$id;->ll_media_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/playercommon/R$id;->tv_media_info_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->S:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->S:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    sget v0, Lcom/transsion/playercommon/R$id;->tv_media_info_type:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->R:Landroid/widget/TextView;

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->N:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/transsion/playercommon/R$string;->audio_info_title:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/playercommon/R$string;->video_info_title:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "MediaInfoSheetDialogActivity"

    const-string v2, "initInfo: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    sget v0, Lcom/transsion/playercommon/R$id;->tv_media_format:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->T:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->T:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget v0, Lcom/transsion/playercommon/R$id;->tv_media_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->U:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-static {v1, v2}, Lwna;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/playercommon/R$id;->tv_media_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->V:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->O:Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-wide v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->N:Z

    if-eqz v0, :cond_6

    sget v0, Lcom/transsion/playercommon/R$id;->ll_media_album:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->W:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/playercommon/R$id;->tv_media_album:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->X:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->X:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget v0, Lcom/transsion/playercommon/R$id;->tv_media_album_year:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->Y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->Y:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/AudioItem;->mAlbumYear:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/playercommon/R$id;->ll_media_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->Z:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/playercommon/R$id;->tv_media_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->a0:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->a0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->P:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->Z:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    const/high16 v0, 0x438c0000    # 280.0f

    invoke-static {p0, v0}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_3
    return-void
.end method

.method public final k0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->Q:Landroid/widget/LinearLayout;

    new-instance v1, Lxf6;

    invoke-direct {v1, p0}, Lxf6;-><init>(Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->W:Landroid/widget/LinearLayout;

    new-instance v1, Lyf6;

    invoke-direct {v1, p0}, Lyf6;-><init>(Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->Z:Landroid/widget/LinearLayout;

    new-instance v1, Lzf6;

    invoke-direct {v1, p0}, Lzf6;-><init>(Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final synthetic l0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->i0(I)V

    return-void
.end method

.method public final synthetic m0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->i0(I)V

    return-void
.end method

.method public final synthetic n0(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/MediaInfoSheetDialogActivity;->i0(I)V

    return-void
.end method
