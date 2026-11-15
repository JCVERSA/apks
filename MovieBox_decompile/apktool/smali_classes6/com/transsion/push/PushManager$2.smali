.class Lcom/transsion/push/PushManager$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/push/PushManager;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$isTest:Z


# direct methods
.method constructor <init>(Lcom/transsion/push/PushManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/push/PushManager$2;->this$0:Lcom/transsion/push/PushManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/PushManager$2;->val$appId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/push/PushManager$2;->val$appKey:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/transsion/push/PushManager$2;->val$isTest:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

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
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "push_app_id"

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/push/PushManager$2;->val$appId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "push_app_key"

    .line 24
    .line 25
    iget-object v2, p0, Lcom/transsion/push/PushManager$2;->val$appKey:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-boolean v1, p0, Lcom/transsion/push/PushManager$2;->val$isTest:Z

    .line 35
    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "push_is_test_env"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->o()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Lyj/a;->f(Z)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackInit()V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    .line 60
    .line 61
    const-string v1, "start update token: "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/transsion/push/utils/FirebaseUtils;->c()V

    .line 67
    .line 68
    .line 69
    return-void
.end method
