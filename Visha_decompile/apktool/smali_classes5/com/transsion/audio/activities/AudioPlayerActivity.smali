.class public Lcom/transsion/audio/activities/AudioPlayerActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/player/MusicPlayManager$d;


# static fields
.field public static t0:Z = false


# instance fields
.field public N:Z

.field public O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

.field public P:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

.field public Q:Lcom/transsion/playercommon/videomodel/PlayListModel;

.field public R:Lcom/transsion/audio/player/MusicPlayManager;

.field public S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

.field public T:Z

.field public U:Lcom/transsion/widgets/CustomSwipeBackLayout;

.field public V:Lcom/transsion/widgetslib/dialog/d;

.field public W:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

.field public X:Ljava/lang/String;

.field public Y:F

.field public Z:F

.field public a0:F

.field public b0:F

.field public c0:F

.field public d0:F

.field public e0:Z

.field public f0:F

.field public g0:F

.field public h0:Z

.field public final i0:Landroid/os/Handler;

.field public j0:Z

.field public k0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public final l0:Ljava/lang/Runnable;

.field public m0:Landroid/widget/ImageView;

.field public n0:F

.field public o0:F

.field public final p0:Landroidx/activity/result/ActivityResultCallback;

.field public q0:Landroidx/activity/result/ActivityResultLauncher;

.field public r0:Landroidx/activity/result/ActivityResultCallback;

