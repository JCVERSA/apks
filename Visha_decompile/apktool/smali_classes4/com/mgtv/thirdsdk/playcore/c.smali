.class public Lcom/mgtv/thirdsdk/playcore/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/thirdsdk/playcore/c$p;,
        Lcom/mgtv/thirdsdk/playcore/c$e;,
        Lcom/mgtv/thirdsdk/playcore/c$k;,
        Lcom/mgtv/thirdsdk/playcore/c$o;,
        Lcom/mgtv/thirdsdk/playcore/c$l;,
        Lcom/mgtv/thirdsdk/playcore/c$m;,
        Lcom/mgtv/thirdsdk/playcore/c$h;,
        Lcom/mgtv/thirdsdk/playcore/c$g;,
        Lcom/mgtv/thirdsdk/playcore/c$n;,
        Lcom/mgtv/thirdsdk/playcore/c$j;,
        Lcom/mgtv/thirdsdk/playcore/c$i;,
        Lcom/mgtv/thirdsdk/playcore/c$q;,
        Lcom/mgtv/thirdsdk/playcore/c$t;,
        Lcom/mgtv/thirdsdk/playcore/c$f;,
        Lcom/mgtv/thirdsdk/playcore/c$r;,
        Lcom/mgtv/thirdsdk/playcore/c$s;,
        Lcom/mgtv/thirdsdk/playcore/c$d;,
        Lcom/mgtv/thirdsdk/playcore/c$b;,
        Lcom/mgtv/thirdsdk/playcore/c$c;,
        Lcom/mgtv/thirdsdk/playcore/c$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "c"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:J

.field private H:Lcom/mgtv/thirdsdk/playcore/d/a;

.field private I:Z

.field private J:Lcom/mgtv/thirdsdk/playcore/c$b;

.field private final K:Lcom/mgtv/thirdsdk/playcore/d/a$b;

.field a:Lcom/mgtv/thirdsdk/playcore/c$a;

.field protected b:Lcom/mgtv/thirdsdk/playcore/c$c;

.field c:Z

.field private e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

.field private f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

.field private g:Lcom/mgtv/thirdsdk/playcore/e/f;

.field private h:Lcom/mgtv/thirdsdk/playcore/e/g;

.field private i:Lcom/mgtv/thirdsdk/playcore/e/h;

.field private j:Lcom/mgtv/thirdsdk/playcore/e/d;

.field private k:Lcom/mgtv/thirdsdk/playcore/e/c;

.field private l:Lcom/mgtv/thirdsdk/playcore/e/e;

.field private m:Lcom/mgtv/thirdsdk/playcore/e/a;

.field private n:Lcom/mgtv/thirdsdk/playcore/e/b;

.field private o:Landroid/content/Context;

.field private p:Landroid/app/Activity;

.field private q:Lcom/mgtv/thirdsdk/playcore/e;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;

.field private w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

.field private x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

.field private y:Lcom/mgtv/thirdsdk/playcore/d;

