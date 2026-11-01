.class Lapp/fast/ssh/HomeFragment$15;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment;->onStartCountdown(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/HomeFragment;

.field final synthetic val$millis:J

.field final synthetic val$subscription:Lapp/fast/ssh/Subscription;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment;JLapp/fast/ssh/Subscription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$15;->this$0:Lapp/fast/ssh/HomeFragment;

    iput-wide p2, p0, Lapp/fast/ssh/HomeFragment$15;->val$millis:J

    iput-object p4, p0, Lapp/fast/ssh/HomeFragment$15;->val$subscription:Lapp/fast/ssh/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2602(Z)Z

    new-instance v1, Lapp/fast/ssh/HomeFragment$15$1;

    iget-wide v3, p0, Lapp/fast/ssh/HomeFragment$15;->val$millis:J

    const-wide/16 v5, 0x3e8

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lapp/fast/ssh/HomeFragment$15$1;-><init>(Lapp/fast/ssh/HomeFragment$15;JJ)V

    invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$2502(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    const/4 v1, 0x1

    invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$2602(Z)Z

    iget-object v1, v2, Lapp/fast/ssh/HomeFragment$15;->val$subscription:Lapp/fast/ssh/Subscription;

    invoke-virtual {v1}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lapp/fast/ssh/HomeFragment$15;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$2700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
