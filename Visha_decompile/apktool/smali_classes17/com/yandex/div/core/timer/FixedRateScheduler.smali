.class public final Lcom/yandex/div/core/timer/FixedRateScheduler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/div/core/timer/FixedRateScheduler;->a:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/core/timer/FixedRateScheduler;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/timer/FixedRateScheduler;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object p0, p0, Lcom/yandex/div/core/timer/FixedRateScheduler;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(JJLc74;)V
    .locals 2

    const-string v0, "onTick"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/timer/FixedRateScheduler;->a:Landroid/os/Handler;

    new-instance v1, Lcom/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1;

    invoke-direct {v1, p0, p3, p4, p5}, Lcom/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1;-><init>(Lcom/yandex/div/core/timer/FixedRateScheduler;JLc74;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
