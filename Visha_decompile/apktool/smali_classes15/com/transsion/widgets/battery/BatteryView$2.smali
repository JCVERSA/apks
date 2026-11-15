.class Lcom/transsion/widgets/battery/BatteryView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgets/battery/BatteryView;->startCharge()V
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

    iput-object p1, p0, Lcom/transsion/widgets/battery/BatteryView$2;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView$2;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {v0}, Lcom/transsion/widgets/battery/BatteryView;->c(Lcom/transsion/widgets/battery/BatteryView;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/transsion/widgets/battery/BatteryView;->g(Lcom/transsion/widgets/battery/BatteryView;I)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView$2;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {v0}, Lcom/transsion/widgets/battery/BatteryView;->c(Lcom/transsion/widgets/battery/BatteryView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgets/battery/BatteryView;->setPower(I)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView$2;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {v0}, Lcom/transsion/widgets/battery/BatteryView;->c(Lcom/transsion/widgets/battery/BatteryView;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgets/battery/BatteryView$2;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {v2}, Lcom/transsion/widgets/battery/BatteryView;->a(Lcom/transsion/widgets/battery/BatteryView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/widgets/battery/BatteryView;->g(Lcom/transsion/widgets/battery/BatteryView;I)V

    iget-object v0, p0, Lcom/transsion/widgets/battery/BatteryView$2;->this$0:Lcom/transsion/widgets/battery/BatteryView;

    invoke-static {v0}, Lcom/transsion/widgets/battery/BatteryView;->b(Lcom/transsion/widgets/battery/BatteryView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
