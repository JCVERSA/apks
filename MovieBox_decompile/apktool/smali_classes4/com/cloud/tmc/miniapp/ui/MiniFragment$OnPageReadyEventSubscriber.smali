.class public final Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/ui/MiniFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnPageReadyEventSubscriber"
.end annotation


# instance fields
.field private final context:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

.field private final contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/miniapp/ui/MiniFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->context:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getContext()Lcom/cloud/tmc/miniapp/ui/MiniFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->context:Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContextWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/cloud/tmc/miniapp/ui/MiniFragment;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/extension/FullScreenExtensionKt;->injectScreenFullJS(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-static {v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$getNavigationBarCustomIconStyleIsWhite$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-static {p1, v0}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$setNavigationBarDefaultStyleIsWhite$p(Lcom/cloud/tmc/miniapp/ui/MiniFragment;Z)V

    .line 44
    .line 45
    .line 46
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/MiniFragment$OnPageReadyEventSubscriber;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-static {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;->access$updateTitleBarStyle(Lcom/cloud/tmc/miniapp/ui/MiniFragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :goto_2
    const-string v0, "MiniFragment"

    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_3
    const/4 p1, 0x1

    .line 68
    return p1
.end method
