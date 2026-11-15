.class Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub$1;
.super Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub$1;->this$0:Lcom/transsion/apiinvoke/ipc/RemoteApiPublisherStub;

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/SubscribeStateChangeObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscribeChange(Lcom/transsion/apiinvoke/ipc/ParcelPublisher;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/ipc/ParcelPublisher;->getPublisher()Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object p0

    iget-object p1, p0, Lcom/transsion/apiinvoke/subscribe/Publisher;->host:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-static {p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->onSubscribeCountChange(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V

    return-void
.end method
