.class Lcom/transsion/audio/service/MusicService$1$1;
.super Lcom/transsion/arch/threads/TaskExecutor$Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/service/MusicService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/arch/threads/TaskExecutor$Task<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/audio/service/MusicService$1;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/service/MusicService$1;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/service/MusicService$1$1;->this$1:Lcom/transsion/audio/service/MusicService$1;

    iput-object p2, p0, Lcom/transsion/audio/service/MusicService$1$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/audio/service/MusicService$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/transsion/arch/threads/TaskExecutor$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBackground()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/audio/service/MusicService$1$1;->onBackground()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Ljava/lang/Void;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/transsion/audio/service/MusicService$1$1;->val$action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$1$1;->this$1:Lcom/transsion/audio/service/MusicService$1;

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$1;->a:Lcom/transsion/audio/service/MusicService;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 4
    sput-boolean p0, Lcom/transsion/playercommon/core/MainApp;->q:Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/service/MusicService$1$1;->onResult(Ljava/lang/Void;)V

    return-void
.end method

.method public onResult(Ljava/lang/Void;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/transsion/audio/service/MusicService$1$1;->val$action:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/transsion/audio/service/MusicService$1$1;->val$action:Ljava/lang/String;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/transsion/playercommon/core/MainApp;->q:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/service/MusicService$1$1;->this$1:Lcom/transsion/audio/service/MusicService$1;

    iget-object p1, p1, Lcom/transsion/audio/service/MusicService$1;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p1}, Lcom/transsion/audio/service/MusicService;->l(Lcom/transsion/audio/service/MusicService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/transsion/audio/player/MusicPlayManager;->s0()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/service/MusicService$1$1;->this$1:Lcom/transsion/audio/service/MusicService$1;

    iget-object p1, p1, Lcom/transsion/audio/service/MusicService$1;->a:Lcom/transsion/audio/service/MusicService;

    .line 5
    invoke-static {p1}, Lcom/transsion/audio/service/MusicService;->o(Lcom/transsion/audio/service/MusicService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/transsion/audio/service/MusicService$1$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/audio/activities/LockScreenActivity;->Q0(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 7
    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
