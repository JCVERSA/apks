.class Lapp/fast/ssh/HomeFragment$15$1;
.super Landroid/os/CountDownTimer;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/HomeFragment$15;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment$15;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$15$1;->this$1:Lapp/fast/ssh/HomeFragment$15;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 10

    .prologue
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "\u2e8c"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2800()Ljava/lang/ref/WeakReference;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2800()Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v3

    aput-object v4, v6, v1

    const/4 v1, 0x2

    aput-object v0, v6, v1

    const-string/jumbo v0, "\u2e8d"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$15$1;->this$1:Lapp/fast/ssh/HomeFragment$15;

    iget-object v0, v0, Lapp/fast/ssh/HomeFragment$15;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$15$1;->this$1:Lapp/fast/ssh/HomeFragment$15;

    iget-object v0, v0, Lapp/fast/ssh/HomeFragment$15;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/32 v0, 0x2bf20

    cmp-long p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$15$1;->this$1:Lapp/fast/ssh/HomeFragment$15;

    iget-object p1, p1, Lapp/fast/ssh/HomeFragment$15;->this$0:Lapp/fast/ssh/HomeFragment;

    iget-object p1, p1, Lapp/fast/ssh/HomeFragment;->addTimeDialog2:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$15$1;->this$1:Lapp/fast/ssh/HomeFragment$15;

    iget-object p1, p1, Lapp/fast/ssh/HomeFragment$15;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$3000(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/RewardedAdSyncController;

    move-result-object p1

    invoke-virtual {p1}, Lapp/fast/ssh/RewardedAdSyncController;->hasValidCachedAd()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$15$1;->this$1:Lapp/fast/ssh/HomeFragment$15;

    iget-object p1, p1, Lapp/fast/ssh/HomeFragment$15;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$3000(Lapp/fast/ssh/HomeFragment;)Lapp/fast/ssh/RewardedAdSyncController;

    move-result-object p1

    iget-object p2, p0, Lapp/fast/ssh/HomeFragment$15$1;->this$1:Lapp/fast/ssh/HomeFragment$15;

    iget-object p2, p2, Lapp/fast/ssh/HomeFragment$15;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p2}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$15$1;->this$1:Lapp/fast/ssh/HomeFragment$15;

    iget-object v0, v0, Lapp/fast/ssh/HomeFragment$15;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {p1, p2, v0}, Lapp/fast/ssh/RewardedAdSyncController;->prefetch(Landroid/app/Activity;Lapp/fast/ssh/RewardedAdSyncController$Ui;)V

    :cond_1
    return-void
.end method
