.class public final Lqgj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Ligj;

.field public final d:Landroid/content/BroadcastReceiver;

.field public final e:Lkgj;

.field public f:Lggj;

.field public g:Lsgj;

.field public h:Lhvg;

.field public i:Z

.field public final j:Lwhj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lwhj;Lhvg;Lsgj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lqgj;->a:Landroid/content/Context;

    iput-object p2, p0, Lqgj;->j:Lwhj;

    iput-object p3, p0, Lqgj;->h:Lhvg;

    iput-object p4, p0, Lqgj;->g:Lsgj;

    invoke-static {}, Lkfh;->U()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Landroid/os/Handler;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lqgj;->b:Landroid/os/Handler;

    new-instance p2, Ligj;

    invoke-direct {p2, p0, p4}, Ligj;-><init>(Lqgj;Logj;)V

    iput-object p2, p0, Lqgj;->c:Ligj;

    new-instance p2, Lmgj;

    invoke-direct {p2, p0, p4}, Lmgj;-><init>(Lqgj;Logj;)V

    iput-object p2, p0, Lqgj;->d:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lggj;->a()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p4, Lkgj;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p4, p0, p3, p1, p2}, Lkgj;-><init>(Lqgj;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    iput-object p4, p0, Lqgj;->e:Lkgj;

    return-void
.end method

.method public static bridge synthetic a(Lqgj;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lqgj;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lqgj;)Lhvg;
    .locals 0

    iget-object p0, p0, Lqgj;->h:Lhvg;

    return-object p0
.end method

.method public static bridge synthetic d(Lqgj;)Lsgj;
    .locals 0

    iget-object p0, p0, Lqgj;->g:Lsgj;

    return-object p0
.end method

.method public static bridge synthetic e(Lqgj;Lsgj;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lqgj;->g:Lsgj;

    return-void
.end method

.method public static bridge synthetic f(Lqgj;Lggj;)V
    .locals 0

    invoke-virtual {p0, p1}, Lqgj;->j(Lggj;)V

    return-void
.end method


# virtual methods
.method public final c()Lggj;
    .locals 5

    iget-boolean v0, p0, Lqgj;->i:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lqgj;->f:Lggj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqgj;->i:Z

    iget-object v0, p0, Lqgj;->e:Lkgj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkgj;->a()V

    :cond_1
    sget v0, Lkfh;->a:I

    iget-object v0, p0, Lqgj;->c:Ligj;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lqgj;->a:Landroid/content/Context;

    iget-object v2, p0, Lqgj;->b:Landroid/os/Handler;

    invoke-static {v1}, Lfnf;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_2
    iget-object v0, p0, Lqgj;->a:Landroid/content/Context;

    iget-object v1, p0, Lqgj;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lqgj;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lqgj;->h:Lhvg;

    iget-object v3, p0, Lqgj;->g:Lsgj;

    invoke-static {v0, v1, v2, v3}, Lggj;->d(Landroid/content/Context;Landroid/content/Intent;Lhvg;Lsgj;)Lggj;

    move-result-object v0

    iput-object v0, p0, Lqgj;->f:Lggj;

    return-object v0
.end method

.method public final g(Lhvg;)V
    .locals 2

    iput-object p1, p0, Lqgj;->h:Lhvg;

    iget-object v0, p0, Lqgj;->g:Lsgj;

    iget-object v1, p0, Lqgj;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lggj;->c(Landroid/content/Context;Lhvg;Lsgj;)Lggj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqgj;->j(Lggj;)V

    return-void
.end method

.method public final h(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    iget-object v0, p0, Lqgj;->g:Lsgj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lsgj;->a:Landroid/media/AudioDeviceInfo;

    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Lsgj;

    invoke-direct {v1, p1}, Lsgj;-><init>(Landroid/media/AudioDeviceInfo;)V

    :cond_2
    iput-object v1, p0, Lqgj;->g:Lsgj;

    iget-object p1, p0, Lqgj;->a:Landroid/content/Context;

    iget-object v0, p0, Lqgj;->h:Lhvg;

    invoke-static {p1, v0, v1}, Lggj;->c(Landroid/content/Context;Lhvg;Lsgj;)Lggj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqgj;->j(Lggj;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-boolean v0, p0, Lqgj;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lqgj;->f:Lggj;

    sget v0, Lkfh;->a:I

    iget-object v0, p0, Lqgj;->c:Ligj;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lqgj;->a:Landroid/content/Context;

    invoke-static {v1}, Lfnf;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :cond_1
    iget-object v0, p0, Lqgj;->a:Landroid/content/Context;

    iget-object v1, p0, Lqgj;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lqgj;->e:Lkgj;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lkgj;->b()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqgj;->i:Z

    return-void
.end method

.method public final j(Lggj;)V
    .locals 1

    iget-boolean v0, p0, Lqgj;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqgj;->f:Lggj;

    invoke-virtual {p1, v0}, Lggj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lqgj;->f:Lggj;

    iget-object p0, p0, Lqgj;->j:Lwhj;

    iget-object p0, p0, Lwhj;->a:Lxij;

    invoke-virtual {p0, p1}, Lxij;->y(Lggj;)V

    :cond_0
    return-void
.end method
