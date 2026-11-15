.class final Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService$MonitorTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MonitorTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;


# direct methods
.method private constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService$MonitorTask;->this$0:Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService$MonitorTask;-><init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService$MonitorTask;->this$0:Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService$MonitorTask;->this$0:Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
