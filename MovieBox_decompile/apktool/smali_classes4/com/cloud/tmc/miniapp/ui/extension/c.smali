.class public final synthetic Lcom/cloud/tmc/miniapp/ui/extension/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/extension/c;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/extension/c;->a:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->c(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