.field private z:Lcom/mgtv/thirdsdk/playcore/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->A:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->B:Z

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->C:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->D:I

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/c$3;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/c$3;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->J:Lcom/mgtv/thirdsdk/playcore/c$b;

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/c$4;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/playcore/c$4;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->K:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    new-instance p2, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-direct {p2, p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method private I()V
    .locals 3

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/c$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$a;-><init>(Landroid/os/Handler;Lcom/mgtv/thirdsdk/playcore/c;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->a:Lcom/mgtv/thirdsdk/playcore/c$a;

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->a:Lcom/mgtv/thirdsdk/playcore/c$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private J()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->b:Lcom/mgtv/thirdsdk/playcore/c$c;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/playcore/c;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->b:Lcom/mgtv/thirdsdk/playcore/c$c;

    invoke-interface {v1, v0}, Lcom/mgtv/thirdsdk/playcore/c$c;->onVolumeChangePorcess(I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->D:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private K()V
    .locals 5

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlAdCompleteNotify"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x2

    iput v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    iget-boolean v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/playcore/c;->j(I)V

    goto/16 :goto_0

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoPrepare  controlAdNotify  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->aA:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->U:Z

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->aA:Z

    if-eqz v3, :cond_2

    iget-boolean v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    if-nez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoPrepare()V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h(Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    filled-new-array {v4}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "controlAdCompleteNotify:\u4e00\u5c42\u5230prepare\u8017\u65f6---\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v3, v4}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_3
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getIsChangeDefinition()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->f()V

    const-string v1, "controlAdCompleteNotify():play"

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v0, 0x3

    const/16 v1, 0x8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e;->a([I)V

    goto :goto_0

    :cond_4
    iput-boolean v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->U:Z

    invoke-virtual {v1, v4}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method private L()V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlAsyncChangeDefination"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->l:Lcom/mgtv/thirdsdk/playcore/e/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->n:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-virtual {v0, p0}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlAsyncVideoChangeDefination"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->j:Lcom/mgtv/thirdsdk/playcore/e/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->H:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/mgtv/thirdsdk/playcore/e/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlUrlChangeDefination"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->i:Lcom/mgtv/thirdsdk/playcore/e/h;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->O()Z

    move-result v1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->n:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    invoke-virtual {v0, v1, p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(ZLcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;)V

    :cond_0
    return-void
.end method

.method private O()Z
    .locals 2

    const-string v0, "vod"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hunantv/imgo/util/b;->af()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "card"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ah()Z

    move-result p0

    return p0

    :cond_1
    const-string v0, "immersion"

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ag()Z

    move-result p0

    return p0

    :cond_2
    const-string v0, "detail"

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->E:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/hunantv/imgo/util/b;->ai()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private P()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->G:J

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlGetSource"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x0

    filled-new-array {v5, v3, v4}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/e;->a([I)V

    new-instance v0, Lcom/hunantv/imgo/log/c/c$a;

    invoke-direct {v0}, Lcom/hunantv/imgo/log/c/c$a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/log/c/c$a;->a(Z)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/log/c/c$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->c(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->d(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/c/c$a;->e()Lcom/hunantv/imgo/log/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/c/c;->d()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->h:Lcom/mgtv/thirdsdk/playcore/e/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->r:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, p0, v2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 5

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlLiveGetSource"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->G:J

    new-instance v0, Lcom/hunantv/imgo/log/c/c$a;

    invoke-direct {v0}, Lcom/hunantv/imgo/log/c/c$a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/log/c/c$a;->a(Z)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/log/c/c$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->c(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->d(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/c/c$a;->e()Lcom/hunantv/imgo/log/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/c/c;->d()V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->m:Lcom/mgtv/thirdsdk/playcore/e/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->u:Ljava/lang/String;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private R()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->G:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/hunantv/imgo/util/e;->b:J

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlGetAd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v3, 0x0

    filled-new-array {v3}, [I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v4, 0x4

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/mgtv/thirdsdk/playcore/e;->a([I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bf7\u6c42\u4e00\u5c42\u8017\u65f6--------------\uff1a"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v4, v3}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/f;->b()V

    :cond_0
    return-void
.end method

.method private S()V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlLiveGetVideo"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->G:J

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->n:Lcom/mgtv/thirdsdk/playcore/e/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/b;->a()V

    :cond_0
    return-void
.end method

.method private T()V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlGetUrl"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->G:J

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    filled-new-array {v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;->a([I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->i:Lcom/mgtv/thirdsdk/playcore/e/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/h;->a()V

    :cond_0
    return-void
.end method

.method private U()V
    .locals 5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aK:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/hunantv/imgo/util/e;->c:J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->G:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/hunantv/imgo/util/e;->c:J

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->G:J

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "controlGetVideo"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    filled-new-array {v2}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v3, 0x2

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mgtv/thirdsdk/playcore/e;->a([I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bf7\u6c42\u4e8c\u5c42\u8017\u65f6--------------\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v3, v2}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ms,------\u91cd\u8bd5\u6b21\u6570\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->y:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->j:Lcom/mgtv/thirdsdk/playcore/e/d;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/d;->a()V

    :cond_1
    return-void
.end method

.method private V()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "initVideoLinstener"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$o;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$o;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnStartListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnStartListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$l;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$l;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnPauseListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPauseListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$m;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$m;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnPreparedListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnPreparedListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$h;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$h;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnErrorListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnErrorListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$g;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$g;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnCompletionListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnCompletionListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$e;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$e;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnBufferListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnBufferListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$n;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$n;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnSeekCompleteListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSeekCompleteListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$j;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$j;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnInfoListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnInfoListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$i;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$i;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnEventInfoListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$onEventInfoListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$q;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$q;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnTickListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnTickListener;I)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$t;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$t;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnWarningListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnWarningListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$f;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$f;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnChangeSourceListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnChangeSourceListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$k;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$k;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnNetStatusChangedListener(Lcom/mgtv/thirdsdk/playcore/b/c;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$r;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$r;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnUpdateStatusListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnUpdateStatusListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$s;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$s;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnVideoSizeChangedListener(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$p;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$p;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setOnSubtitlesCallback(Lcom/mgtv/thirdsdk/playcore/callback/PlayerListener$OnSubtitleCallback;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$d;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$d;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdUpdateStatusListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private W()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v0, "onSeekComplete():play"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private X()Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;
    .locals 4

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->j:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;

    iget v2, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;->pointType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method private Y()Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;
    .locals 4

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->j:Ljava/util/List;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;

    iget v2, v1, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;->pointType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method private Z()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->Z:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->aA:Z

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v2, "videoContentCompletes  "

    invoke-static {v0, v2, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->videoContentComplete()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->aa()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/d;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->y:Lcom/mgtv/thirdsdk/playcore/d;

    return-object p0
.end method

.method private a(II)V
    .locals 3

    .line 125
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLoadingSpeed()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->onCompletion(II)V

    .line 127
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgtv/ssp/e;->c(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->S:Z

    :cond_0
    const/16 v0, 0x7544

    if-eq p1, v0, :cond_2

    const/16 v0, 0x754e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x754f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7550

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->Z()V

    goto :goto_1

    .line 130
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/c;->c(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;II)V

    :goto_1
    return-void
.end method

.method private a(IIZ)V
    .locals 5

    .line 164
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "doErrorRetry"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 165
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->n(Z)V

    if-nez p3, :cond_6

    .line 166
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->M:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 167
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v1, v1, 0x2

    .line 168
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v3, 0x0

    .line 171
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    if-ne v3, v2, :cond_1

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&svrip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    .line 175
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBeforeFirstFrame()Z

    move-result v0

    if-nez v0, :cond_3

    .line 176
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g(I)V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v0, p2}, Lcom/hunantv/media/report/ReportParams;->setLastErrorCodeExtra(I)Lcom/hunantv/media/report/ReportParams;

    const/16 v0, 0x754e

    if-eq p1, v0, :cond_5

    const/16 v0, 0x754f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7550

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 178
    :cond_4
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->T()V

    goto :goto_2

    .line 179
    :cond_5
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "pvs doErrorRetry controlGetSource "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->aL:Z

    .line 181
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->P()V

    .line 182
    :goto_2
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(II)V

    goto :goto_3

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const-string v1, ""

    iput-object v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->B:Ljava/lang/String;

    .line 185
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->l(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(II)V

    .line 187
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->g()V

    .line 188
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->f()V

    :goto_3
    const p2, 0x61c1a

    .line 189
    const-string v0, "2"

    const-string v1, "140105_"

    if-eq p1, p2, :cond_a

    const p2, 0x61c20

    if-eq p1, p2, :cond_a

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    .line 190
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    if-eqz p0, :cond_7

    if-eqz p3, :cond_7

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 192
    :cond_7
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "140103_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 193
    :pswitch_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    if-eqz p0, :cond_8

    if-eqz p3, :cond_8

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 195
    :cond_8
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "140101_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 196
    :pswitch_1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    if-eqz p0, :cond_9

    if-eqz p3, :cond_9

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 198
    :cond_9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "140102_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 199
    :cond_a
    :pswitch_2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    if-eqz p0, :cond_b

    if-eqz p3, :cond_b

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 201
    :cond_b
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "140100_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30d41
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x493e1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61c10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61c17
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x61c73
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x61cd7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 163
    sget-object p0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onVideoWarning------>what:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/hunantv/imgo/log/e;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private a(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz p0, :cond_0

    .line 219
    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onSubtitlesSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->j(I)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/c;->b(II)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->c(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;II)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;Ljava/lang/String;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/c;->b(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->l(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/thirdsdk/playcore/c;ZZ)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/c;->a(ZZ)V

    return-void
.end method

.method private a(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 4

    .line 151
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "jumpInPlay"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p1, :cond_5

    .line 152
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ac:Z

    if-nez v0, :cond_1

    return-void

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v0

    .line 155
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getDuration()I

    move-result v1

    if-ltz v0, :cond_5

    if-lez v1, :cond_5

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->X()Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    .line 157
    :cond_3
    iget v3, v3, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;->pointStart:I

    .line 158
    div-int/lit16 v1, v1, 0x3e8

    if-lt v3, v1, :cond_4

    return-void

    .line 159
    :cond_4
    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v1, v3, -0x1

    if-lt v0, v1, :cond_5

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_5

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->reset(Z)V

    .line 161
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->S:Z

    .line 162
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->removeRecordPoint()V

    :cond_5
    :goto_0
    return-void
.end method

.method private a(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;II)V
    .locals 3

    .line 143
    sget-object p3, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v0, "onVideoTick"

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 144
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "adsdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "position:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "     videoPosition:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v1}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 148
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result p1

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getDuration()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 149
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->stop()V

    .line 150
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->onInnerCompletion(II)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 0

    .line 124
    sget-object p0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string p1, "onVideoTsSkip"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {}, Lcom/hunantv/imgo/net/c;->c()I

    move-result p1

    .line 132
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isBeforeFirstFrame()Z

    move-result p2

    if-nez p2, :cond_4

    .line 133
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p2, :cond_4

    iget-boolean v0, p2, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    if-nez v0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 134
    iget-object p1, p2, Lcom/mgtv/thirdsdk/playcore/e;->i:Ljava/lang/String;

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result p2

    int-to-long v2, p2

    invoke-static {p1, v2, v3}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Ljava/lang/String;J)V

    .line 135
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->d()V

    .line 136
    iget-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->I:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->c:Z

    .line 137
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    const-string p1, "140100"

    if-eqz p0, :cond_1

    .line 138
    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 139
    :cond_1
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    const-string p2, "1"

    invoke-virtual {p0, p2, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eq p1, v1, :cond_3

    if-nez p1, :cond_4

    .line 140
    :cond_3
    iget-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->c:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->c:Z

    .line 142
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->f()V

    :cond_4
    :goto_0
    return-void
.end method

.method private aa()V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "onVideoCompletion"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoComplete()V

    :cond_0
    return-void
.end method

.method private ab()V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "onVideoStart"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->i()V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-interface {v0, p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoStartPlayering(Z)V

    :cond_1
    return-void
.end method

.method private ac()V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "onVideoPause"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e;->j()V

    :cond_0
    return-void
.end method

.method private ad()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->p:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setSecure(Z)V

    :cond_1
    return-void
.end method

.method private ae()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->p:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setSecure(Z)V

    :cond_1
    return-void
.end method

.method private af()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/d/a;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->K:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    invoke-direct {v0, v1}, Lcom/mgtv/thirdsdk/playcore/d/a;-><init>(Lcom/mgtv/thirdsdk/playcore/d/a$b;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/mgtv/thirdsdk/playcore/e;)V

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->z:Lcom/mgtv/thirdsdk/playcore/f;

    return-object p0
.end method

.method private b(II)V
    .locals 1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/16 p1, 0x8

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v0, 0x6

    filled-new-array {p2, v0}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    .line 33
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    .line 34
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getIsChangeDefinition()Z

    move-result p1

    if-nez p1, :cond_2

    .line 35
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->OnVideoFirstFrame()V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz p0, :cond_0

    .line 121
    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onSubtitlesError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/c;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->l(I)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/c;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/c;->c(II)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/c;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->b(Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/c;Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/c;->c(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;II)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/c;Ljava/lang/String;II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/c;->c(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/thirdsdk/playcore/c;Z)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->m(Z)V

    return-void
.end method

.method private b(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 6

    .line 81
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "jumpBeforePlay"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p1, :cond_d

    .line 82
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v0

    .line 84
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getDuration()I

    move-result v1

    if-ltz v0, :cond_d

    if-lez v1, :cond_d

    if-le v0, v1, :cond_1

    goto/16 :goto_2

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->Y()Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;

    move-result-object v2

    .line 86
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->X()Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;

    move-result-object v3

    .line 87
    iget-boolean v4, p1, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPosPlay:Z

    if-nez v4, :cond_5

    .line 88
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ac:Z

    if-eqz p0, :cond_d

    if-nez v2, :cond_2

    return-void

    .line 89
    :cond_2
    iget p0, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;->pointStart:I

    if-lez p0, :cond_4

    .line 90
    div-int/lit16 v1, v1, 0x3e8

    if-lt p0, v1, :cond_3

    goto :goto_0

    :cond_3
    mul-int/lit16 p0, p0, 0x3e8

    .line 91
    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->seekTo(I)V

    goto :goto_2

    :cond_4
    :goto_0
    return-void

    .line 92
    :cond_5
    div-int/lit16 v0, v0, 0x3e8

    div-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v4, v1, -0x3

    const/4 v5, 0x0

    if-lt v0, v4, :cond_a

    .line 93
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ac:Z

    if-eqz p0, :cond_9

    if-nez v2, :cond_6

    return-void

    .line 94
    :cond_6
    iget p0, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;->pointStart:I

    if-lez p0, :cond_8

    if-lt p0, v1, :cond_7

    goto :goto_1

    :cond_7
    mul-int/lit16 p0, p0, 0x3e8

    .line 95
    invoke-virtual {p1, p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->seekTo(I)V

    goto :goto_2

    :cond_8
    :goto_1
    return-void

    .line 96
    :cond_9
    invoke-virtual {p1, v5}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->seekTo(I)V

    goto :goto_2

    :cond_a
    if-nez v3, :cond_b

    return-void

    .line 97
    :cond_b
    iget v3, v3, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity$PointEntity;->pointStart:I

    add-int/lit8 v4, v3, -0x1

    if-lt v0, v4, :cond_d

    add-int/lit8 v4, v3, 0x1

    if-gt v0, v4, :cond_d

    .line 98
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ac:Z

    if-eqz p0, :cond_d

    if-eqz v2, :cond_c

    if-lez v3, :cond_c

    if-ge v3, v1, :cond_c

    mul-int/lit16 v3, v3, 0x3e8

    .line 99
    invoke-virtual {p1, v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->seekTo(I)V

    goto :goto_2

    .line 100
    :cond_c
    invoke-virtual {p1, v5}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->seekTo(I)V

    :cond_d
    :goto_2
    return-void
.end method

.method private b(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;II)V
    .locals 15

    move-object v1, p0

    .line 36
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v2, "onVideoRenderStart"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 37
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_0

    .line 38
    iget-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v2, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->L:Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Lcom/hunantv/imgo/net/entity/PlayerRealUrlEntity;)V

    .line 40
    :cond_0
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    move/from16 v2, p2

    move/from16 v4, p3

    invoke-virtual {v0, v2, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c(II)V

    .line 41
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    .line 42
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getIsChangeDefinition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    invoke-interface {v0, v2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoStartPlayering(Z)V

    .line 45
    :try_start_0
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    const-string v4, "0000"

    invoke-interface {v0, v4}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoDefinitionChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 46
    :goto_0
    sget-object v4, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/hunantv/imgo/log/e;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_2

    .line 47
    :goto_1
    sget-object v4, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/hunantv/imgo/log/e;->c(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 48
    :goto_2
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setIsChangeDefinition(Z)V

    goto :goto_3

    .line 49
    :cond_1
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/hunantv/imgo/util/e;->a:J

    sub-long/2addr v5, v7

    sget-wide v7, Lcom/hunantv/imgo/util/e;->b:J

    sget-wide v9, Lcom/hunantv/imgo/util/e;->c:J

    sget-wide v11, Lcom/hunantv/imgo/util/e;->d:J

    iget-object v13, v1, Lcom/mgtv/thirdsdk/playcore/c;->E:Ljava/lang/String;

    const-string v14, "vod"

    invoke-virtual/range {v4 .. v14}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(JJJJLjava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    invoke-interface {v0, v3}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoStartPlayering(Z)V

    .line 51
    :cond_2
    :goto_3
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepare\u5230\u7b2c\u4e00\u5e27\u6e32\u67d3\u8017\u65f6-----------------\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 52
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v4, v2}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->s(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->t(Ljava/lang/String;)V

    .line 54
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->y:I

    if-lez v0, :cond_3

    .line 55
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v7, v3}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v7, v7, Lcom/mgtv/thirdsdk/playcore/e;->y:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->u(Ljava/lang/String;)V

    goto :goto_4

    .line 56
    :cond_3
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v4, v3}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->u(Ljava/lang/String;)V

    .line 57
    :goto_4
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->v(Ljava/lang/String;)V

    .line 58
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v0, v6}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v8

    .line 59
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aq:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v2

    .line 60
    :goto_5
    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->aq:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 61
    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->aq:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v10, v4

    sub-long/2addr v8, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 62
    :cond_4
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getMemoryPlayType()I

    move-result v0

    .line 63
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->w(Ljava/lang/String;)V

    .line 64
    sget-object v4, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p2p\u8017\u65f6-----------------\uff1a"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 65
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v6

    iget-object v10, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v10, v11}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->j(Ljava/lang/String;)V

    .line 67
    iget-object v0, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->d()V

    .line 68
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v6, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v11

    add-long/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->q(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u603b\u8017\u65f6-----------------\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v6, v10}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v11

    add-long/2addr v11, v8

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u603b\u8017\u65f6(\u4e00\u5c42\u5230\u7b2c\u4e00\u5e27\u6e32\u67d3\u603b\u65f6\u957f)-----------------\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6807\u51c6\u603b\u8017\u65f6-----------------\uff1a"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v6, v10}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v8

    iget-object v6, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/16 v11, 0x8

    .line 72
    invoke-virtual {v6, v11}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v12

    add-long/2addr v8, v12

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v4, v0, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 74
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v4, v10}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v4

    iget-object v6, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    .line 75
    invoke-virtual {v6, v11}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 76
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->r(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->au:Z

    invoke-virtual {v0, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->j(Z)V

    .line 78
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->av:Z

    invoke-virtual {v0, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k(Z)V

    .line 79
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    iget-object v4, v1, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v5, v4, Lcom/mgtv/thirdsdk/playcore/e;->aw:Z

    if-eqz v5, :cond_5

    move v3, v7

    goto :goto_6

    :cond_5
    iget-object v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->aB:Lcom/hunantv/media/report/ReportParams;

    invoke-virtual {v4}, Lcom/hunantv/media/report/ReportParams;->getProxyType()Lcom/hunantv/media/report/ReportParams$ProxyType;

    move-result-object v4

    sget-object v5, Lcom/hunantv/media/report/ReportParams$ProxyType;->ONLY_P2P:Lcom/hunantv/media/report/ReportParams$ProxyType;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    move v3, v2

    :goto_6
    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(I)V

    .line 80
    invoke-direct/range {p0 .. p1}, Lcom/mgtv/thirdsdk/playcore/c;->b(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V

    return-void
.end method

.method private b(Ljava/lang/String;II)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->l:Lcom/mgtv/thirdsdk/playcore/e/e;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Ljava/lang/String;II)V

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz p0, :cond_1

    .line 30
    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoDefinitionChanging()V

    :cond_1
    return-void
.end method

.method private c(II)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x384

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/c;->b(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;II)V

    .line 19
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->onInfo(II)Z

    .line 20
    invoke-static {}, Lcom/hunantv/imgo/util/b;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->af()V

    goto :goto_0

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x4c4b401

    invoke-direct {p0, v0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->J()V

    return-void
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/c;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->k(I)V

    return-void
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/c;II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/c;->a(II)V

    return-void
.end method

.method public static synthetic c(Lcom/mgtv/thirdsdk/playcore/c;Ljava/lang/String;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/c;->d(Ljava/lang/String;II)V

    return-void
.end method

.method private c(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;)V
    .locals 7

    .line 61
    sget-object p1, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoPrepared    adComplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; getIsChangeDefinition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getIsChangeDefinition()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 63
    invoke-static {p1, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 64
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->hdcp:I

    if-ne v0, v1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->ad()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v2, 0x2

    filled-new-array {v2}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e09\u5c42\u5230prepare\u8017\u65f6-------------------\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v3, v2}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mgtv/thirdsdk/playcore/c;->G:J

    sub-long/2addr v3, v5

    sput-wide v3, Lcom/hunantv/imgo/util/e;->d:J

    .line 69
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    const-string v4, "\u4e00\u5c42\u5230prepare\u8017\u65f6-------------------\uff1a"

    const/4 v5, 0x0

    const/4 v6, 0x5

    if-eqz v3, :cond_2

    .line 70
    iget-boolean v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->aJ:Z

    if-eqz v3, :cond_1

    .line 71
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz v0, :cond_4

    .line 72
    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoPrepare()V

    goto/16 :goto_0

    .line 73
    :cond_1
    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getIsChangeDefinition()Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz v0, :cond_4

    .line 75
    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoPrepare()V

    .line 76
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h(Z)V

    .line 77
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    filled-new-array {v6}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    .line 79
    invoke-virtual {v3, v6}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {p1, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 81
    :cond_2
    iget-boolean v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-nez v3, :cond_3

    .line 82
    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getIsChangeDefinition()Z

    move-result v0

    if-nez v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz v0, :cond_4

    .line 84
    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoPrepare()V

    .line 85
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h(Z)V

    .line 86
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    filled-new-array {v6}, [I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mgtv/thirdsdk/playcore/e;->b([I)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    .line 88
    invoke-virtual {v3, v6}, Lcom/mgtv/thirdsdk/playcore/e;->a(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {p1, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getIsChangeDefinition()Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoPrepare()V

    .line 92
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getIsChangeDefinition()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->f()V

    .line 94
    const-string v0, "onVideoPrepared():play"

    invoke-static {p1, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 95
    :cond_5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v1, p1, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    .line 96
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVideoPrepare   onVideoPrepared  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;II)V
    .locals 5

    .line 23
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adsdk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->ai:Z

    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz p1, :cond_1

    .line 27
    const-string v0, "0103"

    invoke-interface {p1, v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoDefinitionChanged(Ljava/lang/String;)V

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->av:Z

    const-string v1, "1"

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->l:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    if-eqz v0, :cond_3

    .line 29
    iget v3, p1, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    iget v4, p1, Lcom/mgtv/thirdsdk/playcore/e;->Q:I

    if-ge v3, v4, :cond_2

    add-int/2addr v3, v2

    .line 30
    iput v3, p1, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    const/4 p1, 0x0

    .line 31
    iput-object p1, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->m3u8:Ljava/lang/String;

    const/4 p1, 0x3

    .line 32
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->j(I)V

    .line 33
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "140104_"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-ne v3, v4, :cond_10

    .line 34
    invoke-direct {p0, p2, p3, v2}, Lcom/mgtv/thirdsdk/playcore/c;->a(IIZ)V

    goto/16 :goto_0

    .line 35
    :cond_3
    iget-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    if-nez v0, :cond_6

    const p1, 0x7a125

    if-ne p2, p1, :cond_4

    .line 36
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->l:Lcom/mgtv/thirdsdk/playcore/e/e;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/e/e;->a()V

    .line 37
    :cond_4
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    iget v1, p1, Lcom/mgtv/thirdsdk/playcore/e;->Q:I

    if-ge v0, v1, :cond_5

    add-int/2addr v0, v2

    .line 38
    iput v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->P:I

    const/4 p1, 0x0

    .line 39
    invoke-direct {p0, p2, p3, p1}, Lcom/mgtv/thirdsdk/playcore/c;->a(IIZ)V

    goto/16 :goto_0

    :cond_5
    if-ne v0, v1, :cond_10

    .line 40
    invoke-direct {p0, p2, p3, v2}, Lcom/mgtv/thirdsdk/playcore/c;->a(IIZ)V

    goto/16 :goto_0

    .line 41
    :cond_6
    iget-boolean p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-nez p1, :cond_a

    const p1, 0x6acfcb

    if-ne p2, p1, :cond_8

    .line 42
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    const-string p1, "150502_"

    if-eqz p0, :cond_7

    .line 43
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 44
    :cond_7
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45
    :cond_8
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    const-string p1, "150599_"

    if-eqz p0, :cond_9

    .line 46
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 47
    :cond_9
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const p1, 0x61c1a

    .line 48
    const-string p3, "2"

    if-eq p2, p1, :cond_e

    const p1, 0x61c20

    if-eq p2, p1, :cond_e

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    packed-switch p2, :pswitch_data_6

    .line 49
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    const-string p1, "140103_"

    if-eqz p0, :cond_b

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 51
    :cond_b
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :pswitch_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    const-string p1, "140101_"

    if-eqz p0, :cond_c

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 54
    :cond_c
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    const-string p1, "140102_"

    if-eqz p0, :cond_d

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 57
    :cond_d
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_e
    :pswitch_2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    const-string p1, "140100_"

    if-eqz p0, :cond_f

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    .line 60
    :cond_f
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30d41
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x493e1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x61c10
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61c17
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x61c73
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x61cd7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-wide v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLoadingSpeed()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getLoadingSpeed()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    .line 14
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz v0, :cond_2

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoLoading(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;II)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->l:Lcom/mgtv/thirdsdk/playcore/e/e;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/e/e;->b(Ljava/lang/String;II)V

    .line 7
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    const-string p2, "0000"

    invoke-interface {p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoDefinitionChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance p1, Lcom/hunantv/imgo/log/c/c$a;

    invoke-direct {p1}, Lcom/hunantv/imgo/log/c/c$a;-><init>()V

    const/4 p2, 0x1

    .line 9
    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/log/c/c$a;->a(Z)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/hunantv/imgo/log/c/c$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p0

    const-string p1, "01"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/log/c/c$a;->c(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p0

    .line 10
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p1

    iget-object p1, p1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/log/c/c$a;->d(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "exception:"

    invoke-virtual {p0, p2, p1}, Lcom/hunantv/imgo/log/c/c$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/log/c/c$a;->e()Lcom/hunantv/imgo/log/c/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/log/c/c;->d()V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->v:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;

    return-object p0
.end method

.method public static synthetic d(Lcom/mgtv/thirdsdk/playcore/c;Ljava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/c;->a(Ljava/lang/String;II)V

    return-void
.end method

.method private d(Ljava/lang/String;II)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->l:Lcom/mgtv/thirdsdk/playcore/e/e;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(II)V

    .line 5
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    const-string p2, "0103"

    invoke-interface {p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoDefinitionChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance p1, Lcom/hunantv/imgo/log/c/c$a;

    invoke-direct {p1}, Lcom/hunantv/imgo/log/c/c$a;-><init>()V

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/log/c/c$a;->a(Z)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/hunantv/imgo/log/c/c$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p0

    const-string p1, "01"

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/log/c/c$a;->c(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p0

    .line 8
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p1

    iget-object p1, p1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hunantv/imgo/log/c/c$a;->d(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "exception:"

    invoke-virtual {p0, p2, p1}, Lcom/hunantv/imgo/log/c/c$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/log/c/c$a;->e()Lcom/hunantv/imgo/log/c/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/imgo/log/c/c;->d()V

    :goto_0
    return-void
.end method

.method public static synthetic e(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    return-object p0
.end method

.method public static synthetic f(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    return-object p0
.end method

.method public static synthetic g(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    return-object p0
.end method

.method public static synthetic h(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/e/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->l:Lcom/mgtv/thirdsdk/playcore/e/e;

    return-object p0
.end method

.method public static synthetic i(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    return-object p0
.end method

.method private i(I)Z
    .locals 0

    .line 2
    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->D:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private j(I)V
    .locals 3

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterPlayerStep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->aa()V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->d()V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->S()V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->Q()V

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->K()V

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->N()V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->M()V

    goto :goto_0

    .line 10
    :pswitch_7
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->L()V

    goto :goto_0

    .line 11
    :pswitch_8
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->U()V

    goto :goto_0

    .line 12
    :pswitch_9
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->T()V

    goto :goto_0

    .line 13
    :pswitch_a
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->R()V

    goto :goto_0

    .line 14
    :pswitch_b
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "pvs enterPlayerStep controlGetSource "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->P()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic j(Lcom/mgtv/thirdsdk/playcore/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->W()V

    return-void
.end method

.method private k(I)V
    .locals 5

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoEndBuffer--------->type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->mHandPause:Z

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->k()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 9
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ad:J

    .line 10
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->onEndBuffer(I)V

    return-void
.end method

.method public static synthetic k(Lcom/mgtv/thirdsdk/playcore/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->ac()V

    return-void
.end method

.method private l(I)V
    .locals 3

    .line 11
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStartBuffer-------->type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 12
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 13
    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 14
    :cond_0
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->onStartBuffer(I)V

    return-void
.end method

.method public static synthetic l(Lcom/mgtv/thirdsdk/playcore/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->ab()V

    return-void
.end method

.method private l(Z)V
    .locals 3

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateStatus:isPlaying"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; isAdStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 3
    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->C:Z

    if-ne v1, p1, :cond_0

    .line 4
    const-string p0, "onUpdateStatus:return"

    invoke-static {v0, p0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->C:Z

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->C:Z

    .line 8
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->A:Z

    if-eqz v0, :cond_2

    .line 9
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->A:Z

    .line 10
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoStopped()V

    :cond_2
    :goto_0
    return-void
.end method

.method private m(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateStatus:isPlaying1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; isStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 2
    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->B:Z

    if-ne v1, p1, :cond_0

    .line 3
    const-string p0, "onUpdateStatus:return"

    invoke-static {v0, p0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->B:Z

    .line 5
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoStarted()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->B:Z

    .line 7
    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->A:Z

    if-eqz v0, :cond_2

    .line 8
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->A:Z

    .line 9
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoStopped()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoPaused()V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mPlayerControl setBackgroundStatus true"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setBackgroundStatus(Z)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mPlayerControl setBackgroundStatus false"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setBackgroundStatus(Z)V

    :cond_0
    return-void
.end method

.method public C()Lcom/mgtv/ssp/play/bean/SubTitleData;
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgtv/thirdsdk/playcore/d/a;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->K:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    invoke-direct {v0, v1}, Lcom/mgtv/thirdsdk/playcore/d/a;-><init>(Lcom/mgtv/thirdsdk/playcore/d/a$b;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/d/a;->b()Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p0

    return-object p0
.end method

.method public D()V
    .locals 5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aI:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "play"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e;->c()V

    :cond_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->aE:Z

    if-nez v3, :cond_2

    const/16 p0, 0xe

    invoke-virtual {v1, p0}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    return-void

    :cond_2
    const-string v1, "live"

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->E:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->stop()V

    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->S()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->play()V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->F()V

    :goto_0
    const-string p0, "play():VideoPlayer.play"

    invoke-static {v0, p0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    if-ne v3, v2, :cond_5

    iget-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v3, :cond_5

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->doResume()V

    const-string p0, "play():AdPlayer.play"

    invoke-static {v0, p0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public E()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isSupport3X()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public F()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ap:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->v()V

    :cond_0
    return-void
.end method

.method public G()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a()V
    .locals 5

    .line 13
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "init"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 14
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e;

    new-instance v1, Lcom/mgtv/thirdsdk/playcore/c$1;

    invoke-direct {v1, p0}, Lcom/mgtv/thirdsdk/playcore/c$1;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-direct {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;-><init>(Lcom/mgtv/thirdsdk/playcore/d;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    .line 15
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16
    new-instance v2, Lcom/mgtv/thirdsdk/playcore/c$2;

    invoke-direct {v2, p0}, Lcom/mgtv/thirdsdk/playcore/c$2;-><init>(Lcom/mgtv/thirdsdk/playcore/c;)V

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setOrientationChangeListener(Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer$OnScreenOrientationChangeListener;)V

    .line 17
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setSupportChangeOrientation(Z)V

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v2

    iput-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->b:Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    .line 19
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    new-instance v2, Lcom/mgtv/task/m;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    .line 20
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e/g;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-direct {v0, v2, v3, v4}, Lcom/mgtv/thirdsdk/playcore/e/g;-><init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->h:Lcom/mgtv/thirdsdk/playcore/e/g;

    .line 21
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->h:Lcom/mgtv/thirdsdk/playcore/e/g;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->J:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/thirdsdk/playcore/c$b;)V

    .line 23
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e/f;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-direct {v0, v2, v3}, Lcom/mgtv/thirdsdk/playcore/e/f;-><init>(Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;Lcom/mgtv/thirdsdk/playcore/e;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    .line 24
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->J:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/c$b;)V

    .line 26
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e/h;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-direct {v0, v2, v3, v4}, Lcom/mgtv/thirdsdk/playcore/e/h;-><init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->i:Lcom/mgtv/thirdsdk/playcore/e/h;

    .line 27
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->J:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/h;->a(Lcom/mgtv/thirdsdk/playcore/c$b;)V

    .line 28
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e/d;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-direct {v0, v2, v3, v4}, Lcom/mgtv/thirdsdk/playcore/e/d;-><init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->j:Lcom/mgtv/thirdsdk/playcore/e/d;

    .line 29
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->J:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/d;->a(Lcom/mgtv/thirdsdk/playcore/c$b;)V

    .line 30
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e/e;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-direct {v0, v2, v3, v4}, Lcom/mgtv/thirdsdk/playcore/e/e;-><init>(Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->l:Lcom/mgtv/thirdsdk/playcore/e/e;

    .line 31
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->J:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/e;->a(Lcom/mgtv/thirdsdk/playcore/c$b;)V

    .line 32
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e/c;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-direct {v0, v2, v3, v4}, Lcom/mgtv/thirdsdk/playcore/e/c;-><init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->k:Lcom/mgtv/thirdsdk/playcore/e/c;

    .line 33
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->J:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Lcom/mgtv/thirdsdk/playcore/c$b;)V

    .line 34
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e/a;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-direct {v0, v2, v3, v4}, Lcom/mgtv/thirdsdk/playcore/e/a;-><init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->m:Lcom/mgtv/thirdsdk/playcore/e/a;

    .line 35
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->J:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/a;->a(Lcom/mgtv/thirdsdk/playcore/c$b;)V

    .line 36
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/e/b;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-direct {v0, v2, v3, v4}, Lcom/mgtv/thirdsdk/playcore/e/b;-><init>(Landroid/content/Context;Lcom/mgtv/thirdsdk/playcore/e;Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->n:Lcom/mgtv/thirdsdk/playcore/e/b;

    .line 37
    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->J:Lcom/mgtv/thirdsdk/playcore/c$b;

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/playcore/e/b;->a(Lcom/mgtv/thirdsdk/playcore/c$b;)V

    .line 38
    invoke-static {v1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Z)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/mgtv/thirdsdk/playcore/c;->a(Z)V

    .line 40
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 41
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->I()V

    return-void
.end method

.method public a(F)V
    .locals 3

    .line 208
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlaySpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 209
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput p1, v0, Lcom/mgtv/thirdsdk/playcore/e;->V:F

    .line 211
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setPlayBackSpeed(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    .line 94
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDefination:------>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 95
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-eqz v1, :cond_0

    .line 96
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "isVideoPrepare  changeDefination resetData  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->m()V

    .line 98
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    .line 99
    iput-boolean v2, v0, Lcom/mgtv/thirdsdk/playcore/e;->ai:Z

    .line 100
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Z)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->c(I)V

    .line 102
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setIsChangeDefinition(Z)V

    const/16 p1, 0x8

    .line 103
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->j(I)V

    goto/16 :goto_3

    .line 104
    :cond_0
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    move v0, v1

    .line 105
    :goto_0
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 106
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iget v3, v3, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;->definition:I

    if-ne p1, v3, :cond_2

    .line 108
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, p1, Lcom/mgtv/thirdsdk/playcore/e;->o:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    iput-object v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->n:Lcom/hunantv/imgo/net/entity/PlayerAuthRouterEntity;

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 110
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v0

    int-to-long v3, v0

    invoke-static {p1, v3, v4}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(Ljava/lang/String;J)V

    .line 111
    sget-object p1, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportChangeSourceAsync:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->supportChangeSourceAsync()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 112
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->supportChangeSourceAsync()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 113
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->openImgoSourceModule(Z)V

    const/4 p1, 0x4

    .line 114
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->j(I)V

    goto :goto_3

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->openImgoSourceModule(Z)V

    const/4 p1, 0x6

    .line 116
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->j(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->p:Landroid/app/Activity;

    .line 44
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->a:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public a(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/ssp/authbase/MgSspAccountCallback;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgtv/ssp/authbase/c;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    if-eqz p0, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/ssp/authbase/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgtv/ssp/c;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->h:Lcom/mgtv/thirdsdk/playcore/e/g;

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/g;->a(Lcom/mgtv/ssp/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/c$c;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->b:Lcom/mgtv/thirdsdk/playcore/c$c;

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdListener;)V

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AdStopListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->v:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->x:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/d;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->y:Lcom/mgtv/thirdsdk/playcore/d;

    return-void
.end method

.method public a(Lcom/mgtv/thirdsdk/playcore/f;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->z:Lcom/mgtv/thirdsdk/playcore/f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 75
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->t:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->s:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/e;->m()V

    :cond_0
    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->B:Z

    .line 80
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->C:Z

    .line 81
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz v1, :cond_1

    .line 82
    invoke-interface {v1}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoPreparing()V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setIsChangeDefinition(Z)V

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->V()V

    .line 86
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    .line 87
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h(I)V

    .line 88
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c(Z)V

    .line 89
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h()V

    .line 90
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->s()V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->G:J

    .line 92
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->k:Lcom/mgtv/thirdsdk/playcore/e/c;

    if-eqz p0, :cond_3

    .line 93
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/c;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 46
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayer:------>vid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 47
    new-instance v0, Lcom/hunantv/imgo/log/c/c$a;

    invoke-direct {v0}, Lcom/hunantv/imgo/log/c/c$a;-><init>()V

    .line 48
    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/log/c/c$a;->a(Z)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    const-string v1, "startPlayer"

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->c(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    .line 49
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->d(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    const-string v1, "vid"

    invoke-virtual {v0, v1, p1}, Lcom/hunantv/imgo/log/c/c$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/c/c$a;->e()Lcom/hunantv/imgo/log/c/c;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/hunantv/imgo/log/c/c;->d()V

    .line 51
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->r:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->s:Ljava/lang/String;

    .line 53
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p2, :cond_0

    .line 54
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "isVideoPrepare  startPlayer resetData  "

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/e;->m()V

    .line 56
    :cond_0
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->h:Lcom/mgtv/thirdsdk/playcore/e/g;

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/e/g;->a()V

    :cond_1
    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->B:Z

    .line 59
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->C:Z

    .line 60
    iput-boolean p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->I:Z

    .line 61
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz v0, :cond_3

    .line 62
    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoPreparing()V

    .line 63
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->isFullScreen()I

    move-result v0

    if-ltz v0, :cond_3

    .line 64
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, p2

    :goto_0
    iput-boolean v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->at:Z

    .line 65
    :cond_3
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->V()V

    .line 66
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setIsChangeDefinition(Z)V

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean p2, v0, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    .line 69
    iput-object p1, v0, Lcom/mgtv/thirdsdk/playcore/e;->i:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h(I)V

    .line 71
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->c(Z)V

    .line 72
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->s()V

    .line 73
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "pvs  startPlayer cg"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->P()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 117
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "setJumpBeforeOrEnd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 118
    new-instance v0, Lcom/hunantv/imgo/log/c/c$a;

    invoke-direct {v0}, Lcom/hunantv/imgo/log/c/c$a;-><init>()V

    .line 119
    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/log/c/c$a;->a(Z)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hunantv/imgo/log/c/c$a;->a(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->b(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->c(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hunantv/imgo/log/c/c$a;->d(Ljava/lang/String;)Lcom/hunantv/imgo/log/c/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hunantv/imgo/log/c/c$a;->e()Lcom/hunantv/imgo/log/c/c;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/hunantv/imgo/log/c/c;->d()V

    .line 122
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p0, :cond_0

    .line 123
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->ac:Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 101
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 102
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 8
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->E:Ljava/lang/String;

    .line 9
    const-string v0, "live"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->m:Lcom/mgtv/thirdsdk/playcore/e/a;

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/e/a;->a()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->u:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->s:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/e;->m()V

    :cond_0
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->B:Z

    .line 16
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->C:Z

    .line 17
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz p2, :cond_1

    .line 18
    invoke-interface {p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoPreparing()V

    .line 19
    :cond_1
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 20
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p2}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setIsChangeDefinition(Z)V

    .line 21
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setLiveMode(Z)V

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->V()V

    .line 23
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    .line 24
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h(I)V

    .line 25
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Z)V

    .line 26
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->Q()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 104
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMuteStatus----------->mute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 105
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    if-ne v0, v2, :cond_0

    .line 107
    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->doAdMute()V

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 110
    :try_start_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    if-ne v0, v2, :cond_2

    .line 113
    iget-object p1, p1, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/mgmi/ssp/PreRollVideoAd;->doAdunMute()V

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 116
    :try_start_1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setVolume(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 3

    .line 118
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 119
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    return p0
.end method

.method public c()I
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getRealDuration()I

    move-result p0

    return p0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->v:Z

    const-string v2, "getRealDuration service---------->realduration:"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget v4, v4, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->time:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 104
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget v0, v0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->time:I

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 105
    :goto_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v4, v1, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    if-eqz v4, :cond_2

    .line 106
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 107
    sget-object v1, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRealDuration player---------->realduration:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v4}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getRealDuration()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 108
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getRealDuration()I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 109
    :cond_2
    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v1, :cond_3

    .line 110
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget v2, v2, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->time:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 111
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget p0, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->time:I

    mul-int/lit16 v0, p0, 0x3e8

    :cond_3
    return v0
.end method

.method public c(I)V
    .locals 2

    .line 97
    sget-object p0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDefaultDefination--------->definition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 98
    const-string p0, "video_definition"

    invoke-static {p0, p1}, Lcom/hunantv/imgo/util/PreferencesUtil;->putInt(Ljava/lang/String;I)Z

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBufferStatus------>allowbuffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 114
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setBufferStatus(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 7

    .line 9
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "pause"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 10
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e;->b()V

    .line 12
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Player pause "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v3, :cond_6

    .line 14
    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 15
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/e;->k()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 16
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 17
    :cond_2
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-nez v3, :cond_3

    .line 18
    const-string v3, "Video pause"

    invoke-static {v0, v3, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1

    .line 19
    :cond_3
    const-string v3, "Live pause"

    invoke-static {v0, v3, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 20
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Player pause 222 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v4, v4, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    if-ne v4, v2, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->u()V

    .line 23
    :cond_5
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pause()V

    .line 24
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, v3, Lcom/mgtv/thirdsdk/playcore/e;->ap:Z

    .line 25
    :cond_6
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v4, v3, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v4, :cond_9

    iget-boolean v4, v3, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-nez v4, :cond_9

    .line 26
    iget-boolean v4, v3, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    .line 27
    invoke-virtual {v3, v4}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 28
    :cond_7
    const-string v3, "ad pause"

    invoke-static {v0, v3, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Player pause 333 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    if-ne v3, v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v5

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->doPause()V

    :cond_9
    return-void
.end method

.method public d(I)V
    .locals 3

    .line 31
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBookmark----------->bookmark:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 32
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-nez v0, :cond_0

    int-to-long v0, p1

    .line 33
    invoke-static {v0, v1}, Lcom/mgtv/thirdsdk/playcore/utils/c;->a(J)V

    .line 34
    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/utils/c;->k()V

    .line 35
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->ax:I

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 4

    .line 36
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityStart------>canplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasStart:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->D()V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->d()V

    .line 40
    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->I:Z

    .line 41
    :goto_0
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->h()V

    .line 42
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-eqz p1, :cond_1

    .line 43
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0, v2}, Lcom/mgmi/ssp/PreRollVideoAd;->noticeActivityStatus(Z)V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 5

    .line 2
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "stop"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 3
    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->I:Z

    .line 4
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlaying()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e;->b()V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 9
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 11
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->ah:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->exPause()V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->pauseLoadData()V

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->hideRenderView()V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 15
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    if-ne v3, v2, :cond_4

    .line 16
    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1}, Lcom/mgmi/ssp/PreRollVideoAd;->doPause()V

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 18
    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->A:Z

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v1, :cond_6

    .line 20
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "isVideoPrepare  stop resetData  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e;->m()V

    .line 22
    :cond_6
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->h:Lcom/mgtv/thirdsdk/playcore/e/g;

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e/g;->a()V

    .line 24
    :cond_7
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    if-eqz v1, :cond_8

    .line 25
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e/f;->c()V

    :cond_8
    if-nez v0, :cond_9

    .line 26
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz p0, :cond_9

    .line 27
    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoStopped()V

    :cond_9
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 28
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAspectRatio---------->aspectRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 29
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setAspectRatio(I)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean p1, v0, Lcom/mgtv/thirdsdk/playcore/e;->at:Z

    .line 32
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/mgmi/ssp/PreRollVideoAd;->onScreenRotate()V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setLandScape()V

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setPortrait()V

    :cond_2
    :goto_0
    return-void
.end method

.method public f()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aI:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->I:Z

    .line 4
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "play"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 5
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->W:Z

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e;->c()V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->aE:Z

    if-nez v3, :cond_2

    const/16 p0, 0xe

    .line 10
    invoke-virtual {v1, p0}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    return-void

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->play()V

    .line 12
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->F()V

    .line 13
    const-string p0, "play():VideoPlayer.play"

    invoke-static {v0, p0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 14
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    if-ne v3, v2, :cond_4

    .line 15
    iget-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    .line 16
    invoke-virtual {v1, v3}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 17
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->doResume()V

    .line 18
    const-string p0, "play():AdPlayer.play"

    invoke-static {v0, p0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/mgtv/thirdsdk/playcore/d/a;

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->K:Lcom/mgtv/thirdsdk/playcore/d/a$b;

    invoke-direct {v0, v1}, Lcom/mgtv/thirdsdk/playcore/d/a;-><init>(Lcom/mgtv/thirdsdk/playcore/d/a$b;)V

    iput-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->H:Lcom/mgtv/thirdsdk/playcore/d/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(I)Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/d/a;->a(Lcom/hunantv/imgo/net/entity/PlayerSubtitlesBean$TitleData;)V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean p1, v0, Lcom/mgtv/thirdsdk/playcore/e;->at:Z

    .line 20
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setLandScape()V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setPortrait()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()Lcom/mgtv/thirdsdk/playcore/e;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    return-object p0
.end method

.method public g(I)V
    .locals 1

    .line 4
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->az:Z

    .line 6
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/mgmi/ssp/PreRollVideoAd;->noticePlayViewMode(I)V

    :cond_1
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/playcore/c;->F:Z

    return-void
.end method

.method public h()I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoWidth play:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getVideoHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 5
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getVideoHeight()I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getAdLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoWidth ad:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getAdLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 8
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getAdLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_1
    return v1
.end method

.method public h(I)V
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->w:Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    if-eqz p0, :cond_0

    .line 12
    invoke-interface {p0, p1}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onBuffering(I)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setSupportChangeOrientation(Z)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoWidth play:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getVideoWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getVideoWidth()I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getAdLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoWidth ad:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getAdLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 9
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getAdLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_1
    return v1
.end method

.method public i(Z)V
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->setNeedChangeScreenMode(Z)V

    :cond_0
    return-void
.end method

.method public j()I
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    if-eqz v1, :cond_0

    .line 17
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getRealDuration()I

    move-result p0

    return p0

    .line 19
    :cond_0
    iget-boolean v1, v0, Lcom/mgtv/thirdsdk/playcore/e;->X:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 20
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 21
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealDuration player---------->realduration:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getRealDuration()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 22
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getRealDuration()I

    move-result p0

    return p0

    .line 23
    :cond_1
    iget-object v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    if-eqz v0, :cond_2

    .line 24
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealDuration service---------->realduration:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v3, v3, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget v3, v3, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->time:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 25
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->p:Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;

    iget p0, p0, Lcom/hunantv/imgo/net/entity/PlayerAuthDataEntity;->time:I

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public j(Z)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/playcore/e/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public k()I
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public k(Z)V
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->lockScreen()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->unlockScreen()V

    :cond_1
    :goto_0
    return-void
.end method

.method public l()I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public m()V
    .locals 5

    .line 11
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->destroy()V

    .line 13
    :cond_0
    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "release start"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 14
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/playcore/c;->ae()V

    .line 15
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->j()V

    .line 16
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->k()V

    .line 17
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 18
    const-string v1, "release mMgtvPlayerView"

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 19
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->destory()V

    .line 20
    iput-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v1, :cond_4

    .line 22
    const-string v1, "release mPlayerData"

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 23
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v1, v3}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/g;)V

    .line 25
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->c:Lcom/mgtv/task/m;

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->d:Lcom/mgtv/task/g;

    .line 27
    iput-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->e:Lcom/mgtv/task/g;

    .line 28
    iput-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->f:Lcom/mgtv/task/g;

    .line 29
    iput-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->g:Lcom/mgtv/task/g;

    .line 30
    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {v1}, Lcom/mgmi/ssp/PreRollVideoAd;->finish()V

    .line 32
    const-string v1, "release PreRollVideoAd"

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 33
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-object v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->a:Landroid/app/Activity;

    .line 35
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "isVideoPrepare  release resetData  "

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e;->m()V

    .line 37
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/e;->l()V

    .line 38
    :cond_4
    iput-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->p:Landroid/app/Activity;

    .line 39
    iput-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->h:Lcom/mgtv/thirdsdk/playcore/e/g;

    .line 40
    iput-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->l:Lcom/mgtv/thirdsdk/playcore/e/e;

    .line 41
    iput-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->i:Lcom/mgtv/thirdsdk/playcore/e/h;

    .line 42
    iput-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->j:Lcom/mgtv/thirdsdk/playcore/e/d;

    .line 43
    iput-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->k:Lcom/mgtv/thirdsdk/playcore/e/c;

    .line 44
    iput-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->g:Lcom/mgtv/thirdsdk/playcore/e/f;

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->r:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->s:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v1, :cond_5

    const/16 v4, 0xc

    .line 48
    invoke-virtual {v1, v4}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->a:Lcom/mgtv/thirdsdk/playcore/c$a;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->o:Landroid/content/Context;

    if-eqz v1, :cond_6

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Lcom/mgtv/thirdsdk/playcore/c;->a:Lcom/mgtv/thirdsdk/playcore/c$a;

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 51
    iput-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c;->a:Lcom/mgtv/thirdsdk/playcore/c$a;

    .line 52
    :cond_6
    const-string p0, "release finish"

    invoke-static {v0, p0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public n()V
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "onActivityStop"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->d()V

    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->I:Z

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->i()V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgmi/ssp/PreRollVideoAd;->noticeActivityStatus(Z)V

    :cond_0
    return-void
.end method

.method public o()I
    .locals 4

    sget-object p0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultDefinition---------->definition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "video_definition"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public p()V
    .locals 2

    sget-object p0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v0, "adClick"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v0, v0, Lcom/mgtv/thirdsdk/playcore/e;->aI:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->I:Z

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    const-string v1, "start"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->ae:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    if-nez v3, :cond_1

    iget-object v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mgmi/ssp/PreRollVideoAd;->doResume()V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, p0, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    const-string p0, "start():AdPlayer.play"

    invoke-static {v0, p0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    const/16 v4, 0x8

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mgtv/thirdsdk/playcore/e;->a([I)V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v3, v1, Lcom/mgtv/thirdsdk/playcore/e;->aE:Z

    if-nez v3, :cond_2

    const/16 p0, 0xe

    invoke-virtual {v1, p0}, Lcom/mgtv/thirdsdk/playcore/e;->b(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->play()V

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iput-boolean v2, v1, Lcom/mgtv/thirdsdk/playcore/e;->ao:Z

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->F()V

    const-string p0, "start():VideoPlayer.play"

    invoke-static {v0, p0, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public r()I
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getTotalBuffering()I

    move-result v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result p0

    sub-int/2addr v0, p0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public s()I
    .locals 2

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getTotalBuffering()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getCurrentPosition()I

    move-result v0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->getTotalBuffering()I

    move-result p0

    div-int/2addr v0, p0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public t()I
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->af:I

    return p0
.end method

.method public u()F
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlaySpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->V:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->V:F

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public v()Z
    .locals 3

    sget-object v0, Lcom/mgtv/thirdsdk/playcore/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocalPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean v2, v2, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->ag:Z

    return p0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;->isFullScreen()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public x()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->u:Ljava/util/Map;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public y()Z
    .locals 3

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v1, v1, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->f:Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->q:Lcom/mgtv/thirdsdk/playcore/e;

    iget v0, p0, Lcom/mgtv/thirdsdk/playcore/e;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->as:Z

    xor-int/2addr p0, v1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public z()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c;->e:Lcom/mgtv/thirdsdk/playcore/view/ScreenOrientationContainer;

    return-object p0
.end method