.field public final s0:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;-><init>()V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->X:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y:F

    iput v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->a0:F

    iput v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->b0:F

    const/high16 v0, 0x42d80000    # 108.0f

    iput v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->f0:F

    iput v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->g0:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->h0:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->i0:Landroid/os/Handler;

    new-instance v0, Lju;

    invoke-direct {v0, p0}, Lju;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->l0:Ljava/lang/Runnable;

    new-instance v0, Lcom/transsion/audio/activities/AudioPlayerActivity$d;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/AudioPlayerActivity$d;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->p0:Landroidx/activity/result/ActivityResultCallback;

    new-instance v0, Lku;

    invoke-direct {v0, p0}, Lku;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->s0:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic A1(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "popup_mediafile2_n"

    const-wide/16 v0, 0x246c

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->w1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static synthetic C0(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->s1()V

    return-void
.end method

.method public static synthetic C1(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->v1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    return-object p0
.end method

.method public static D1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->toIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setSource(Lcom/transsion/dbdata/beans/media/PlayAudioData;Ljava/lang/String;)V

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    if-eqz p1, :cond_1

    check-cast p0, Landroid/app/Activity;

    sget p1, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public static synthetic E0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->A1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static E1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IA_AUTO_PLAY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->toIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, p1, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setSource(Lcom/transsion/dbdata/beans/media/PlayAudioData;Ljava/lang/String;)V

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    if-eqz p1, :cond_1

    check-cast p0, Landroid/app/Activity;

    sget p1, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public static synthetic F0(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Landroid/util/Pair;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/AudioPlayerActivity;->q1(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Landroid/util/Pair;)V

    return-void
.end method

.method public static F1(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->toIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setSource(Lcom/transsion/dbdata/beans/media/PlayAudioData;Ljava/lang/String;)V

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "fromPage"

    const-string v2, "audio_list_item_click"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    if-eqz p1, :cond_1

    check-cast p0, Landroid/app/Activity;

    sget p1, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public static synthetic G0(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/AudioPlayerActivity;->z1(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static synthetic H0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->r1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic I0(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->t1()V

    return-void
.end method

.method public static synthetic J0(Lcom/transsion/audio/activities/AudioPlayerActivity;Lwoc;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->u1(Lwoc;)V

    return-void
.end method

.method public static synthetic K0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->x1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic L0(Lcom/transsion/audio/activities/AudioPlayerActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->B1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic M0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->o1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic N0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->C1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic O0(Lcom/transsion/audio/activities/AudioPlayerActivity;Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayAudioData;Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/AudioPlayerActivity;->y1(Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayAudioData;Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P0(Lcom/transsion/dbdata/beans/media/PlayAudioData;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->p1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic Q0(Lcom/transsion/audio/activities/AudioPlayerActivity;)Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->P:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    return-object p0
.end method

.method public static bridge synthetic R0(Lcom/transsion/audio/activities/AudioPlayerActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic S0(Lcom/transsion/audio/activities/AudioPlayerActivity;)F
    .locals 0

    iget p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y:F

    return p0
.end method

.method public static bridge synthetic T0(Lcom/transsion/audio/activities/AudioPlayerActivity;)F
    .locals 0

    iget p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z:F

    return p0
.end method

.method public static bridge synthetic U0(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->h1()V

    return-void
.end method

.method public static bridge synthetic V0(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->i1()V

    return-void
.end method

.method public static bridge synthetic W0(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->J1()V

    return-void
.end method

.method public static bridge synthetic X0(Lcom/transsion/audio/activities/AudioPlayerActivity;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->R1(F)V

    return-void
.end method

.method public static synthetic o1(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic p1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 4

    new-instance v0, Landroid/util/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_0

    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lao;->I(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x19

    if-ne v1, v3, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lao;->J(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    invoke-virtual {v1, v2}, Lao;->x(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    new-instance v0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchPlay->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AudioPlayer_Activity"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public static synthetic r1(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAudioData error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioPlayer_Activity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic s1()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Loa1;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;

    invoke-direct {v0}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setIgnoreUserExperience(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setGdprStyle(I)V

    sget v2, Lcom/transsion/audio/R$string;->gdpr_notice_visha_translatable:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setContentText(Ljava/lang/String;)V

    sget v2, Lcom/transsion/audio/R$string;->visha_welcome_to:I

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-boolean v4, Lpp3;->c:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/transsion/audio/R$string;->visha_Player_pre:I

    goto :goto_0

    :cond_1
    sget v4, Lcom/transsion/audio/R$string;->visha_Player:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {p0, v2, v1, v0}, Lcom/transsion/privacy/MarkPointUtil;->y(Landroid/content/Context;Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic t1()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p0, v0, v1}, Lcom/transsion/utils/a;->B(Landroid/app/Activity;FF)V

    return-void
.end method

.method public static synthetic w1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager;->N0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method

.method public static synthetic x1(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioPlayer_Activity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final synthetic B1(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.setting.ACTION_GET_PERMISSION_DETAILS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "packagename"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x84

    :try_start_0
    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_1
    invoke-static {p1, p2, p0}, Lf5;->b(Landroid/content/Intent;ILandroid/app/Activity;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "AudioPlayer_Activity"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final G1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Landroid/content/Intent;)Z
    .locals 6

    if-eqz p1, :cond_4

    iget-object p4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    invoke-static {p4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    invoke-static {p4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    invoke-static {p4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    :cond_0
    iget-object p4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    invoke-static {p4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object v4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audio/activities/AudioPlayerActivity;->k1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object p4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    invoke-static {p4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    iget-object v4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    const/16 v5, 0x1a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audio/activities/AudioPlayerActivity;->k1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object p4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    invoke-static {p4}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    iget-object v4, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->albumName:Ljava/lang/String;

    const/16 v5, 0x19

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/audio/activities/AudioPlayerActivity;->k1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2, p3, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->j1(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final H1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p4}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lfu;

    invoke-direct {v1, p0, p4, p1}, Lfu;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p4, Lgu;

    invoke-direct {p4, p0, p2, p3}, Lgu;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;)V

    invoke-virtual {p1, p4}, Lmc7;->Z(Lzf1;)Lrc2;

    return-void
.end method

.method public I1(Landroidx/activity/result/ActivityResultCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->q0:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->r0:Landroidx/activity/result/ActivityResultCallback;

    const-string p0, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, p0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final J1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->n0:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    iget v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->o0:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final K1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->e0:Z

    if-nez v0, :cond_0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/audio/activities/AudioPlayerActivity$c;

    invoke-direct {v1, p0}, Lcom/transsion/audio/activities/AudioPlayerActivity$c;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    iput-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->k0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->k0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->i0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->l0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final L1()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->h0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/eventbus/LiveEventBus;->b()Lcom/transsion/eventbus/LiveEventBus;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "finish_media_player_activity"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/eventbus/LiveEventBus;->c(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->h0:Z

    return-void
.end method

.method public M1(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->U:Lcom/transsion/widgets/CustomSwipeBackLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/CustomSwipeBackLayout;->enableSwipeBack(Z)V

    :cond_0
    return-void
.end method

.method public N1()V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->f1()V

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$layout;->dialog_permission_remind:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/transsion/playercommon/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->audio_record_permission_content:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/transsion/playercommon/R$id;->tv2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->audio_record_permission_notice:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    sget v2, Lcom/transsion/playercommon/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/transsion/playercommon/R$id;->content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v5, Lcom/transsion/playercommon/R$string;->audio_record_permission_explanation:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v2, Lcu;

    invoke-direct {v2}, Lcu;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/playercommon/R$string;->audio_record_continue:I

    new-instance v2, Ldu;

    invoke-direct {v2, p0}, Ldu;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->u(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->V:Lcom/transsion/widgetslib/dialog/d;

    new-instance v1, Leu;

    invoke-direct {v1}, Leu;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->V:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->V:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    const-string p0, "popup_mediafile2"

    const-wide/16 v0, 0x246c

    invoke-static {v3, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public O1()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->j0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->j0:Z

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->i0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->k0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->k0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->k0:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_2
    const-string v0, "AudioPlayer_Activity"

    const-string v1, "startPostponedEnterTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V

    return-void
.end method

.method public P1()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.magicmovie.video_player_main_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(II)V

    const-string v2, "from_router"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "router_data"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final Q1(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "fromPage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->X:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y:F

    iput v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z:F

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "audio_cover_originX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "audio_cover_originY"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez v2, :cond_1

    int-to-float v2, v2

    iput v2, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y:F

    :cond_1
    if-lez p1, :cond_2

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z:F

    :cond_2
    iget p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->e0:Z

    return-void
.end method

.method public final R1(F)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->c0:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->d0:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSharedElement startX =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->a0:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", targetX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->a0:F

    iget v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->b0:F

    iget v2, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->c0:F

    iget v3, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->f0:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    iget v4, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->d0:F

    iget v5, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->g0:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, p1

    add-float/2addr v5, v4

    div-float/2addr v3, v2

    div-float/2addr v5, v4

    invoke-virtual {p0, v0, v1, v3, v5}, Lcom/transsion/audio/activities/AudioPlayerActivity;->a1(FFFF)V

    const v0, 0x3f333333    # 0.7f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->L1()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Y0()V
    .locals 2

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-static {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioItem(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getPlayList()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Llu;

    invoke-direct {v1, p0}, Llu;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->Y()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->addToPlayList(Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    :cond_0
    return-void
.end method

.method public final Z0()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->e0:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0, v2, v2, v2}, Lxt;->a(Lcom/transsion/audio/activities/AudioPlayerActivity;III)V

    invoke-static {p0, v1, v2, v2}, Lxt;->a(Lcom/transsion/audio/activities/AudioPlayerActivity;III)V

    return-void

    :cond_1
    sget v0, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    invoke-static {p0, v2, v0, v2}, Lxt;->a(Lcom/transsion/audio/activities/AudioPlayerActivity;III)V

    sget v0, Lcom/transsion/audio/R$anim;->activity_audio_slide_out_down:I

    invoke-static {p0, v1, v2, v0}, Lxt;->a(Lcom/transsion/audio/activities/AudioPlayerActivity;III)V

    return-void
.end method

.method public final a1(FFFF)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-array v0, v2, [I

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    invoke-static {p3}, Ljava/lang/Float;->isFinite(F)Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    move p3, p2

    :cond_1
    invoke-static {p4}, Ljava/lang/Float;->isFinite(F)Z

    move-result p1

    if-nez p1, :cond_2

    move p4, p2

    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float p2, p3, p1

    const v0, -0x800001

    if-lez p2, :cond_3

    move p3, p1

    goto :goto_0

    :cond_3
    cmpg-float p2, p3, v0

    if-gez p2, :cond_4

    move p3, v0

    :cond_4
    :goto_0
    cmpl-float p2, p4, p1

    if-lez p2, :cond_5

    move p4, p1

    goto :goto_1

    :cond_5
    cmpg-float p1, p4, v0

    if-gez p1, :cond_6

    move p4, v0

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final b1()V
    .locals 8

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->e0:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    return-void

    :cond_0
    sget v0, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    sget v2, Lcom/transsion/audio/R$anim;->activity_audio_slide_out_down:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    sget v4, Lcom/transsion/common/R$anim;->interpolator_audio_enter:I

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    sget v5, Lcom/transsion/common/R$anim;->interpolator_audio_exit:I

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {p0, v0, v1, v4}, Lcom/transsion/audio/activities/AudioPlayerActivity;->d1(JLandroid/view/animation/Interpolator;)Landroid/transition/Transition;

    move-result-object v6

    invoke-virtual {p0, v2, v3, v5}, Lcom/transsion/audio/activities/AudioPlayerActivity;->d1(JLandroid/view/animation/Interpolator;)Landroid/transition/Transition;

    move-result-object v7

    invoke-virtual {p0, v0, v1, v4}, Lcom/transsion/audio/activities/AudioPlayerActivity;->c1(JLandroid/view/animation/Interpolator;)Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v5}, Lcom/transsion/audio/activities/AudioPlayerActivity;->c1(JLandroid/view/animation/Interpolator;)Landroid/transition/Transition;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setTransitionBackgroundFadeDuration(J)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAllowEnterTransitionOverlap(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAllowReturnTransitionOverlap(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public final c1(JLandroid/view/animation/Interpolator;)Landroid/transition/Transition;
    .locals 1

    new-instance p0, Landroid/transition/TransitionSet;

    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance v0, Landroid/transition/ChangeTransform;

    invoke-direct {v0}, Landroid/transition/ChangeTransform;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance v0, Landroid/transition/ChangeImageTransform;

    invoke-direct {v0}, Landroid/transition/ChangeImageTransform;-><init>()V

    invoke-virtual {p0, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    invoke-virtual {p0, p1, p2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    invoke-virtual {p0, p3}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    return-object p0
.end method

.method public changeThemeWindowBackground()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->changeThemeWindowBackground()V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeThemeWindowBackground curItem data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioPlayer_Activity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_1
    return-void
.end method

.method public final d1(JLandroid/view/animation/Interpolator;)Landroid/transition/Transition;
    .locals 1

    new-instance p0, Landroid/transition/Slide;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/transition/Slide;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    invoke-virtual {p0, p3}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    const p1, 0x102002f

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    const p1, 0x1020030

    invoke-virtual {p0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    return-object p0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->didReceivedNotification(I[Ljava/lang/Object;)V

    const/16 p2, 0x48c

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->c2()V

    :cond_0
    return-void
.end method

.method public final e1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->W:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->W:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {v0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->W:Lcom/transsion/playercommon/utils/storage/FileOperateUtils;

    invoke-virtual {p0}, Lcom/transsion/playercommon/utils/storage/FileOperateUtils;->M()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final f1()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->V:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->V:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    return-void
.end method

.method public g1(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->finish()V

    goto :goto_0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    invoke-static {p0, p1, v1, v1}, Lxt;->a(Lcom/transsion/audio/activities/AudioPlayerActivity;III)V

    :cond_1
    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-boolean p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final h1()V
    .locals 7

    sget-boolean v0, Lcom/transsion/audio/activities/AudioPlayerActivity;->t0:Z

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Ljf;->b()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.transsion.audio.activities.AudioPlayerActivity"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v3, v5

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    invoke-static {p0, v5, v2, v2}, Lxt;->a(Lcom/transsion/audio/activities/AudioPlayerActivity;III)V

    :cond_2
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->finish()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->P1()V

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    const-string v3, "audio_guide_back"

    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->e0:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->L1()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->supportFinishAfterTransition()V

    invoke-static {v3}, Lp06;->h0(Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->L1()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->finish()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_5

    sget v0, Lcom/transsion/audio/R$anim;->activity_audio_slide_out_down:I

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_5
    invoke-static {v3}, Lp06;->h0(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->finish()V

    invoke-static {v3}, Lp06;->h0(Ljava/lang/String;)V

    return-void
.end method

.method public final handleShareIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleShareIntent uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShareIntent item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljy7;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;-><init>(Landroid/net/Uri;Z)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioItem(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/audio/player/MusicPlayManager;->u1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->m1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Z)V

    return-void
.end method

.method public hideBottomOperateBar()V
    .locals 2

    const-string v0, "AudioPlayer_Activity"

    const-string v1, "hideBottomOperateBar finish myself"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->L1()V

    :cond_0
    return-void
.end method

.method public final i1()V
    .locals 6

    sget v0, Lcom/transsion/audio/R$id;->music_alumb_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v3

    int-to-float v3, v2

    iput v3, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->n0:F

    const/4 v3, 0x1

    aget v4, v1, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->o0:F

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->a0:F

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->b0:F

    iget v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y:F

    iget v2, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->f0:F

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y:F

    iget v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z:F

    iget v2, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->g0:F

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->c0:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->d0:F

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->m0:Landroid/widget/ImageView;

    :cond_2
    return-void
.end method

.method public isExtendAngelMonitorTime()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNeedAngelSensor()Z
    .locals 0

    invoke-static {}, Lydc;->g()Z

    move-result p0

    return p0
.end method

.method public isRestrictPermissionGuideShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j1(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 1

    const-string v0, "video_play_fragment_bean"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    const-string v0, "action"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-virtual {p3, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public final k1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Landroid/util/Pair;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-direct {v0, p4, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object p4

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object p5

    invoke-virtual {p4, p5}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object p4

    new-instance p5, Lmu;

    invoke-direct {p5, p1}, Lmu;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    invoke-virtual {p4, p5}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p1

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p1, p4}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p1

    new-instance p4, Lnu;

    invoke-direct {p4, p0, p2, p3}, Lnu;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;)V

    new-instance p0, Lyt;

    invoke-direct {p0}, Lyt;-><init>()V

    invoke-virtual {p1, p4, p0}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    return-void
.end method

.method public l1()Z
    .locals 1

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadSkin(Z)I
    .locals 3

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$drawable;->bg_window_skin_transparent:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return p1
.end method

.method public m1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Z)V
    .locals 9

    new-instance v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-direct {v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;-><init>()V

    invoke-virtual {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->j2(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->X:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->C:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->S:Z

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tag_display_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tag_artist_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "tag_album_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "IA_AUTO_PLAY"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/transsion/audio/activities/AudioPlayerActivity;->t0:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->Y0()V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "start audio play->"

    filled-new-array {v4, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AudioPlayer_Activity"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "play_bucket_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->H1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->G1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const-string v1, "video_play_fragment_bean"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-static {p0, v0, v6}, La64;->i(Lcom/transsion/playercommon/activities/BaseActivity;Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method public final n1(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->mediaId:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->T:Z

    const/16 v1, 0x84

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->z2(II)V

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/16 p2, 0x7d1

    if-ne p1, p2, :cond_3

    if-nez p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Lcom/transsion/audio/activities/AudioPlayerActivity$4;

    invoke-direct {p2, p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity$4;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Landroid/net/Uri;)V

    invoke-static {p2}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    const/16 p2, 0x4df

    const/4 v1, 0x0

    const/16 v2, 0x4e0

    if-ne p1, p2, :cond_5

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    if-eqz p0, :cond_8

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->e2(Z)V

    goto :goto_2

    :cond_5
    if-ne p1, v2, :cond_8

    if-eqz p3, :cond_8

    const-string p2, "search_type"

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_7

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    if-eqz p0, :cond_8

    if-ne p1, v2, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->e2(Z)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->h2()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->h1()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {p0}, Lcom/transsion/sysbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/transsion/sysbar/ImmersionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sysbar/ImmersionBar;->transparentBar()Lcom/transsion/sysbar/ImmersionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/sysbar/ImmersionBar;->init()V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestPermission;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->p0:Landroidx/activity/result/ActivityResultCallback;

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->q0:Landroidx/activity/result/ActivityResultLauncher;

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpp3;->x(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x1020002

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->R:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/audio/player/MusicPlayManager;->C(Landroid/content/Context;)V

    const-class v0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->P:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    const-class v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/activities/BaseActivity;->getViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/playercommon/videomodel/PlayListModel;

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->Q:Lcom/transsion/playercommon/videomodel/PlayListModel;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->N:Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->Q1(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lpp3;->x(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V

    sget p1, Lcom/transsion/audio/R$layout;->activity_audio_player:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->K1()V

    const/16 p1, 0xa

    invoke-static {p0, p1}, Lcom/transsion/utils/a;->a(Landroid/app/Activity;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Lhu;

    invoke-direct {v1, p0}, Lhu;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->b1()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z0()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    new-instance v1, Lcom/transsion/audio/activities/AudioPlayerActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity$a;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Z)V

    invoke-virtual {p1, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    sget p1, Lcom/transsion/audio/R$id;->swipeBackLayout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgets/CustomSwipeBackLayout;

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->U:Lcom/transsion/widgets/CustomSwipeBackLayout;

    invoke-virtual {p1, v2}, Lcom/gw/swipeback/SwipeBackLayout;->setSwipeFromEdge(Z)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->U:Lcom/transsion/widgets/CustomSwipeBackLayout;

    new-instance v0, Lcom/transsion/audio/activities/AudioPlayerActivity$b;

    invoke-direct {v0, p0}, Lcom/transsion/audio/activities/AudioPlayerActivity$b;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    invoke-virtual {p1, v0}, Lcom/gw/swipeback/SwipeBackLayout;->setSwipeBackListener(Lcom/gw/swipeback/SwipeBackLayout$c;)V

    const-string p1, "privacy_policy_cl"

    const-string v0, "version"

    const-wide v1, 0xd91af27358L

    invoke-static {v1, v2, p1, v0}, Lcom/transsion/privacy/MarkPointUtil;->p(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->i0:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->s0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->R:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p1, p0}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-static {p0}, Lt08;->c(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->successWritePermissionOnce()V

    :cond_3
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 v0, 0x48c

    invoke-virtual {p1, p0, v0}, Lh27;->b(Lh27$b;I)V

    iget-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mWindowInfoViewModel:Lcom/transsion/WindowInfoViewModel;

    iget-object p1, p1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Liu;

    invoke-direct {v0, p0}, Liu;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->i0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->l0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->i0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->s0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->R:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->D1(Landroid/content/Context;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x48c

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->e1()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->L1()V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onDestroy()V

    return-void
.end method

.method public onEjected(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEjected unMountPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->finish()V

    const-string p0, "onEjected finish"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->p1()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-virtual {p0, v1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->o2(Z)V

    return v1

    :cond_0
    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->o2(Z)V

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/activities/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioPlayer_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->Q1(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->b1()V

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->Z0()V

    iget-boolean v0, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mHaveFilePermission:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onNewIntent no permission"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_5

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->handleShareIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->restore(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->displayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->artistName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p1}, Lmc7;->K(Ljava/lang/Object;)Lmc7;

    move-result-object v0

    invoke-virtual {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->bindToLifecycle()Lyk5;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmc7;->g(Lod7;)Lmc7;

    move-result-object v0

    new-instance v1, Lzt;

    invoke-direct {v1, p0, p1}, Lzt;-><init>(Lcom/transsion/audio/activities/AudioPlayerActivity;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    invoke-virtual {v0, v1}, Lmc7;->L(Lt74;)Lmc7;

    move-result-object p0

    invoke-static {}, Lk29;->c()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->d0(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    invoke-static {}, Lvb;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmc7;->M(Lio/reactivex/Scheduler;)Lmc7;

    move-result-object p0

    new-instance v0, Lau;

    invoke-direct {v0, p1}, Lau;-><init>(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    new-instance p1, Lbu;

    invoke-direct {p1}, Lbu;-><init>()V

    invoke-virtual {p0, v0, p1}, Lmc7;->a0(Lzf1;Lzf1;)Lrc2;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->N0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->O1()V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AudioPlayer_Activity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x83

    if-ne p1, p2, :cond_5

    iget-boolean p1, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mAutoRequestGuideDialog:Z

    if-eqz p1, :cond_5

    array-length p1, p3

    if-lez p1, :cond_5

    const/4 p1, 0x0

    aget p2, p3, p1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->successWritePermission()V

    iget-object p2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p2, p0, Lcom/transsion/playercommon/activities/BaseActivity;->permissionDialog:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lt08;->d(Landroid/content/Context;)Z

    move-result p2

    iget-boolean p3, p0, Lcom/transsion/playercommon/activities/BasePermissionActivity;->mRequestVideoAndAudioPermission:Z

    if-eqz p3, :cond_2

    if-nez p2, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->showRequestPermissionDialog()V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->showRequestPermissionDialog()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->showRequestPermissionDialog()V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->P:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p1}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->b()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->Y1(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onResume()V

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->fromInternal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->T:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->e0:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-ge v0, v2, :cond_0

    sget v0, Lcom/transsion/audio/R$anim;->activity_audio_slide_in_up:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    iput-boolean v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->T:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->j(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AudioPlayer_Activity"

    const-string v1, "onResume: hide because has been grant"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->v(Landroid/app/FragmentManager;)V

    :cond_1
    invoke-static {}, Llz5;->c()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->O1()V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onStop()V

    return-void
.end method

.method public final synthetic q1(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Landroid/util/Pair;)V
    .locals 1

    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->j1(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :cond_0
    return-void
.end method

.method public shouldApplyLegacySystemBarPadding()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public successWritePermissionOnce()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->handleShareIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->N:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v1, Lcom/transsion/audio/R$id;->fragment_content:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->j2(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->X:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->C:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAutoRecover,not need initData again,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->O:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioPlayer_Activity"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->restore(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->S:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->m1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final synthetic u1(Lwoc;)V
    .locals 2

    iget p1, p1, Lwoc;->a:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->U:Lcom/transsion/widgets/CustomSwipeBackLayout;

    invoke-virtual {p1, v0}, Lcom/gw/swipeback/SwipeBackLayout;->setSwipeFromEdge(Z)V

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->e1()V

    :cond_2
    return-void
.end method

.method public final synthetic v1(Lcom/transsion/dbdata/beans/media/PlayAudioData;Lcom/transsion/dbdata/beans/media/PlayAudioData;)Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p2

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Lao;->H(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->n1(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    iput-object p1, p2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    :cond_1
    invoke-virtual {p0, p2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->n1(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->P:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p0, p2}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->g(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :cond_2
    return-object p2
.end method

.method public final synthetic y1(Landroid/content/Intent;Lcom/transsion/dbdata/beans/media/PlayAudioData;Landroid/content/Intent;)Lcom/transsion/dbdata/beans/media/PlayAudioData;
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Ljy7;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object p3

    invoke-virtual {p3, p1}, Lao;->G(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p3

    invoke-static {p3}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    if-eqz p3, :cond_0

    iget v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-nez v1, :cond_0

    iget-wide v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->isFromNet:Z

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    move-object v0, p3

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_4

    iget-object p1, p3, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    invoke-static {}, Lao;->U()Lao;

    move-result-object p1

    iget-object p3, p2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    invoke-virtual {p1, p3}, Lao;->H(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->n1(Lcom/transsion/dbdata/beans/media/PlayAudioData;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    iput-object p1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->playUri:Landroid/net/Uri;

    :cond_4
    iget-boolean p1, p2, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iput-boolean p1, v0, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity;->P:Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/videomodel/AudioAlbumViewModel;->g(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-object v0
.end method

.method public final synthetic z1(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/audio/activities/AudioPlayerActivity;->j1(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Landroid/os/Bundle;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method
