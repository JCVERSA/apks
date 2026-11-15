.class Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->unregisterListener(Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

.field final synthetic val$listener:Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->val$listener:Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->a(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->a(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->val$listener:Lcom/cloud/tmc/miniutils/util/NetworkUtils$OnNetworkStatusChangedListener;

    .line 18
    .line 19
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-ne v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver$2;->this$0:Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->a(Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;->d()Lcom/cloud/tmc/miniutils/util/NetworkUtils$NetworkChangedReceiver;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
