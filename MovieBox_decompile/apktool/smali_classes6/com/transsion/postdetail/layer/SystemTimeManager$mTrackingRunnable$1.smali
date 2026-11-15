.class public final Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/SystemTimeManager;-><init>(Lcom/transsion/postdetail/layer/SystemTimeManager$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/SystemTimeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->b(Lcom/transsion/postdetail/layer/SystemTimeManager;)Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->e()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->b(Lcom/transsion/postdetail/layer/SystemTimeManager;)Lcom/transsion/postdetail/layer/SystemTimeManager$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager$a;->a()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    :goto_0
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    const-wide/16 v3, 0x0

    .line 40
    .line 41
    cmp-long v1, v1, v3

    .line 42
    .line 43
    if-lez v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/transsion/postdetail/layer/SystemTimeManager;->a(Lcom/transsion/postdetail/layer/SystemTimeManager;)Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/transsion/postdetail/layer/SystemTimeManager$mTrackingRunnable$1;->this$0:Lcom/transsion/postdetail/layer/SystemTimeManager;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/SystemTimeManager;->e()V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_1
    return-void
.end method
