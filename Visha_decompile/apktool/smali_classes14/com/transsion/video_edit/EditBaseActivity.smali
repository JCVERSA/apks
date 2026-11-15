.class public Lcom/transsion/video_edit/EditBaseActivity;
.super Lcom/transsion/playercommon/activities/BasePermissionActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Landroidx/media3/transformer/Transformer$Listener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/transsion/video_edit/ThumbnailBar$c;
.implements Lcom/transsion/video_edit/ThumbnailSelectorBar$a;


# instance fields
.field public N:Landroid/view/SurfaceView;

.field public O:Landroid/widget/FrameLayout;

.field public P:Landroidx/media3/exoplayer/ExoPlayer;

.field public Q:Lcom/transsion/video_edit/ThumbnailBar;

.field public R:Lcom/transsion/video_edit/ThumbnailSelectorBar;

.field public S:Landroid/widget/ImageView;

.field public T:Landroid/widget/ImageView;

.field public U:Landroid/widget/ImageView;

.field public V:Landroid/widget/TextView;

.field public W:Landroid/widget/TextView;

.field public X:Landroid/view/View;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a0:Ljava/lang/String;

.field public b0:Z

.field public c0:J

.field public d0:I

.field public e0:I

.field public f0:I

.field public g0:Lcom/transsion/video_edit/b$a;

.field public h0:Lcom/transsion/widgetslib/dialog/c;

.field public i0:Lcom/transsion/widgetslib/dialog/d;

.field public j0:J

.field public k0:J

.field public l0:Landroidx/media3/transformer/Transformer;

.field public final m0:Landroidx/media3/transformer/ProgressHolder;

.field public n0:Ljava/lang/Runnable;

.field public o0:Lux0;

.field public p0:Landroid/os/Handler;

.field public q0:Z

.field public r0:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->b0:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->d0:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->e0:I

    iput v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->f0:I

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->l0:Landroidx/media3/transformer/Transformer;

    new-instance v0, Landroidx/media3/transformer/ProgressHolder;

    invoke-direct {v0}, Landroidx/media3/transformer/ProgressHolder;-><init>()V

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->m0:Landroidx/media3/transformer/ProgressHolder;

    iput-boolean v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->q0:Z

    new-instance v0, Lcom/transsion/video_edit/EditBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/video_edit/EditBaseActivity$1;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->r0:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->d1()V

    return-void
.end method

