.class public final Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$openPage$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;->openPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$openPage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

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
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment$openPage$1;->this$0:Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {p1, v0, v1, v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->sendPageEnterToWorker$default(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;Ljava/util/Map;ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1
.end method
