.class public Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;
.super Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;
.source "SourceFile"

# interfaces
.implements Ljxb$a;


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Lzs7;

.field public C:Ljava/lang/Runnable;

.field public p:Lcom/transsion/widgets/VideoPlayerSurfaceView;

.field public q:Lttb;

.field public r:Landroid/os/Handler;

.field public s:I

.field public t:Z

.field public u:Landroid/widget/SeekBar;

.field public v:Landroid/widget/ImageView;

.field public w:I

.field public x:Z

.field public final y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->r:Landroid/os/Handler;

    new-instance v0, La29;

    invoke-direct {v0, p0}, La29;-><init>(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$1;-><init>(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->C:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic V(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->e0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->f0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic X(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->d0(I)V

    return-void
.end method

.method public static bridge synthetic Y(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->A:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic Z(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->z:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic a0(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->u:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static bridge synthetic b0(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static c0(Lcom/transsion/playercommon/whatsapp/WhatsappFile;)Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;
    .locals 1

    new-instance v0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;

    invoke-direct {v0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;-><init>()V

    iput-object p0, v0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    return-object v0
.end method

.method private synthetic d0(I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lttb;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lttb;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic e0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->g0()V

    return-void
.end method

.method public static synthetic f0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final g0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lttb;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lttb;->b(Z)V

    invoke-static {v0}, Le16;->o(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Le16;->o(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {p0}, Lttb;->i()V

    :goto_0
    return-void
.end method

.method public h0()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->p:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    if-nez v0, :cond_0

    const-string p0, "ScanVideoFragment"

    const-string v0, "playVideo error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    if-nez v0, :cond_1

    new-instance v0, Lttb;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->p:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    invoke-direct {v0, v1, v2}, Lttb;-><init>(Landroid/content/Context;Lcom/transsion/widgets/VideoPlayerSurfaceView;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {v0, p0}, Lttb;->d(Ljxb$a;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {v1}, Lcom/transsion/playercommon/whatsapp/WhatsappFile;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lttb;->g(Landroid/net/Uri;)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {p0}, Lttb;->i()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lttb;->h(Z)V

    iput-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    :cond_0
    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->r:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->r:Landroid/os/Handler;

    :cond_1
    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->B:Lzs7;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lzs7;->b()I

    :cond_2
    return-void
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/sniffer_load/R$layout;->fragment_scan_video:I

    return p0
.end method

.method public onMediaPlayerStateChange(I)V
    .locals 3

    iget v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->w:I

    if-eq v0, p1, :cond_4

    iput p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->w:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->B:Lzs7;

    invoke-virtual {v1}, Lzs7;->f()I

    :cond_1
    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget v2, Lcom/transsion/sniffer_load/R$drawable;->ic_pause_lrc:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/transsion/sniffer_load/R$drawable;->ic_play_lrc:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->r:Landroid/os/Handler;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->C:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->r:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->C:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->u:Landroid/widget/SeekBar;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lttb;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {v0}, Lttb;->m()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->t:Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    invoke-virtual {v0}, Lttb;->c()I

    move-result v0

    iput v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->s:I

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lttb;->q(Z)V

    :cond_0
    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->s:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lttb;->q(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "scan_whatsapp_file_video"

    iget-object v1, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lzs7;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->y:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-direct {v0, v1, v2}, Lzs7;-><init>(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    iput-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->B:Lzs7;

    if-eqz p2, :cond_0

    const-string v0, "scan_whatsapp_file_video"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/BaseScanFragment;->l:Lcom/transsion/playercommon/whatsapp/WhatsappFile;

    :cond_0
    sget p2, Lcom/transsion/sniffer_load/R$id;->player_surface_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgets/VideoPlayerSurfaceView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->p:Lcom/transsion/widgets/VideoPlayerSurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    sget p2, Lcom/transsion/sniffer_load/R$id;->play_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->u:Landroid/widget/SeekBar;

    sget p2, Lcom/transsion/sniffer_load/R$id;->play_pause:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->v:Landroid/widget/ImageView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->play_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->z:Landroid/widget/TextView;

    sget p2, Lcom/transsion/sniffer_load/R$id;->duration:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->A:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->v:Landroid/widget/ImageView;

    new-instance p2, Lb29;

    invoke-direct {p2, p0}, Lb29;-><init>(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->u:Landroid/widget/SeekBar;

    new-instance p2, Lc29;

    invoke-direct {p2}, Lc29;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->u:Landroid/widget/SeekBar;

    new-instance p2, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$a;

    invoke-direct {p2, p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$a;-><init>(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance p1, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;

    invoke-direct {p1, p0}, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment$3;-><init>(Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;)V

    invoke-static {p1}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setUserVisibleHint(Z)V

    iget-object v0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->x:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->x:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lttb;->h(Z)V

    iget-object p1, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->q:Lttb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lttb;->r(I)V

    iget-object p0, p0, Lcom/transsion/sniffer_load/whatsappscan/ScanVideoFragment;->u:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method
