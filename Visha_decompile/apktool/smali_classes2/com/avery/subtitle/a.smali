.class public Lcom/avery/subtitle/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avery/subtitle/b;


# instance fields
.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;

.field public d:Ljava/util/List;

.field public e:Lcom/avery/subtitle/UIRenderTask;

.field public f:Lcom/transsion/playercommon/player/b;

.field public final g:Ln2a;

.field public h:Lcom/avery/subtitle/b$b;

.field public i:Lcom/avery/subtitle/b$a;

.field public j:J

.field public k:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/avery/subtitle/a;->k:F

    new-instance v0, Ln2a;

    invoke-direct {v0}, Ln2a;-><init>()V

    iput-object v0, p0, Lcom/avery/subtitle/a;->g:Ln2a;

    return-void
.end method

.method public static synthetic a(Lcom/avery/subtitle/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/a;->d:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/avery/subtitle/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/a;->d:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic c(Lcom/avery/subtitle/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->l()V

    return-void
.end method

.method public static synthetic d(Lcom/avery/subtitle/a;)Ln2a;
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/a;->g:Ln2a;

    return-object p0
.end method

.method public static synthetic e(Lcom/avery/subtitle/a;)Lcom/transsion/playercommon/player/b;
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/a;->f:Lcom/transsion/playercommon/player/b;

    return-object p0
.end method

.method public static synthetic f(Lcom/avery/subtitle/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/avery/subtitle/a;->j:J

    return-wide v0
.end method

.method public static synthetic g(Lcom/avery/subtitle/a;Lm2a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/avery/subtitle/a;->m(Lm2a;)V

    return-void
.end method

.method public static synthetic h(Lcom/avery/subtitle/a;)F
    .locals 0

    iget p0, p0, Lcom/avery/subtitle/a;->k:F

    return p0
.end method

.method public static synthetic i(Lcom/avery/subtitle/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/avery/subtitle/a;->c:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public bindToMediaPlayer(Lcom/transsion/playercommon/player/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/a;->f:Lcom/transsion/playercommon/player/b;

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "DefaultSubtitleEngine"

    const-string v1, "destroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avery/subtitle/a;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/avery/subtitle/a;->e:Lcom/avery/subtitle/UIRenderTask;

    return-void
.end method

.method public final j()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SubtitleFindThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avery/subtitle/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/avery/subtitle/a;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/avery/subtitle/a$b;

    invoke-direct {v2, p0}, Lcom/avery/subtitle/a$b;-><init>(Lcom/avery/subtitle/a;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/avery/subtitle/a;->c:Landroid/os/Handler;

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->reset()V

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->j()V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/avery/subtitle/a;->h:Lcom/avery/subtitle/b$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/avery/subtitle/a;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Lcom/avery/subtitle/b$b;->onSubtitlePrepared(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final m(Lm2a;)V
    .locals 2

    iget-object v0, p0, Lcom/avery/subtitle/a;->e:Lcom/avery/subtitle/UIRenderTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avery/subtitle/UIRenderTask;

    iget-object v1, p0, Lcom/avery/subtitle/a;->i:Lcom/avery/subtitle/b$a;

    invoke-direct {v0, v1}, Lcom/avery/subtitle/UIRenderTask;-><init>(Lcom/avery/subtitle/b$a;)V

    iput-object v0, p0, Lcom/avery/subtitle/a;->e:Lcom/avery/subtitle/UIRenderTask;

    :cond_0
    iget-object p0, p0, Lcom/avery/subtitle/a;->e:Lcom/avery/subtitle/UIRenderTask;

    invoke-virtual {p0, p1}, Lcom/avery/subtitle/UIRenderTask;->execute(Lm2a;)V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/avery/subtitle/a;->b:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/avery/subtitle/a;->b:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/avery/subtitle/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/avery/subtitle/a;->c:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object p0, p0, Lcom/avery/subtitle/a;->c:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x888

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->n()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avery/subtitle/a;->d:Ljava/util/List;

    iput-object v0, p0, Lcom/avery/subtitle/a;->e:Lcom/avery/subtitle/UIRenderTask;

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->start()V

    return-void
.end method

.method public setOnSubtitleChangeListener(Lcom/avery/subtitle/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/a;->i:Lcom/avery/subtitle/b$a;

    return-void
.end method

.method public setOnSubtitlePreparedListener(Lcom/avery/subtitle/b$b;)V
    .locals 0

    iput-object p1, p0, Lcom/avery/subtitle/a;->h:Lcom/avery/subtitle/b$b;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/avery/subtitle/a;->k:F

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->start()V

    return-void
.end method

.method public setSubtitleDelayMs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/avery/subtitle/a;->j:J

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->start()V

    return-void
.end method

.method public setSubtitlePath(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->k()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DefaultSubtitleEngine"

    if-eqz v0, :cond_0

    const-string p0, "loadSubtitleFromRemote: path is null."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/avery/subtitle/a;->g:Ln2a;

    invoke-virtual {v0, p1}, Ln2a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/avery/subtitle/a;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "from cache."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/avery/subtitle/a;->l()V

    return-void

    :cond_1
    new-instance v0, Lcom/avery/subtitle/a$a;

    invoke-direct {v0, p0, p1}, Lcom/avery/subtitle/a$a;-><init>(Lcom/avery/subtitle/a;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/avery/subtitle/SubtitleLoader;->h(Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/avery/subtitle/a;->f:Lcom/transsion/playercommon/player/b;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MediaPlayer is not bind, You must bind MediaPlayer to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/avery/subtitle/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " before start() method be called, you can do this by call bindToMediaPlayer(MediaPlayer mediaPlayer) method."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultSubtitleEngine"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/transsion/playercommon/player/b;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/avery/subtitle/a;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lv4a;->a(JLjava/util/List;)Lm2a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avery/subtitle/a;->m(Lm2a;)V

    iget-object v0, p0, Lcom/avery/subtitle/a;->c:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/16 v1, 0x888

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/avery/subtitle/a;->c:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object p0, p0, Lcom/avery/subtitle/a;->c:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x888

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
