.class public final Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

.field private final eventCenterFactory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->eventCenterFactory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 15
    .line 16
    const-string v0, "onKeyboardHeightChange"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->createEvent(Ljava/lang/String;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final getCreateEvent()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEventCenterFactory()Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->eventCenterFactory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 2
    .line 3
    return-object v0
.end method

.method public onKeyBoardAnimEnd()V
    .locals 2

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    const-string v1, "Keyboard anim end"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onKeyBoardAnimStart()V
    .locals 2

    .line 1
    const-string v0, "MiniAppBaseFragment"

    .line 2
    .line 3
    const-string v1, "Keyboard anim start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onKeyBoardHeightChange(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Keyboard height:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "MiniAppBaseFragment"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->access$getPage$p$s-387525749(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)Lcom/cloud/tmc/integration/structure/Page;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "page"

    .line 32
    .line 33
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v2, "height"

    .line 42
    .line 43
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v2, 0x2

    .line 48
    new-array v2, v2, [Lkotlin/Pair;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    aput-object v1, v2, v3

    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    aput-object p1, v2, v1

    .line 55
    .line 56
    invoke-static {v2}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {v0, p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->setData(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->eventCenterFactory:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->access$getApp$p$s-387525749(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)Lcom/cloud/tmc/integration/structure/App;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$onResume$2;->createEvent:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;

    .line 78
    .line 79
    const-string v1, "onKeyboardHeightChange"

    .line 80
    .line 81
    invoke-interface {p1, v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void
.end method
