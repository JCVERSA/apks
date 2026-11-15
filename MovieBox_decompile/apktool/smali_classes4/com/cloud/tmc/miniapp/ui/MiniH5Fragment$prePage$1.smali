.class public final Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$prePage$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->prePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$prePage$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$getPage$p$s736477716(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)Lcom/cloud/tmc/integration/structure/Page;

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
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$prePage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;->access$openPage(Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment$prePage$1;->$eventCenter:Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 44
    .line 45
    const-string v0, "renderOnMessageReady"

    .line 46
    .line 47
    invoke-interface {p1, v0, p0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    :cond_2
    return v3
.end method
