.class public Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService$MonitorTask;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Z

.field public d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->c:Z

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->d:Ljava/util/HashMap;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->a:Landroid/content/Context;

    invoke-static {p1}, Lyr1;->d(Landroid/content/Context;)Lyr1;

    move-result-object p1

    invoke-virtual {p1}, Lyr1;->b()V

    iput-boolean v0, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->c:Z

    return-void
.end method

.method public static synthetic a(Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/webjs/ViewAbilityJsService;->d:Ljava/util/HashMap;

    return-object p0
.end method