.method public static synthetic C0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/video_edit/EditBaseActivity;->b1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic D0(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->c1()V

    return-void
.end method

.method public static synthetic E0(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->e1()V

    return-void
.end method

.method public static bridge synthetic F0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->S:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static bridge synthetic G0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->r0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic H0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method public static bridge synthetic I0(Lcom/transsion/video_edit/EditBaseActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->p0:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic J0(Lcom/transsion/video_edit/EditBaseActivity;)Lcom/transsion/video_edit/ThumbnailSelectorBar;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->R:Lcom/transsion/video_edit/ThumbnailSelectorBar;

    return-object p0
.end method

.method public static bridge synthetic K0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/transformer/Transformer;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->l0:Landroidx/media3/transformer/Transformer;

    return-object p0
.end method

.method public static bridge synthetic L0(Lcom/transsion/video_edit/EditBaseActivity;)Landroidx/media3/transformer/ProgressHolder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->m0:Landroidx/media3/transformer/ProgressHolder;

    return-object p0
.end method

.method public static bridge synthetic M0(Lcom/transsion/video_edit/EditBaseActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->n0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic N0(Lcom/transsion/video_edit/EditBaseActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->c0:J

    return-wide v0
.end method

.method public static bridge synthetic O0(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->V0()V

    return-void
.end method

.method public static bridge synthetic P0(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->W0()V

    return-void
.end method

.method public static bridge synthetic Q0(Lcom/transsion/video_edit/EditBaseActivity;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/video_edit/EditBaseActivity;->Y0(J)V

    return-void
.end method

.method public static bridge synthetic R0(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->g1()V

    return-void
.end method

.method public static bridge synthetic S0(Lcom/transsion/video_edit/EditBaseActivity;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->k1()V

    return-void
.end method

.method public static synthetic b1(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteOutputFileAsync:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EditMainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initData()V
    .locals 5

    const-string v0, "initData "

    const-string v1, "EditMainActivity"

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->a0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "1"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->c0:J

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->d0:I

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->e0:I

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->f0:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    throw p0
.end method


# virtual methods
.method public final T0()I
    .locals 3

    invoke-static {p0}, Le39;->d(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x42180000    # 38.0f

    invoke-static {p0, v1}, Le39;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {p0, v1}, Le39;->a(Landroid/content/Context;F)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public U0(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final V0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/transsion/video_edit/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lj63;

    invoke-direct {v0, p0}, Lj63;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final W0()V
    .locals 8

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->k1()V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->k0:J

    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    sget p0, Lcom/transsion/video_edit/R$string;->edit_export_invalid:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void

    :cond_1
    invoke-static {v0, v1}, Lp06;->C(J)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->a0:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-static {v0, v1}, Lav3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Y:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/transsion/video_edit/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->l0:Landroidx/media3/transformer/Transformer;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/media3/transformer/Transformer$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/transformer/Transformer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroidx/media3/transformer/Transformer$Builder;->addListener(Landroidx/media3/transformer/Transformer$Listener;)Landroidx/media3/transformer/Transformer$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/transformer/Transformer$Builder;->build()Landroidx/media3/transformer/Transformer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->l0:Landroidx/media3/transformer/Transformer;

    :cond_3
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    :cond_4
    new-instance v0, Lcom/transsion/widgetslib/dialog/c;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/c;->h(I)Lcom/transsion/widgetslib/dialog/c;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    sget v3, Lcom/transsion/video_edit/R$string;->cancel:I

    new-instance v4, Lcom/transsion/video_edit/EditBaseActivity$c;

    invoke-direct {v4, p0}, Lcom/transsion/video_edit/EditBaseActivity$c;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-virtual {v0, v3, v4}, Lcom/transsion/widgetslib/dialog/c;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/c;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    sget v3, Lcom/transsion/video_edit/R$string;->edit_generating:I

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/dialog/c;->i(I)Lcom/transsion/widgetslib/dialog/c;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    sget v3, Lcom/transsion/video_edit/R$string;->cut_exporting:I

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/dialog/c;->k(I)Lcom/transsion/widgetslib/dialog/c;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/c;->l()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iget-object v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->Z:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    new-instance v3, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iget-wide v4, p0, Lcom/transsion/video_edit/EditBaseActivity;->j0:J

    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/transsion/video_edit/EditBaseActivity;->j0:J

    iget-wide v6, p0, Lcom/transsion/video_edit/EditBaseActivity;->k0:J

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$ClippingConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/media3/common/MediaItem$Builder;->setClippingConfiguration(Landroidx/media3/common/MediaItem$ClippingConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    new-instance v3, Landroidx/media3/transformer/EditedMediaItem$Builder;

    invoke-direct {v3, v0}, Landroidx/media3/transformer/EditedMediaItem$Builder;-><init>(Landroidx/media3/common/MediaItem;)V

    invoke-virtual {v3}, Landroidx/media3/transformer/EditedMediaItem$Builder;->build()Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v0

    :try_start_0
    new-instance v3, Landroidx/media3/transformer/Composition$Builder;

    new-instance v4, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;

    filled-new-array {v0}, [Landroidx/media3/transformer/EditedMediaItem;

    move-result-object v0

    invoke-direct {v4, v0}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;-><init>([Landroidx/media3/transformer/EditedMediaItem;)V

    invoke-virtual {v4}, Landroidx/media3/transformer/EditedMediaItemSequence$Builder;->build()Landroidx/media3/transformer/EditedMediaItemSequence;

    move-result-object v0

    new-array v2, v2, [Landroidx/media3/transformer/EditedMediaItemSequence;

    invoke-direct {v3, v0, v2}, Landroidx/media3/transformer/Composition$Builder;-><init>(Landroidx/media3/transformer/EditedMediaItemSequence;[Landroidx/media3/transformer/EditedMediaItemSequence;)V

    invoke-virtual {v3}, Landroidx/media3/transformer/Composition$Builder;->build()Landroidx/media3/transformer/Composition;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->l0:Landroidx/media3/transformer/Transformer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->Y:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroidx/media3/transformer/Transformer;->start(Landroidx/media3/transformer/Composition;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->n0:Ljava/lang/Runnable;

    if-nez v0, :cond_5

    new-instance v0, Lcom/transsion/video_edit/EditBaseActivity$6;

    invoke-direct {v0, p0}, Lcom/transsion/video_edit/EditBaseActivity$6;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->n0:Ljava/lang/Runnable;

    :cond_5
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->p0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->n0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->p0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->n0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transformer.start failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/transsion/video_edit/R$string;->edit_export_error:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->V0()V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    return-void
.end method

.method public final X0()V
    .locals 3

    new-instance v0, Lcom/transsion/video_edit/EditBaseActivity$d;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/transsion/video_edit/EditBaseActivity$d;-><init>(Lcom/transsion/video_edit/EditBaseActivity;I)V

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->o0:Lux0;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/transsion/video_edit/EditBaseActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/video_edit/EditBaseActivity$a;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->O:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/transsion/video_edit/EditBaseActivity$b;

    invoke-direct {v2, p0, v0}, Lcom/transsion/video_edit/EditBaseActivity$b;-><init>(Lcom/transsion/video_edit/EditBaseActivity;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final Y0(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/transsion/video_edit/b;->c(J)J

    move-result-wide v4

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->g0:Lcom/transsion/video_edit/b$a;

    iget-object p2, p0, Lcom/transsion/video_edit/EditBaseActivity;->R:Lcom/transsion/video_edit/ThumbnailSelectorBar;

    invoke-virtual {p2}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->getLeftSpace()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/video_edit/b$a;->b(I)J

    move-result-wide p1

    neg-long v2, p1

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->R:Lcom/transsion/video_edit/ThumbnailSelectorBar;

    iget-object v6, p0, Lcom/transsion/video_edit/EditBaseActivity;->g0:Lcom/transsion/video_edit/b$a;

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->setValueTime(JJLcom/transsion/video_edit/b$a;)V

    return-void
.end method

.method public final Z0(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {p0, v0}, Le39;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->g0:Lcom/transsion/video_edit/b$a;

    invoke-virtual {v1, v0}, Lcom/transsion/video_edit/b$a;->b(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->Q:Lcom/transsion/video_edit/ThumbnailBar;

    iget-object v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->Z:Ljava/lang/String;

    const-wide/16 v4, 0x3e8

    mul-long p0, p1, v4

    mul-long v6, v0, v4

    move-wide v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/video_edit/ThumbnailBar;->initThumbnailInfo(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final a1()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVideoEdit.filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Z:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, p0}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->N:Landroid/view/SurfaceView;

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    new-instance v1, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v1

    iget-wide v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->c0:J

    invoke-static {v2, v3}, Lcom/transsion/video_edit/b;->c(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$ClippingConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setClippingConfiguration(Landroidx/media3/common/MediaItem$ClippingConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0}, Landroidx/media3/common/Player;->prepare()V

    return-void

    :cond_1
    :goto_0
    sget v0, Lcom/transsion/video_edit/R$string;->invalid_filename:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->finish()V

    return-void
.end method

.method public final synthetic c1()V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->c0:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/video_edit/EditBaseActivity;->Z0(J)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->R:Lcom/transsion/video_edit/ThumbnailSelectorBar;

    invoke-virtual {p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->getLeftSpace()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->R:Lcom/transsion/video_edit/ThumbnailSelectorBar;

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->g0:Lcom/transsion/video_edit/b$a;

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/transsion/video_edit/b$a;->b(I)J

    move-result-wide p0

    const/4 p2, 0x1

    invoke-virtual {v0, p0, p1, p2, p2}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->updateTimeByStartChanged(JZZ)V

    return-void
.end method

.method public final synthetic d1()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->T0()I

    move-result v0

    iget-wide v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->c0:J

    invoke-static {v1, v2}, Lcom/transsion/video_edit/b;->d(J)J

    move-result-wide v1

    new-instance v3, Lcom/transsion/video_edit/b$a;

    invoke-direct {v3, v0, v1, v2}, Lcom/transsion/video_edit/b$a;-><init>(IJ)V

    iput-object v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->g0:Lcom/transsion/video_edit/b$a;

    iget-wide v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->c0:J

    invoke-static {v0, v1}, Lcom/transsion/video_edit/b;->c(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/video_edit/EditBaseActivity;->l1(J)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Q:Lcom/transsion/video_edit/ThumbnailBar;

    new-instance v1, Ll63;

    invoke-direct {v1, p0}, Ll63;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Le39;->c(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x436e0000    # 238.0f

    invoke-static {p0, v1}, Le39;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Le39;->b(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Le39;->e(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, Le39;->d(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->d0:I

    const/16 v3, 0x10e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->e0:I

    iget v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->f0:I

    iput v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->e0:I

    iput v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->f0:I

    :cond_2
    iget v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->e0:I

    iget v3, p0, Lcom/transsion/video_edit/EditBaseActivity;->f0:I

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/transsion/video_edit/EditBaseActivity;->i1(IIII)V

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->a1()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->j0:J

    iget-wide v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->c0:J

    invoke-static {v0, v1}, Lcom/transsion/video_edit/b;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->k0:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/video_edit/EditBaseActivity;->j1(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public varargs e(ZZZ[J)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->b0:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->k1()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->Z:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    const/4 v2, 0x0

    aget-wide v3, p4, v2

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v1

    const/4 v3, 0x1

    aget-wide v4, p4, v3

    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$ClippingConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setClippingConfiguration(Landroidx/media3/common/MediaItem$ClippingConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->prepare()V

    if-eqz p3, :cond_2

    aget-wide v0, p4, v3

    aget-wide v4, p4, v2

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/video_edit/EditBaseActivity;->l1(J)V

    :cond_2
    aget-wide v0, p4, v2

    iput-wide v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->j0:J

    aget-wide p3, p4, v3

    sub-long/2addr p3, v0

    iput-wide p3, p0, Lcom/transsion/video_edit/EditBaseActivity;->k0:J

    if-nez p2, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0, p3, p4}, Landroidx/media3/common/Player;->seekTo(J)V

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    const-wide/16 p1, 0x0

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "seekTo "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EditMainActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void
.end method

.method public final synthetic e1()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/video_edit/EditBaseActivity;->initData()V

    new-instance v0, Lk63;

    invoke-direct {v0, p0}, Lk63;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(J)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->k1()V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroidx/media3/common/Player;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPointerDrag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EditMainActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final f1()V
    .locals 1

    new-instance v0, Li63;

    invoke-direct {v0, p0}, Li63;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g1()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->S:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_0
    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previewVideo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EditMainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    return-void
.end method

.method public final h1()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relaseEidtPlayer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EditMainActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public final i1(IIII)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v3, p2

    div-float/2addr v1, v3

    int-to-float p3, p3

    mul-float/2addr p3, v2

    int-to-float p4, p4

    div-float/2addr p3, p4

    invoke-static {v1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p4

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p4, v2, :cond_0

    cmpl-float p4, p3, v3

    if-eqz p4, :cond_0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    div-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-static {v1, p3}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/4 p4, 0x1

    if-ne p1, p4, :cond_1

    cmpl-float p1, p3, v3

    if-eqz p1, :cond_1

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p2

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j1(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->S:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->U:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final k1()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->S:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->P:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->p0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->r0:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l1(J)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->W:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/playercommon/activities/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/video_edit/R$string;->edit_has_selected:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/transsion/video_edit/b;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->c0:J

    invoke-static {p0, p1}, Lcom/transsion/video_edit/b;->d(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/transsion/video_edit/b;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public loadSkin(Z)I
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->loadSkin(Z)I

    move-result p0

    return p0
.end method

.method public onCompleted(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/ExportResult;)V
    .locals 0

    new-instance p1, Lcom/transsion/video_edit/EditBaseActivity$7;

    invoke-direct {p1, p0}, Lcom/transsion/video_edit/EditBaseActivity$7;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Le39;->c(Landroid/content/Context;)I

    move-result p1

    const/high16 v0, 0x436e0000    # 238.0f

    invoke-static {p0, v0}, Le39;->a(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p0}, Le39;->b(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p0}, Le39;->e(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p0}, Le39;->d(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->e0:I

    iget v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->f0:I

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/transsion/video_edit/EditBaseActivity;->i1(IIII)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/activities/BaseActivity;->setWindowBackground(Z)V

    sget v0, Lcom/transsion/video_edit/R$layout;->activity_edit_main:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget v0, Lcom/transsion/video_edit/R$id;->edit_fragment_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->X:Landroid/view/View;

    sget v0, Lcom/transsion/video_edit/R$id;->edit_surface:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->N:Landroid/view/SurfaceView;

    sget v0, Lcom/transsion/video_edit/R$id;->touch_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->O:Landroid/widget/FrameLayout;

    sget v0, Lcom/transsion/video_edit/R$id;->thumbnail_bar_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/video_edit/ThumbnailBar;

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Q:Lcom/transsion/video_edit/ThumbnailBar;

    sget v0, Lcom/transsion/video_edit/R$id;->selector_bar_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/video_edit/ThumbnailSelectorBar;

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->R:Lcom/transsion/video_edit/ThumbnailSelectorBar;

    sget v0, Lcom/transsion/video_edit/R$id;->iv_video_play_back:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->T:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/video_edit/R$id;->tv_video_play_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->V:Landroid/widget/TextView;

    sget v0, Lcom/transsion/video_edit/R$id;->time_textview:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->W:Landroid/widget/TextView;

    sget v0, Lcom/transsion/video_edit/R$id;->iv_video_play_setting:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->U:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->R:Lcom/transsion/video_edit/ThumbnailSelectorBar;

    invoke-virtual {v0, p0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->setOnSeekListener(Lcom/transsion/video_edit/ThumbnailSelectorBar$a;)V

    sget v0, Lcom/transsion/video_edit/R$id;->iv_play:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->S:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->V:Landroid/widget/TextView;

    sget v1, Lcom/transsion/video_edit/R$string;->edit_cut:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Q:Lcom/transsion/video_edit/ThumbnailBar;

    invoke-virtual {v0, p0}, Lcom/transsion/video_edit/ThumbnailBar;->setOnThumbnailBarScrollListener(Lcom/transsion/video_edit/ThumbnailBar$c;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FILE_PATH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->a0:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->a0:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Z:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Z:Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->a0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->Z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->p0:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->X0()V

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->S:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->o0:Lux0;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->T:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->o0:Lux0;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->U:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->o0:Lux0;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/EditBaseActivity;->j1(Z)V

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->f1()V

    const-string p0, "vd_clip_page_show"

    const-wide v0, 0xd91af27375L

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->h0:Lcom/transsion/widgetslib/dialog/c;

    :cond_0
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->i0:Lcom/transsion/widgetslib/dialog/d;

    :cond_1
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->n0:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/transsion/video_edit/EditBaseActivity;->p0:Landroid/os/Handler;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->l0:Landroidx/media3/transformer/Transformer;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/transformer/Transformer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v1, p0, Lcom/transsion/video_edit/EditBaseActivity;->l0:Landroidx/media3/transformer/Transformer;

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->h1()V

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onDestroy()V

    return-void
.end method

.method public onError(Landroidx/media3/transformer/Composition;Landroidx/media3/transformer/ExportResult;Landroidx/media3/transformer/ExportException;)V
    .locals 0

    new-instance p1, Lcom/transsion/video_edit/EditBaseActivity$8;

    invoke-direct {p1, p0}, Lcom/transsion/video_edit/EditBaseActivity$8;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->p0:Landroid/os/Handler;

    iget-object v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->r0:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->p0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->r0:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->p0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->r0:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onPause()V

    invoke-virtual {p0}, Lcom/transsion/video_edit/EditBaseActivity;->k1()V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/video_edit/EditBaseActivity;->b0:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/video_edit/EditBaseActivity;->b0:Z

    new-instance p1, Lcom/transsion/video_edit/EditBaseActivity$2;

    invoke-direct {p1, p0}, Lcom/transsion/video_edit/EditBaseActivity$2;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/transsion/video_edit/EditBaseActivity$3;

    invoke-direct {p1, p0}, Lcom/transsion/video_edit/EditBaseActivity$3;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EditMainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/transsion/video_edit/EditBaseActivity$4;

    invoke-direct {p1, p0}, Lcom/transsion/video_edit/EditBaseActivity$4;-><init>(Lcom/transsion/video_edit/EditBaseActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/playercommon/activities/BasePermissionActivity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/EditBaseActivity;->Q:Lcom/transsion/video_edit/ThumbnailBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailBar;->setCanScoll(Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
