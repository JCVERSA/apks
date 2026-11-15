.class public Lcom/transsion/playercommon/widgets/CustomTimePicker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/CustomTimePicker;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/CustomTimePicker;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/CustomTimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$a;->a:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$a;->a:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {p1, p2}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->f(Lcom/transsion/playercommon/widgets/CustomTimePicker;I)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$a;->a:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->e(Lcom/transsion/playercommon/widgets/CustomTimePicker;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$a;->a:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {p2}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->d(Lcom/transsion/playercommon/widgets/CustomTimePicker;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$a;->a:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {p1}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->e(Lcom/transsion/playercommon/widgets/CustomTimePicker;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/CustomTimePicker$a;->a:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/CustomTimePicker;->d(Lcom/transsion/playercommon/widgets/CustomTimePicker;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method
