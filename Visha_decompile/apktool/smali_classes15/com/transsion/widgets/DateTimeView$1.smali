.class Lcom/transsion/widgets/DateTimeView$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/DateTimeView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/DateTimeView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgets/DateTimeView$1;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/DateTimeView$1;->lambda$onReceive$1(Ljava/util/Locale;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/widgets/DateTimeView$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/DateTimeView$1;->lambda$onReceive$2()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/widgets/DateTimeView$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/widgets/DateTimeView$1;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/widgets/DateTimeView;->e(Lcom/transsion/widgets/DateTimeView;Ljava/util/Calendar;)V

    iget-object p1, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-static {p1}, Lcom/transsion/widgets/DateTimeView;->c(Lcom/transsion/widgets/DateTimeView;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-static {p1}, Lcom/transsion/widgets/DateTimeView;->c(Lcom/transsion/widgets/DateTimeView;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-static {p0}, Lcom/transsion/widgets/DateTimeView;->b(Lcom/transsion/widgets/DateTimeView;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onReceive$1(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-static {v0}, Lcom/transsion/widgets/DateTimeView;->d(Lcom/transsion/widgets/DateTimeView;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-static {v0, p1}, Lcom/transsion/widgets/DateTimeView;->g(Lcom/transsion/widgets/DateTimeView;Ljava/util/Locale;)V

    iget-object p0, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    const-string p1, ""

    invoke-static {p0, p1}, Lcom/transsion/widgets/DateTimeView;->f(Lcom/transsion/widgets/DateTimeView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onReceive$2()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-virtual {p0}, Lcom/transsion/widgets/DateTimeView;->updateClock()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/transsion/widgets/d;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgets/d;-><init>(Lcom/transsion/widgets/DateTimeView$1;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/widgets/DateTimeView$1;->this$0:Lcom/transsion/widgets/DateTimeView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v0, Lcom/transsion/widgets/e;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgets/e;-><init>(Lcom/transsion/widgets/DateTimeView$1;Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    new-instance p2, Lcom/transsion/widgets/f;

    invoke-direct {p2, p0}, Lcom/transsion/widgets/f;-><init>(Lcom/transsion/widgets/DateTimeView$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_3
    :goto_1
    return-void

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIntentReceiver onReceive error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DateTimeView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
