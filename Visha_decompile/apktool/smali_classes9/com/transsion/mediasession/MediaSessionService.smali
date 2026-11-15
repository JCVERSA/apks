.class public Lcom/transsion/mediasession/MediaSessionService;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/player/b$b;
.implements Lh27$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;,
        Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/transsion/audio/player/MusicPlayManager;

.field public d:Lcom/transsion/magicvideo/player/VideoPlayManager;

.field public e:Landroid/support/v4/media/session/MediaSessionCompat;

.field public f:Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;

.field public g:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public h:Lc37;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:J

.field public r:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

.field public final s:Lcom/transsion/audio/player/MusicPlayManager$d;

.field public final t:Lcom/transsion/magicvideo/player/VideoPlayManager$d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/mediasession/MediaSessionService;->q:J

    new-instance v0, Lcom/transsion/mediasession/MediaSessionService$a;

    invoke-direct {v0, p0}, Lcom/transsion/mediasession/MediaSessionService$a;-><init>(Lcom/transsion/mediasession/MediaSessionService;)V

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->s:Lcom/transsion/audio/player/MusicPlayManager$d;

    new-instance v0, Lcom/transsion/mediasession/MediaSessionService$b;

    invoke-direct {v0, p0}, Lcom/transsion/mediasession/MediaSessionService$b;-><init>(Lcom/transsion/mediasession/MediaSessionService;)V

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->t:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    return-void
.end method

