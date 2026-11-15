.class public Lcom/transsion/audio/service/MediaSessionService;
.super Landroidx/media/MediaBrowserServiceCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;
    }
.end annotation


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lcom/transsion/audio/player/MusicPlayManager;

.field public d:Landroid/support/v4/media/session/MediaSessionCompat;

.field public e:Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;

.field public f:Landroid/support/v4/media/session/PlaybackStateCompat;

.field public g:Lcom/transsion/audio/player/MusicPlayManager$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media/MediaBrowserServiceCompat;-><init>()V

    new-instance v0, Lcom/transsion/audio/service/MediaSessionService$a;

    invoke-direct {v0, p0}, Lcom/transsion/audio/service/MediaSessionService$a;-><init>(Lcom/transsion/audio/service/MediaSessionService;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->g:Lcom/transsion/audio/player/MusicPlayManager$d;

    return-void
.end method

.method public static bridge synthetic e(Lcom/transsion/audio/service/MediaSessionService;)Lcom/transsion/audio/player/MusicPlayManager;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/audio/service/MediaSessionService;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/audio/service/MediaSessionService;I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/audio/service/MediaSessionService;->i(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private static h(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .locals 2

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    return-object v0
.end method

.method private i(I)J
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
    const-wide/16 p0, 0xc35

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0xc36

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public j(I)V
    .locals 4

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->Q()I

    move-result v1

    int-to-long v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/audio/service/MediaSessionService;->i(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->f:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPlaybackState + state = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioSessionService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public k(Lcom/transsion/dbdata/beans/media/AudioItem;)V
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

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService;->b:Landroid/content/Context;

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

.method public l(Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 7

    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    iget-object v3, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->R()I

    move-result p0

    int-to-long v3, p0

    :cond_0
    invoke-virtual {v2, v3, v4, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {v1, v2, p0, p1}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroidx/media/MediaBrowserServiceCompat;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->b:Landroid/content/Context;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    const-wide/16 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/transsion/audio/service/MediaSessionService;->i(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->f:Landroid/support/v4/media/session/PlaybackStateCompat;

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService;->b:Landroid/content/Context;

    const-string v2, "MediaSessionService"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v0, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;

    invoke-direct {v0, p0}, Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;-><init>(Lcom/transsion/audio/service/MediaSessionService;)V

    iput-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->e:Lcom/transsion/audio/service/MediaSessionService$MediaSessionCallback;

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/media/MediaBrowserServiceCompat;->setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService;->g:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, p0}, Lcom/transsion/audio/player/MusicPlayManager;->f1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    iget-object v1, p0, Lcom/transsion/audio/service/MediaSessionService;->g:Lcom/transsion/audio/player/MusicPlayManager$d;

    invoke-virtual {v0, v1}, Lcom/transsion/audio/player/MusicPlayManager;->F1(Lcom/transsion/audio/player/MusicPlayManager$d;)V

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->d:Landroid/support/v4/media/session/MediaSessionCompat;

    :cond_0
    const-string p0, "AudioSessionService"

    const-string v0, "onDestroy: MediaPlayerAdapter stopped, and MediaSession released"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v0, p0, Lcom/transsion/audio/service/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->X()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/service/MediaSessionService;->c:Lcom/transsion/audio/player/MusicPlayManager;

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

    invoke-static {v0}, Lcom/transsion/audio/service/MediaSessionService;->h(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

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

    const-string v0, "AudioSessionService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/media/MediaBrowserServiceCompat$Result;->sendResult(Ljava/lang/Object;)V

    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
