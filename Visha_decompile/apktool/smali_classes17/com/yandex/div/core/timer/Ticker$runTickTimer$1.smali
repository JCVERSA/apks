.class final Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/timer/Ticker;->w(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $duration:J

.field final synthetic $interval:J

.field final synthetic $processTick:Lc74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc74;"
        }
    .end annotation
.end field

.field final synthetic $ticksLeft:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic this$0:Lcom/yandex/div/core/timer/Ticker;


# direct methods
.method public constructor <init>(JLcom/yandex/div/core/timer/Ticker;Lkotlin/jvm/internal/Ref$LongRef;JLc74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/yandex/div/core/timer/Ticker;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "J",
            "Lc74;",
            ")V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->$duration:J

    iput-object p3, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->this$0:Lcom/yandex/div/core/timer/Ticker;

    iput-object p4, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->$ticksLeft:Lkotlin/jvm/internal/Ref$LongRef;

    iput-wide p5, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->$interval:J

    iput-object p7, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->$processTick:Lc74;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->invoke()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final invoke()V
    .locals 12

    .line 2
    iget-wide v0, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->$duration:J

    iget-object v2, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->this$0:Lcom/yandex/div/core/timer/Ticker;

    invoke-static {v2}, Lcom/yandex/div/core/timer/Ticker;->e(Lcom/yandex/div/core/timer/Ticker;)J

    move-result-wide v2

    sub-long v5, v0, v2

    .line 3
    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->this$0:Lcom/yandex/div/core/timer/Ticker;

    invoke-static {v0}, Lcom/yandex/div/core/timer/Ticker;->b(Lcom/yandex/div/core/timer/Ticker;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->$ticksLeft:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v0, 0x1

    cmp-long v0, v0, v5

    if-gtz v0, :cond_0

    .line 5
    iget-wide v0, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->$interval:J

    cmp-long v0, v5, v0

    if-gez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->this$0:Lcom/yandex/div/core/timer/Ticker;

    invoke-static {v0}, Lcom/yandex/div/core/timer/Ticker;->a(Lcom/yandex/div/core/timer/Ticker;)V

    .line 7
    iget-object v4, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->this$0:Lcom/yandex/div/core/timer/Ticker;

    new-instance v9, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1$1;

    iget-object p0, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->$processTick:Lc74;

    invoke-direct {v9, p0}, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1$1;-><init>(Lc74;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v4 .. v11}, Lcom/yandex/div/core/timer/Ticker;->A(Lcom/yandex/div/core/timer/Ticker;JJLc74;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/yandex/div/core/timer/Ticker$runTickTimer$1;->$processTick:Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
