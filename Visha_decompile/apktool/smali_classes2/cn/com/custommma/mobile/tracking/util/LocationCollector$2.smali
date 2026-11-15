.class Lcn/com/custommma/mobile/tracking/util/LocationCollector$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/custommma/mobile/tracking/util/LocationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/util/LocationCollector;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$2;->this$0:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$2;->this$0:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->d(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$2;->this$0:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    invoke-static {v1}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->c(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$2;->this$0:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->e(Lcn/com/custommma/mobile/tracking/util/LocationCollector;Z)Z

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->g()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/LocationCollector$2;->this$0:Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->f(Lcn/com/custommma/mobile/tracking/util/LocationCollector;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
