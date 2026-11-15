.class final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "event"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->Companion:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$setUpX$cp(F)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$setUpY$cp(F)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object p1, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->Companion:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$b;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$setDownX$cp(F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$setDownY$cp(F)V

    .line 52
    .line 53
    .line 54
    :goto_0
    const/4 p1, 0x0

    .line 55
    return p1
.end method
