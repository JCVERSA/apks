.class Lcom/transsion/push/PushManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/PushManager;


# direct methods
.method public constructor <init>(Lcom/transsion/push/PushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/PushManager$4;->this$0:Lcom/transsion/push/PushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->init()V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->n()V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->p()Z

    move-result p0

    invoke-static {p0}, Lxj1;->f(Z)V

    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/push/tracker/Tracker;->trackInit()V

    sget-object p0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "start update token 2: "

    invoke-virtual {p0, v0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/push/utils/FirebaseUtils;->h()V

    return-void
.end method
