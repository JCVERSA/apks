.class public final Lcom/google/android/exoplayer2/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6c;
.implements Lcom/google/android/exoplayer2/audio/b;
.implements Lkha;
.implements Lfo6;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$b;
.implements Lcom/google/android/exoplayer2/b$b;
.implements Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$a;
.implements Lcom/google/android/exoplayer2/y$b;
.implements Lcom/google/android/exoplayer2/ExoPlayer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/i;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/i$c;-><init>(Lcom/google/android/exoplayer2/i;)V

    return-void
.end method

.method public static synthetic j(Ljava/util/List;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i$c;->r(Ljava/util/List;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic k(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i$c;->u(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic l(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i$c;->w(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic m(Lqm1;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i$c;->s(Lqm1;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic n(ZLcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i$c;->v(ZLcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic o(IZLcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/i$c;->x(IZLcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic p(Lcom/google/android/exoplayer2/i$c;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/i$c;->t(Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic q(Lf7c;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i$c;->y(Lf7c;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method

.method public static synthetic r(Ljava/util/List;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic s(Lqm1;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onCues(Lqm1;)V

    return-void
.end method

.method public static synthetic u(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public static synthetic v(ZLcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic w(Lcom/google/android/exoplayer2/h;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/h;)V

    return-void
.end method

.method public static synthetic x(IZLcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/t$d;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public static synthetic y(Lf7c;Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onVideoSizeChanged(Lf7c;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->D(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/k;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lkb;->a(Lcom/google/android/exoplayer2/k;Llu1;)V

    return-void
.end method

.method public b(Lju1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->Y(Lcom/google/android/exoplayer2/i;Lju1;)Lju1;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1}, Lkb;->b(Lju1;)V

    return-void
.end method

.method public c(Lju1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object v0

    invoke-interface {v0, p1}, Lkb;->c(Lju1;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/i;->D(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/k;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/i;->e0(Lcom/google/android/exoplayer2/i;Lju1;)Lju1;

    return-void
.end method

.method public d(Lju1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->e0(Lcom/google/android/exoplayer2/i;Lju1;)Lju1;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1}, Lkb;->d(Lju1;)V

    return-void
.end method

.method public e(Lju1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object v0

    invoke-interface {v0, p1}, Lkb;->e(Lju1;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/i;->a0(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/k;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/i;->Y(Lcom/google/android/exoplayer2/i;Lju1;)Lju1;

    return-void
.end method

.method public executePlayerCommand(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i;->getPlayWhenReady()Z

    move-result v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->R(ZI)I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/i;->S(Lcom/google/android/exoplayer2/i;ZII)V

    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/k;Llu1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->a0(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/k;)Lcom/google/android/exoplayer2/k;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lkb;->f(Lcom/google/android/exoplayer2/k;Llu1;)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->X(Lcom/google/android/exoplayer2/i;)V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/i;->S(Lcom/google/android/exoplayer2/i;ZII)V

    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1}, Lkb;->onAudioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lkb;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1}, Lkb;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lkb;->onAudioPositionAdvancing(J)V

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1}, Lkb;->onAudioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lkb;->onAudioUnderrun(IJJ)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object p0

    new-instance v0, Ldi3;

    invoke-direct {v0, p1}, Ldi3;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Lom5;->l(ILom5$a;)V

    return-void
.end method

.method public onCues(Lqm1;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->G(Lcom/google/android/exoplayer2/i;Lqm1;)Lqm1;

    .line 3
    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object p0

    new-instance v0, Lei3;

    invoke-direct {v0, p1}, Lei3;-><init>(Lqm1;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Lom5;->l(ILom5$a;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lkb;->onDroppedFrames(IJ)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->H(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o;->b()Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/o$b;->I(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/o$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o$b;->F()Lcom/google/android/exoplayer2/o;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->I(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/o;)Lcom/google/android/exoplayer2/o;

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->J(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v1}, Lcom/google/android/exoplayer2/i;->K(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/i;->L(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/o;)Lcom/google/android/exoplayer2/o;

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object v0

    new-instance v1, Lfi3;

    invoke-direct {v1, p0}, Lfi3;-><init>(Lcom/google/android/exoplayer2/i$c;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lom5;->i(ILom5$a;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object v0

    new-instance v1, Lgi3;

    invoke-direct {v1, p1}, Lgi3;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Lom5;->i(ILom5$a;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object p0

    invoke-virtual {p0}, Lom5;->f()V

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lkb;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p2}, Lcom/google/android/exoplayer2/i;->d0(Lcom/google/android/exoplayer2/i;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object p0

    new-instance p1, Lji3;

    invoke-direct {p1}, Lji3;-><init>()V

    const/16 p2, 0x1a

    invoke-virtual {p0, p2, p1}, Lom5;->l(ILom5$a;)V

    :cond_0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->E(Lcom/google/android/exoplayer2/i;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->F(Lcom/google/android/exoplayer2/i;Z)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object p0

    new-instance v0, Lki3;

    invoke-direct {v0, p1}, Lki3;-><init>(Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Lom5;->l(ILom5$a;)V

    return-void
.end method

.method public onStreamTypeChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p1}, Lcom/google/android/exoplayer2/i;->T(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/y;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/i;->U(Lcom/google/android/exoplayer2/y;)Lcom/google/android/exoplayer2/h;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->V(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->W(Lcom/google/android/exoplayer2/i;Lcom/google/android/exoplayer2/h;)Lcom/google/android/exoplayer2/h;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object p0

    new-instance v0, Lii3;

    invoke-direct {v0, p1}, Lii3;-><init>(Lcom/google/android/exoplayer2/h;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v0}, Lom5;->l(ILom5$a;)V

    :cond_0
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object p0

    new-instance v0, Lhi3;

    invoke-direct {v0, p1, p2}, Lhi3;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Lom5;->l(ILom5$a;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->P(Lcom/google/android/exoplayer2/i;Landroid/graphics/SurfaceTexture;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/i;->O(Lcom/google/android/exoplayer2/i;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/i;->N(Lcom/google/android/exoplayer2/i;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/google/android/exoplayer2/i;->O(Lcom/google/android/exoplayer2/i;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/i;->O(Lcom/google/android/exoplayer2/i;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1}, Lkb;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lkb;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1}, Lkb;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Z(Lcom/google/android/exoplayer2/i;)Lkb;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lkb;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public onVideoSizeChanged(Lf7c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/i;->b0(Lcom/google/android/exoplayer2/i;Lf7c;)Lf7c;

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->c0(Lcom/google/android/exoplayer2/i;)Lom5;

    move-result-object p0

    new-instance v0, Lli3;

    invoke-direct {v0, p1}, Lli3;-><init>(Lf7c;)V

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Lom5;->l(ILom5$a;)V

    return-void
.end method

.method public onVideoSurfaceCreated(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->N(Lcom/google/android/exoplayer2/i;Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->N(Lcom/google/android/exoplayer2/i;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->Q(Lcom/google/android/exoplayer2/i;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0, p3, p4}, Lcom/google/android/exoplayer2/i;->O(Lcom/google/android/exoplayer2/i;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/i;->M(Lcom/google/android/exoplayer2/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i;->N(Lcom/google/android/exoplayer2/i;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p1}, Lcom/google/android/exoplayer2/i;->M(Lcom/google/android/exoplayer2/i;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/i;->N(Lcom/google/android/exoplayer2/i;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/google/android/exoplayer2/i;->O(Lcom/google/android/exoplayer2/i;II)V

    return-void
.end method

.method public final synthetic t(Lcom/google/android/exoplayer2/t$d;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/i$c;->b:Lcom/google/android/exoplayer2/i;

    invoke-static {p0}, Lcom/google/android/exoplayer2/i;->K(Lcom/google/android/exoplayer2/i;)Lcom/google/android/exoplayer2/o;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/t$d;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/o;)V

    return-void
.end method
