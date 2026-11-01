.class public Lru/zdevs/zarchiver/activity/ExtractDlg;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Ljava/lang/String;

.field public final c:Lru/zdevs/zarchiver/activity/ExtractDlg$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lru/zdevs/zarchiver/activity/ExtractDlg$b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lru/zdevs/zarchiver/activity/ExtractDlg$b;-><init>(Lru/zdevs/zarchiver/activity/ExtractDlg;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lru/zdevs/zarchiver/activity/ExtractDlg;->c:Lru/zdevs/zarchiver/activity/ExtractDlg$b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final finishAndRemoveTask()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lru/zdevs/zarchiver/activity/ExtractDlg;->finishAndRemoveTask()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lru/zdevs/zarchiver/activity/ExtractDlg$a;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lru/zdevs/zarchiver/activity/ExtractDlg$a;-><init>(Lru/zdevs/zarchiver/activity/ExtractDlg;Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lw0/c;->h(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/ExtractDlg;->a:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lru/zdevs/zarchiver/activity/ExtractDlg;->a:Landroid/os/Handler;

    .line 13
    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lru/zdevs/zarchiver/activity/ExtractDlg;->c:Lru/zdevs/zarchiver/activity/ExtractDlg$b;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method
