.class public final Lcom/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/timer/FixedRateScheduler;->c(JJLc74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1",
        "Ljava/lang/Runnable;",
        "Lzfb;",
        "run",
        "()V",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $onTick:Lc74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc74;"
        }
    .end annotation
.end field

.field final synthetic $period:J

.field final synthetic this$0:Lcom/yandex/div/core/timer/FixedRateScheduler;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/timer/FixedRateScheduler;JLc74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/div/core/timer/FixedRateScheduler;",
            "J",
            "Lc74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1;->this$0:Lcom/yandex/div/core/timer/FixedRateScheduler;

    iput-wide p2, p0, Lcom/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1;->$period:J

    iput-object p4, p0, Lcom/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1;->$onTick:Lc74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1;->this$0:Lcom/yandex/div/core/timer/FixedRateScheduler;

    invoke-static {v0}, Lcom/yandex/div/core/timer/FixedRateScheduler;->a(Lcom/yandex/div/core/timer/FixedRateScheduler;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1;->$period:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/yandex/div/core/timer/FixedRateScheduler$scheduleAtFixedRate$1;->$onTick:Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method
