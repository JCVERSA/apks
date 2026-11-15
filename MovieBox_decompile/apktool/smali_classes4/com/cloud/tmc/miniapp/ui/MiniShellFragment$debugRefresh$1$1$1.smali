.class public final Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->debugRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IRender;->getRenderId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getRenderId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-object p1, v1

    .line 30
    :goto_1
    const/4 v2, 0x2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v0, p1, v3, v2, v1}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_5

    .line 37
    .line 38
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$getPage$p$s2019804521(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getRender()Lcom/cloud/tmc/kernel/render/IRender;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->getView()Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move-object p1, v1

    .line 58
    :goto_2
    instance-of v0, p1, Lcom/cloud/tmc/render/system/ShellWebView;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    move-object v1, p1

    .line 63
    check-cast v1, Lcom/cloud/tmc/render/system/ShellWebView;

    .line 64
    .line 65
    :cond_3
    if-eqz v1, :cond_4

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/cloud/tmc/render/system/ShellWebView;->getWebviewBridgeHelper()Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/cloud/tmc/render/bridge/WebviewBridgeHelper;->registerMessageChannel()V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->access$openPage(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$debugRefresh$1$1$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 82
    .line 83
    const-string v0, "renderOnMessageReady"

    .line 84
    .line 85
    invoke-interface {p1, v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 86
    .line 87
    .line 88
    const/4 v3, 0x1

    .line 89
    :cond_5
    return v3
.end method
