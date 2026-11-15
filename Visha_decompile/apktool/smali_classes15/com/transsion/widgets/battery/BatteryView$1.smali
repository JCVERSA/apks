.class Lcom/transsion/widgets/battery/BatteryView$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/battery/BatteryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/battery/BatteryView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/battery/BatteryView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryView$1;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "level"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7535\u6c60\u5269\u4f59\u7535\u91cfpower"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "scale"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/16 p2, 0x64

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/transsion/widgets/battery/BatteryView$1;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {p2}, Lcom/transsion/widgets/battery/BatteryView;->h(Lcom/transsion/widgets/battery/BatteryView;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/widgets/battery/BatteryView$1;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {p2}, Lcom/transsion/widgets/battery/BatteryView;->i(Lcom/transsion/widgets/battery/BatteryView;)V

    :goto_0
    iget-object p2, p0, Lcom/transsion/widgets/battery/BatteryView$1;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {p2, p1}, Lcom/transsion/widgets/battery/BatteryView;->f(Lcom/transsion/widgets/battery/BatteryView;I)V

    iget-object p2, p0, Lcom/transsion/widgets/battery/BatteryView$1;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {p2}, Lcom/transsion/widgets/battery/BatteryView;->d(Lcom/transsion/widgets/battery/BatteryView;)Landroid/graphics/RectF;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/transsion/widgets/battery/BatteryView$1;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {p2}, Lcom/transsion/widgets/battery/BatteryView;->e(Lcom/transsion/widgets/battery/BatteryView;)Ljava/lang/Runnable;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/transsion/widgets/battery/BatteryView$1;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-virtual {p0, p1}, Lcom/transsion/widgets/battery/BatteryView;->setPower(I)V

    :cond_1
    return-void
.end method
