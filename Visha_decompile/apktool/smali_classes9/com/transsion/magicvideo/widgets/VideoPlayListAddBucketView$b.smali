.class public Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->p(Lcom/transsion/dbdata/database/VideoPlayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/database/VideoPlayList;

.field public final synthetic c:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

.field public final synthetic d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Lcom/transsion/dbdata/database/VideoPlayList;Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->b:Lcom/transsion/dbdata/database/VideoPlayList;

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->c:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->l(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x41d

    invoke-virtual {v0, v2, v1}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    iget-boolean v0, v0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->b:Lcom/transsion/dbdata/database/VideoPlayList;

    iget v0, v0, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget p0, Lcom/transsion/magicvideo/R$string;->youtube_error_add_tip:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->k(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/playercommon/R$string;->add_to_playlist_toast:I

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->b:Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-static {v2, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->m(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;Lcom/transsion/dbdata/database/VideoPlayList;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/utils/ToastUtils;->v(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/magicvideo/R$string;->video_existed:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->l(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    sget p0, Lcom/transsion/magicvideo/R$string;->add_play_list_skip_audio:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    invoke-static {p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->l(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    sget p0, Lcom/transsion/magicvideo/R$string;->add_play_list_skip_picture:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->d:Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;->l(Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView;)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_5

    sget p0, Lcom/transsion/magicvideo/R$string;->add_play_list_skip_audio_and_picture:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->c:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertToPlaylist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayListAddBucketView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->c:Lcom/transsion/magicvideo/activities/VideoSheetDialogActivity;

    invoke-virtual {p0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSBaseBottomSheetDialog;->animateDismiss()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayListAddBucketView$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
