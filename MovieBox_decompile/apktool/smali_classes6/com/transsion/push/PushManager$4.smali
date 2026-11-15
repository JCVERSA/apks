.class Lcom/transsion/push/PushManager$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/PushManager;


# direct methods
.method constructor <init>(Lcom/transsion/push/PushManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/PushManager$4;->this$0:Lcom/transsion/push/PushManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->init()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->n()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->o()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Lyj/a;->f(Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackInit()V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 26
    .line 27
    const-string v1, "start update token 2: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/transsion/push/utils/FirebaseUtils;->c()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
