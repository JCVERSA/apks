.class Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;

.field final synthetic val$callBack:Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;

.field final synthetic val$monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

.field final synthetic val$trackURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V
    .locals 0

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$1;->val$trackURL:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$1;->val$callBack:Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;

    iput-object p4, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$1;->val$monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->a(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)Ltbc;

    move-result-object v1

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$1;->val$trackURL:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$1;->val$callBack:Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;

    iget-object v4, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$1;->val$monitorType:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    invoke-interface {v1, v2, v3, v4}, Ltbc;->a(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker$1;->val$trackURL:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "\u76d1\u6d4b\u5b8c\u6210,\u79fb\u9664\u5bf9\u5e94\u7684\u6570\u636e"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Loe5;->g(Ljava/lang/Object;)V

    sget-boolean p0, Lcn/com/custommma/mobile/tracking/api/Countly;->n:Z

    if-eqz p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    sget-object v1, Lcn/com/custommma/mobile/tracking/api/Countly;->p:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;->b(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityWorker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
