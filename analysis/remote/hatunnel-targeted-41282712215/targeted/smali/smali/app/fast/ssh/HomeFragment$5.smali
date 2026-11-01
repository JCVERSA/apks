.class Lapp/fast/ssh/HomeFragment$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/HomeFragment;

.field final synthetic val$message_text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$5;->this$0:Lapp/fast/ssh/HomeFragment;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment$5;->val$message_text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 12

    .prologue
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$5;->val$message_text:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lapp/fast/ssh/HomeFragment;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget-object v1, v1, Lapp/fast/ssh/TimerConf;->message_text:Ljava/lang/String;

    sget-object v2, Lapp/fast/ssh/HomeFragment;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget v2, v2, Lapp/fast/ssh/TimerConf;->max_hours:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string/jumbo v2, "\u2ead"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$5;->this$0:Lapp/fast/ssh/HomeFragment;

    iget-object p1, p1, Lapp/fast/ssh/HomeFragment;->btnWatchAd:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$5;->this$0:Lapp/fast/ssh/HomeFragment;

    iget-object p1, p1, Lapp/fast/ssh/HomeFragment;->btnWatchAd:Landroid/widget/Button;

    sget-object v0, Lapp/fast/ssh/HomeFragment;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget-object v0, v0, Lapp/fast/ssh/TimerConf;->button_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object p1, Lapp/fast/ssh/HomeFragment;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget p1, p1, Lapp/fast/ssh/TimerConf;->cool_min:I

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v4, p1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sget-object p1, Lapp/fast/ssh/HomeFragment;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget p1, p1, Lapp/fast/ssh/TimerConf;->per_hours:I

    int-to-long v6, p1

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    sget-wide v8, Lapp/fast/ssh/HomeFragment;->LAST_ACCESS_TOPUP_MILLIS:J

    const-wide/16 v10, 0x0

    cmp-long p1, v8, v10

    if-eqz p1, :cond_3

    sget-wide v8, Lapp/fast/ssh/HomeFragment;->LAST_SESSION_MILLIS:J

    cmp-long p1, v8, v6

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v6, Lapp/fast/ssh/HomeFragment;->LAST_ACCESS_TOPUP_MILLIS:J

    sub-long/2addr v2, v6

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$5;->this$0:Lapp/fast/ssh/HomeFragment;

    iget-object p1, p1, Lapp/fast/ssh/HomeFragment;->btnWatchAd:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    sub-long/2addr v4, v2

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$5;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$1200(Lapp/fast/ssh/HomeFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$5;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$1200(Lapp/fast/ssh/HomeFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    iget-object p1, p0, Lapp/fast/ssh/HomeFragment$5;->this$0:Lapp/fast/ssh/HomeFragment;

    new-instance v2, Lapp/fast/ssh/HomeFragment$5$1;

    const-wide/16 v6, 0x3e8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lapp/fast/ssh/HomeFragment$5$1;-><init>(Lapp/fast/ssh/HomeFragment$5;JJ)V

    invoke-static {p1, v2}, Lapp/fast/ssh/HomeFragment;->access$1202(Lapp/fast/ssh/HomeFragment;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object p1, v3, Lapp/fast/ssh/HomeFragment$5;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {p1}, Lapp/fast/ssh/HomeFragment;->access$1200(Lapp/fast/ssh/HomeFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_3
    :goto_0
    move-object v3, p0

    iget-object p1, v3, Lapp/fast/ssh/HomeFragment$5;->this$0:Lapp/fast/ssh/HomeFragment;

    iget-object p1, p1, Lapp/fast/ssh/HomeFragment;->btnWatchAd:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
