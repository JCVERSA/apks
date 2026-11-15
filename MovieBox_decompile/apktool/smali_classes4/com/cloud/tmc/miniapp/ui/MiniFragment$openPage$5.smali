.class public final Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment;->openPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$5;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$openPage$5;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;->getData()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v1, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    return v0
.end method