.method public static bridge synthetic A(Lcom/transsion/mediasession/MediaSessionService;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->P()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic B(Lcom/transsion/mediasession/MediaSessionService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->S(I)V

    return-void
.end method

.method public static bridge synthetic C(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->T()V

    return-void
.end method

.method public static bridge synthetic D(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->U()V

    return-void
.end method

.method public static bridge synthetic E(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->V()V

    return-void
.end method

.method public static bridge synthetic F(Lcom/transsion/mediasession/MediaSessionService;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->W(Z)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/transsion/mediasession/MediaSessionService;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->X(Z)V

    return-void
.end method

.method public static bridge synthetic H(Lcom/transsion/mediasession/MediaSessionService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->Y(I)V

    return-void
.end method

.method public static bridge synthetic I(Lcom/transsion/mediasession/MediaSessionService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->g0(I)V

    return-void
.end method

.method public static bridge synthetic J(Lcom/transsion/mediasession/MediaSessionService;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->h0(Z)V

    return-void
.end method

.method public static bridge synthetic K(Lcom/transsion/mediasession/MediaSessionService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->i0(I)V

    return-void
.end method

.method public static L(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 2

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object v0
.end method

.method private M()V
    .locals 1

    const-string v0, "notice"

    invoke-static {v0}, Lry5;->g(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->q2()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->B1()V

    :cond_1
    :goto_0
    const-string v0, "pause"

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    invoke-static {v0, p0}, Lk06;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->Q()V

    return-void
.end method

.method public static synthetic f(Lcom/transsion/mediasession/MediaSessionService;Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->R(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/mediasession/MediaSessionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->o:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/mediasession/MediaSessionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->i:Z

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/mediasession/MediaSessionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->j:Z

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/mediasession/MediaSessionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->l:Z

    return p0
.end method

.method public static bridge synthetic k(Lcom/transsion/mediasession/MediaSessionService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/mediasession/MediaSessionService;)J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/mediasession/MediaSessionService;->q:J

    return-wide v0
.end method

.method public static bridge synthetic m(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/transsion/mediasession/MediaSessionService;)Lc37;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/transsion/mediasession/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/transsion/mediasession/MediaSessionService;)Lcom/transsion/magicvideo/player/VideoPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/transsion/mediasession/MediaSessionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->o:Z

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/mediasession/MediaSessionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->i:Z

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/mediasession/MediaSessionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->p:Z

    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/mediasession/MediaSessionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->j:Z

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/mediasession/MediaSessionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->l:Z

    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/mediasession/MediaSessionService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    return-void
.end method

.method public static bridge synthetic w(Lcom/transsion/mediasession/MediaSessionService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/mediasession/MediaSessionService;->q:J

    return-void
.end method

.method public static bridge synthetic x(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/mediasession/MediaSessionService;->M()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/transsion/mediasession/MediaSessionService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->N()V

    return-void
.end method

.method public static bridge synthetic z(Lcom/transsion/mediasession/MediaSessionService;I)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->O(I)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final N()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->q2()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->b0()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->B1()V

    :cond_2
    :goto_0
    const-string v0, "play"

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    invoke-static {v0, p0}, Lk06;->b(Ljava/lang/String;Z)V

    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->a0()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/mediasession/MediaSessionService;->d0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method

.method public final O(I)J
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-wide/16 p0, 0xe37

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0xd33

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0xd35

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0xc36

    :goto_0
    return-wide p0
.end method

.method public final P()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->x0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->y0()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final synthetic Q()V
    .locals 6

    iget-boolean v0, p0, Lcom/transsion/mediasession/MediaSessionService;->o:Z

    const-string v1, "onMediaFavorite:"

    const-string v2, "VishaMediaSessionService"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFar:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lao;->l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    iget-boolean v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v1, :cond_0

    const-string v1, "mv"

    goto :goto_0

    :cond_0
    const-string v1, "audio"

    :goto_0
    const-string v2, "notice"

    invoke-static {v0, v1, v2}, Lp06;->u0(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41f

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->c0()Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltpb;->T(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Ltpb;->j0()Ltpb;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p0}, Ltpb;->j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final synthetic R(Ljava/util/ArrayList;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lex5;

    invoke-direct {v0}, Lex5;-><init>()V

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->b:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;->NEW_AUDIO_NOTIFICATION:Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;

    invoke-static {p1, v0, p0, v1, v2}, Lcom/transsion/audio/utils/FindNewAudioNotificationHelper;->n(Ljava/util/List;Ljava/util/function/Function;Landroid/content/Context;Landroid/app/PendingIntent;Lcom/transsion/audio/utils/FindNewAudioNotificationHelper$NotificationType;)Z

    :cond_0
    return-void
.end method

.method public final S(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc37;->Y(Z)V

    :cond_0
    return-void
.end method

.method public final T()V
    .locals 1

    new-instance v0, Lhl6;

    invoke-direct {v0, p0}, Lhl6;-><init>(Lcom/transsion/mediasession/MediaSessionService;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final U()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediasession onPause,mIsPlayAudioMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->q0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "notice"

    invoke-static {v0}, Lry5;->g(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->q2()V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->A0()Z

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->B1()V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "pause"

    goto :goto_1

    :cond_1
    const-string v0, "play"

    :goto_1
    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    invoke-static {v0, p0}, Lk06;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final V()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->M()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->K()V

    :goto_0
    const-string v0, "off"

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    invoke-static {v0, p0}, Lk06;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final W(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->q1(ZZ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->U0()V

    :goto_0
    const-string p1, "next"

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    invoke-static {p1, p0}, Lk06;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final X(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->s1(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->Y0()V

    :goto_0
    const-string p1, "pre"

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    invoke-static {p1, p0}, Lk06;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public final Y(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lc37;->Y(Z)V

    :cond_0
    return-void
.end method

.method public final Z()V
    .locals 1

    sget-boolean v0, Lpp3;->x:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lgl6;

    invoke-direct {v0, p0}, Lgl6;-><init>(Lcom/transsion/mediasession/MediaSessionService;)V

    invoke-static {p0, v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->k(Landroid/content/Context;Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;)Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->r:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    invoke-virtual {v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->q()V

    return-void
.end method

.method public a(ZZ)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeNotification isVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsListenVideoMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/mediasession/MediaSessionService;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsPlayVideoModeInBackground"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/mediasession/MediaSessionService;->l:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsPlayAudioMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/mediasession/MediaSessionService;->j:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->N(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->l:Z

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc37;->q()V

    :cond_1
    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->a2(Z)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    iget-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->j:Z

    if-eqz p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lc37;->q()V

    iput-boolean v0, p0, Lcom/transsion/mediasession/MediaSessionService;->j:Z

    :cond_4
    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0, v0}, Lcom/transsion/audio/player/MusicPlayManager;->s1(Z)V

    :goto_0
    return-void
.end method

.method public final a0()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.transsion.play.notify.prev"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.transsion.play.notify.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.transsion.play.notify.play_state"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.transsion.play.notify.close"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.transsion.play.notify.favorite"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MY_PACKAGE_SUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;-><init>(Lcom/transsion/mediasession/MediaSessionService;)V

    iput-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->m:Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lxb;->b(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Z)Landroid/content/Intent;

    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lc37;->R(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final b0(I)V
    .locals 4

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->O(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->g:Landroid/support/v4/media/session/PlaybackStateCompat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media session set music PlaybackState state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " currentPos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "VishaMediaSessionService"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNotificationInfo,mIsPlayAudioMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/mediasession/MediaSessionService;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isVideo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->j:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc37;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc37;->Y(Z)V

    :cond_0
    return-void
.end method

.method public final c0(I)V
    .locals 4

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->O(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->g:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set video PlaybackState  state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " curpos = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->S()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " duration = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->V()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "VishaMediaSessionService"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lc37;->P(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc37;->O()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    invoke-static {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioData;->convertToPlayAudioData(Lcom/transsion/dbdata/beans/media/AudioItem;)Lcom/transsion/dbdata/beans/media/PlayAudioData;

    move-result-object p1

    const-string v0, "vd_miniplayer_none"

    invoke-static {v0}, Lp06;->d0(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 v0, 0x15

    iput v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->listFlag:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/transsion/dbdata/beans/media/PlayAudioData;->autoPlay:Z

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->b:Landroid/content/Context;

    const-string v1, "audio_play_repeat_mode"

    invoke-static {p0, v1, v0}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->setRepeatMode(I)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/player/MusicPlayManager;->N0(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 0

    const/16 p2, 0x41f

    if-eq p1, p2, :cond_0

    const/16 p2, 0x41d

    if-ne p1, p2, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc37;->z()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->o:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    iget-boolean p0, p0, Lcom/transsion/mediasession/MediaSessionService;->n:Z

    invoke-virtual {p1, p0}, Lc37;->Y(Z)V

    :cond_2
    return-void
.end method

.method public final e0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->r:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->r()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->r:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    :cond_0
    return-void
.end method

.method public final f0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->m:Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->m:Lcom/transsion/mediasession/MediaSessionService$NotifyAcitonBroadcastReceiver;

    :cond_0
    return-void
.end method

.method public final g0(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->b0(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->b0(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/mediasession/MediaSessionService;->b0(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/mediasession/MediaSessionService;->b0(I)V

    :goto_0
    return-void
.end method

.method public final h0(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/mediasession/MediaSessionService;->p:Z

    const-string v1, "VishaMediaSessionService"

    if-eqz v0, :cond_0

    const-string p0, "package Suspended"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNotification isPlayVideoModeInBackground:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mLastNotificationForVideo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/mediasession/MediaSessionService;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/transsion/mediasession/MediaSessionService;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/transsion/mediasession/MediaSessionService;->k:Z

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0, v3}, Lcom/transsion/magicvideo/player/VideoPlayManager;->a2(Z)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0, v2}, Lcom/transsion/audio/player/MusicPlayManager;->s1(Z)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iput-boolean v2, p0, Lcom/transsion/mediasession/MediaSessionService;->k:Z

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0, v2}, Lcom/transsion/magicvideo/player/VideoPlayManager;->a2(Z)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0, v3}, Lcom/transsion/audio/player/MusicPlayManager;->s1(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lc37;->z()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean p1, p0, Lcom/transsion/mediasession/MediaSessionService;->k:Z

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0, p1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->a2(Z)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->s1(Z)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    invoke-virtual {p0, p1}, Lc37;->Y(Z)V

    :cond_4
    return-void
.end method

.method public final i0(I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->c0(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/mediasession/MediaSessionService;->c0(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/mediasession/MediaSessionService;->c0(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/mediasession/MediaSessionService;->c0(I)V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->b:Landroid/content/Context;

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/transsion/mediasession/MediaSessionService;->O(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->g:Landroid/support/v4/media/session/PlaybackStateCompat;

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->b:Landroid/content/Context;

    const-string v2, "MediaSessionService"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v0, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;

    invoke-direct {v0, p0}, Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;-><init>(Lcom/transsion/mediasession/MediaSessionService;)V

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->f:Lcom/transsion/mediasession/MediaSessionService$MediaSessionCallback;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media/MediaBrowserServiceCompat;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->s:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->p1(Lcom/transsion/playercommon/player/b$b;)V

    invoke-static {}, Lcom/transsion/magicvideo/player/VideoPlayManager;->X()Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->t:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->D1(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0, p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->U1(Lcom/transsion/playercommon/player/b$b;)V

    new-instance v0, Lc37;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-direct {v0, p0, v1}, Lc37;-><init>(Landroid/app/Service;Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->a0()V

    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->Z()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41f

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->b:Landroid/content/Context;

    invoke-static {v0}, Lvf;->h(Landroid/content/Context;)V

    const-string v0, "onDestroy: MediaPlayerAdapter stopped, and MediaSession released"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->s:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    iget-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->t:Lcom/transsion/magicvideo/player/VideoPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->v2(Lcom/transsion/magicvideo/player/VideoPlayManager$d;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->p1(Lcom/transsion/playercommon/player/b$b;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->d:Lcom/transsion/magicvideo/player/VideoPlayManager;

    invoke-virtual {v0, v1}, Lcom/transsion/magicvideo/player/VideoPlayManager;->U1(Lcom/transsion/playercommon/player/b$b;)V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    iput-object v1, p0, Lcom/transsion/mediasession/MediaSessionService;->e:Landroid/support/v4/media/session/MediaSessionCompat;

    :cond_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->h:Lc37;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc37;->q()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->f0()V

    invoke-virtual {p0}, Lcom/transsion/mediasession/MediaSessionService;->e0()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41f

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41d

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;
    .locals 0

    new-instance p0, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;

    const-string p1, "root"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroidx/media/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public onLoadChildren(Ljava/lang/String;Landroidx/media/MediaBrowserServiceCompat$Result;)V
    .locals 4

    invoke-virtual {p2}, Landroidx/media/MediaBrowserServiceCompat$Result;->detach()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v1, "android.media.metadata.TITLE"

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    const-string v1, "android.media.metadata.ARTIST"

    iget-object v2, p0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    invoke-virtual {v1, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/mediasession/MediaSessionService;->L(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadChildren mediaId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VishaMediaSessionService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p0, 0x2

    return p0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "onTaskRemoved"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VishaMediaSessionService"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/audio/player/MusicPlayManager;->M0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTaskRemoved pause error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->P(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/mediasession/MediaSessionService;->b:Landroid/content/Context;

    invoke-static {v0}, Lvf;->h(Landroid/content/Context;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const-string p1, "stopSelf"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
