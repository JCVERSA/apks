.class Lapp/fast/ssh/dialog/AddTimeDialog$1;
.super Ljava/lang/Object;
.source "AddTimeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/dialog/AddTimeDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/dialog/AddTimeDialog;


# direct methods
.method constructor <init>(Lapp/fast/ssh/dialog/AddTimeDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$1;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Lapp/fast/ssh/dialog/AddTimeDialog;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget p1, p1, Lapp/fast/ssh/TimerConf;->cool_min:I

    mul-int/lit8 p1, p1, 0x3c

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sget-object p1, Lapp/fast/ssh/dialog/AddTimeDialog;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget p1, p1, Lapp/fast/ssh/TimerConf;->per_hours:I

    int-to-long v4, p1

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    sget-wide v6, Lapp/fast/ssh/dialog/AddTimeDialog;->LAST_ACCESS_TOPUP_MILLIS:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    sget-wide v7, Lapp/fast/ssh/dialog/AddTimeDialog;->LAST_SESSION_MILLIS:J

    cmp-long p1, v7, v4

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-wide v4, Lapp/fast/ssh/dialog/AddTimeDialog;->LAST_ACCESS_TOPUP_MILLIS:J

    sub-long/2addr v0, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$1;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$000(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$1;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$000(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/widget/Button;

    move-result-object p1

    sget-object v0, Lapp/fast/ssh/dialog/AddTimeDialog;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget-object v0, v0, Lapp/fast/ssh/TimerConf;->button_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    sub-long/2addr v2, v0

    iget-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$1;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$100(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$1;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$100(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    iget-object p1, p0, Lapp/fast/ssh/dialog/AddTimeDialog$1;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    new-instance v1, Lapp/fast/ssh/dialog/AddTimeDialog$1$1;

    const-wide/16 v5, 0x3e8

    move-wide v3, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lapp/fast/ssh/dialog/AddTimeDialog$1$1;-><init>(Lapp/fast/ssh/dialog/AddTimeDialog$1;JJ)V

    invoke-static {p1, v1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$102(Lapp/fast/ssh/dialog/AddTimeDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object p1, v2, Lapp/fast/ssh/dialog/AddTimeDialog$1;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$100(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_3
    :goto_0
    move-object v2, p0

    iget-object p1, v2, Lapp/fast/ssh/dialog/AddTimeDialog$1;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$000(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, v2, Lapp/fast/ssh/dialog/AddTimeDialog$1;->this$0:Lapp/fast/ssh/dialog/AddTimeDialog;

    invoke-static {p1}, Lapp/fast/ssh/dialog/AddTimeDialog;->access$000(Lapp/fast/ssh/dialog/AddTimeDialog;)Landroid/widget/Button;

    move-result-object p1

    sget-object v0, Lapp/fast/ssh/dialog/AddTimeDialog;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget-object v0, v0, Lapp/fast/ssh/TimerConf;->button_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
