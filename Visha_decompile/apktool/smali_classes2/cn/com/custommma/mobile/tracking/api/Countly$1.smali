.class Lcn/com/custommma/mobile/tracking/api/Countly$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/custommma/mobile/tracking/api/Countly;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/api/Countly;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/api/Countly;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/api/Countly$1;->this$0:Lcn/com/custommma/mobile/tracking/api/Countly;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly$1;->this$0:Lcn/com/custommma/mobile/tracking/api/Countly;

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/api/Countly;->a(Lcn/com/custommma/mobile/tracking/api/Countly;)V

    return-void
.end method
