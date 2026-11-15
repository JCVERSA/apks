.class public final synthetic Lpd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgets/battery/BatteryMeterView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgets/battery/BatteryMeterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpd0;->b:Lcom/transsion/widgets/battery/BatteryMeterView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lpd0;->b:Lcom/transsion/widgets/battery/BatteryMeterView;

    invoke-static {p0}, Lcom/transsion/widgets/battery/BatteryMeterView;->a(Lcom/transsion/widgets/battery/BatteryMeterView;)V

    return-void
.end method
