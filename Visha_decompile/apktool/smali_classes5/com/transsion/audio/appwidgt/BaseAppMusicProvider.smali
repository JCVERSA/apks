.class public abstract Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"


# static fields
.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static final l:Ljava/util/Map;

.field public static final m:Ljava/util/Map;

.field public static final n:Ljava/util/Map;

.field public static final o:Ljava/util/Map;

.field public static final p:Ljava/util/Map;

.field public static final q:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public e:Z

.field public f:Lcom/transsion/audio/service/MusicService;

.field public g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->m:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->s(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic b(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->t(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->r()V

    return-void
.end method

.method public static synthetic d(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->u(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic t(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p3, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->cover:I

    invoke-virtual {p0, v0, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    sget p3, Lcom/transsion/audio/R$id;->cover:I

    invoke-static {}, Lydc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/transsion/audio/R$drawable;->ic_music_widget_cover_def_os:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/audio/R$drawable;->ic_music_widget_cover_def:I

    :goto_0
    invoke-virtual {p0, p3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    invoke-virtual {p1, p2, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method public static synthetic u(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;ILandroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p3, :cond_0

    sget v0, Lcom/transsion/audio/R$id;->cover_bg:I

    invoke-virtual {p0, v0, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p1, p2, p0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->init:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider$1;-><init>(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final B(Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->U()Lcom/transsion/audio/service/MusicService;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->U()Lcom/transsion/audio/service/MusicService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    sget-boolean v1, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/transsion/audio/service/MusicService;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->x(Landroid/content/Intent;)V

    :cond_0
    sput-boolean v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->h:Z

    :cond_1
    sget-boolean p1, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->i:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->isCurrentListEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->y()V

    sput-boolean v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->i:Z

    :cond_2
    sget-boolean p1, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->j:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->isCurrentListEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->w()V

    sput-boolean v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->j:Z

    :cond_3
    sget-boolean p1, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->k:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->isCurrentListEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->e()V

    sput-boolean v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->k:Z

    :cond_4
    return-void
.end method

.method public C(Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager;)V
    .locals 0

    return-void
.end method

.method public D(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->E(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    return-void
.end method

.method public E(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    iput-object v1, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v4

    iput-object v4, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/MediaItem;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    sget v4, Lcom/transsion/audio/R$string;->audio_no_music:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->a:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v4, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v4, v4, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v4, ""

    :goto_2
    iput-object v4, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->c:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->b:Z

    if-eqz v7, :cond_3

    invoke-static {}, Lao;->U()Lao;

    move-result-object v4

    iget-object v7, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {v4, v6, v7}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->e:Z

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->A(Landroid/content/Context;)V

    :goto_3
    if-nez p4, :cond_4

    invoke-virtual {p0, p3}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->v(I)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {p0, v4, p3, p2}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->C(Landroid/widget/RemoteViews;ILandroid/appwidget/AppWidgetManager;)V

    invoke-virtual {p2, p3, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    iget-object v7, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v7, :cond_5

    invoke-virtual {p0, p2, p3}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->z(Landroid/appwidget/AppWidgetManager;I)[I

    move-result-object v7

    iget-object v8, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v9, Lz80;

    invoke-direct {v9, v4, p2, p3}, Lz80;-><init>(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v10}, Lcom/bumptech/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-static {v10}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v10

    invoke-static {p1, v8, v9, v10, v6}, Lcom/transsion/audio/widgets/MusicHelper;->loadPlayBackground(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;Ltn$b;Lcom/bumptech/glide/request/RequestOptions;Z)V

    iget-object v8, v0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    aget v6, v7, v6

    aget v5, v7, v5

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->k()I

    move-result v7

    new-instance v9, La90;

    invoke-direct {v9, v4, p2, p3}, La90;-><init>(Landroid/widget/RemoteViews;Landroid/appwidget/AppWidgetManager;I)V

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l()I

    move-result v11

    move-object v0, p1

    move-object v1, v8

    move v2, v6

    move v3, v5

    move v4, v7

    move-object v5, v9

    move v6, v10

    move v7, v11

    invoke-static/range {v0 .. v7}, Lcom/transsion/audio/widgets/MusicHelper;->loadPlayBackground2(Landroid/content/Context;Lcom/transsion/dbdata/beans/media/AudioItem;IIILtn$b;ZI)V

    :cond_5
    return-void
.end method

.method public final e()V
    .locals 1

    new-instance v0, Lc90;

    invoke-direct {v0, p0}, Lc90;-><init>(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;)V

    invoke-static {v0}, Liia;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class p2, Lcom/transsion/audio/service/MusicService;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p2, "fromwidget"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "fromwidgetType"

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l()I

    move-result p0

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/player/MusicPlayManager;->B(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public g(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRemoteViews: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAppMusicProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->j()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v1, Lcom/transsion/audio/R$id;->name:I

    iget-object v2, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v1, Lcom/transsion/audio/R$id;->cover:I

    invoke-static {}, Lydc;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/transsion/audio/R$drawable;->ic_music_widget_cover_def_os:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/audio/R$drawable;->ic_music_widget_cover_def:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    sget v1, Lcom/transsion/audio/R$id;->iv_play:I

    iget-boolean v2, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->b:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/transsion/audio/R$drawable;->ic_music_widget_play:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/transsion/audio/R$drawable;->ic_music_widget_pause:I

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/audio/player/MusicPlayManager;->U()Lcom/transsion/audio/service/MusicService;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/audio/player/MusicPlayManager;->C(Landroid/content/Context;)V

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.transsion.magicshow.PLAY_PAUSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->h()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "fromwidget"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l()I

    move-result v5

    const-string v6, "fromwidgetType"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v5, 0x2710

    const/high16 v7, 0xc000000

    invoke-static {p1, v5, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.transsion.magicshow.widget.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->h()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x2712

    invoke-static {p1, v2, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$id;->iv_next:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.transsion.magicshow.widget.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->h()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x2711

    invoke-static {p1, v2, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget v2, Lcom/transsion/audio/R$id;->iv_pre:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.transsion.magicshow.farvorite"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->h()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l()I

    move-result p0

    invoke-virtual {v1, v6, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p0, 0x2713

    invoke-static {p1, p0, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sget p1, Lcom/transsion/audio/R$id;->iv_far:I

    invoke-virtual {v0, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public abstract h()Ljava/lang/Class;
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public abstract m()I
.end method

.method public final n(Landroid/content/Context;)V
    .locals 4

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.transsion.magicmovie.video_player_main_activity"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/transsion/dbdata/beans/onlinevideo/RouterBean$RouterData;-><init>(II)V

    const-string v1, "from_router"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "router_data"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "com.transsion.magicshow.OPEN_AUDIO"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public o()Z
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Loc2;->b(Landroid/content/Context;F)I

    move-result p0

    const/16 v0, 0x226

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    const/4 p4, 0x1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->E(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IZ)V

    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l()I

    move-result p0

    invoke-static {p0}, Lry5;->l(I)V

    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l()I

    move-result p0

    invoke-static {p0}, Lry5;->i(I)V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string p1, "music_widget_added"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lb90;

    invoke-direct {v1, p0, p1, p2}, Lb90;-><init>(Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRestored(Landroid/content/Context;[I[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5

    iput-object p1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    if-eqz p3, :cond_4

    array-length p1, p3

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget v1, p3, v0

    iget-object v2, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-virtual {p0, v2, p2, v1}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->D(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V

    invoke-virtual {p0, v1}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->v(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->b:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->o:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->p:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->m:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->e:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    const-string p0, "BaseAppMusicProvider"

    const-string p1, "skip onUpdate: appWidgetIds is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p()Z
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, Loc2;->b(Landroid/content/Context;F)I

    move-result p0

    const/16 v0, 0x226

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public q()Z
    .locals 1

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/a;->m(Landroid/content/Context;)I

    move-result p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v0

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final synthetic r()V
    .locals 5

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lao;->c0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v0

    invoke-static {}, Lao;->U()Lao;

    move-result-object v1

    xor-int/lit8 v3, v0, 0x1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lao;->l0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V

    xor-int/lit8 v1, v0, 0x1

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->getInstance()Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->playMediaItem()Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->isMusicVideo:Z

    if-eqz v3, :cond_0

    const-string v3, "mv"

    goto :goto_0

    :cond_0
    const-string v3, "audio"

    :goto_0
    const-string v4, "widget"

    invoke-static {v1, v3, v4}, Lp06;->u0(ILjava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lry5;->j(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x41f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lh27;->e(I[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public final synthetic s(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iput-object p1, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->g:Landroid/content/Context;

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->B(Landroid/content/Intent;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "appWidgetIds"

    if-nez v1, :cond_b

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "com.transsion.magicshow.PLAY_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/audio/player/MusicPlayManager;->U()Lcom/transsion/audio/service/MusicService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    invoke-static {p1}, Lt08;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lt08;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->n(Landroid/content/Context;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->x(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string p2, "com.transsion.magicshow.play.pause"

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->h:Z

    goto :goto_1

    :cond_5
    const-string p2, "com.transsion.magicshow.farvorite"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->e()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->k:Z

    goto :goto_1

    :cond_7
    const-string p2, "com.transsion.magicshow.widget.previous"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->y()V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->i:Z

    goto :goto_1

    :cond_9
    const-string p2, "com.transsion.magicshow.widget.next"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->w()V

    goto :goto_1

    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->j:Z

    goto :goto_1

    :cond_b
    :goto_0
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    :cond_c
    :goto_1
    return-void
.end method

.method public final v(I)Z
    .locals 8

    iget-object v0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q()Z

    move-result v2

    sget-object v3, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    xor-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result v5

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->o:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-boolean v5, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->e:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final w()V
    .locals 1

    const-string p0, "BaseAppMusicProvider"

    const-string v0, "playNext"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->U0()V

    const-string p0, "next"

    invoke-static {p0}, Lry5;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final x(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BaseAppMusicProvider"

    const-string v1, "playOrPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->f:Lcom/transsion/audio/service/MusicService;

    const-string v0, "fromwidgetType"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/audio/service/MusicService;->D(ZI)V

    return-void
.end method

.method public final y()V
    .locals 1

    const-string p0, "BaseAppMusicProvider"

    const-string v0, "playPre"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/transsion/audio/player/MusicPlayManager;->S()Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/audio/player/MusicPlayManager;->Y0()V

    const-string p0, "previous"

    invoke-static {p0}, Lry5;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final z(Landroid/appwidget/AppWidgetManager;I)[I
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->m()I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->i()I

    move-result v1

    if-nez p1, :cond_0

    filled-new-array {v0, v1}, [I

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    filled-new-array {v0, v1}, [I

    move-result-object p0

    return-object p0

    :cond_1
    const-string p2, "appWidgetMinWidth"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "appWidgetMaxWidth"

    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "appWidgetMaxHeight"

    invoke-virtual {p1, v5, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/transsion/audio/appwidgt/BaseAppMusicProvider;->q()Z

    move-result p0

    if-eqz p0, :cond_5

    if-lez v4, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    if-lez p2, :cond_3

    move v0, p2

    :cond_3
    :goto_0
    if-lez v3, :cond_4

    :goto_1
    move v1, v3

    goto :goto_4

    :cond_4
    if-lez p1, :cond_9

    :goto_2
    move v1, p1

    goto :goto_4

    :cond_5
    if-lez p2, :cond_6

    move v0, p2

    goto :goto_3

    :cond_6
    if-lez v4, :cond_7

    move v0, v4

    :cond_7
    :goto_3
    if-lez p1, :cond_8

    goto :goto_2

    :cond_8
    if-lez v3, :cond_9

    goto :goto_1

    :cond_9
    :goto_4
    filled-new-array {v0, v1}, [I

    move-result-object p0

    return-object p0
.end method
