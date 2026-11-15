.class public Lcn/com/custommma/mobile/tracking/api/Countly$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltbc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/custommma/mobile/tracking/api/Countly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/com/custommma/mobile/tracking/api/Countly;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/api/Countly;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/api/Countly$a;->a:Lcn/com/custommma/mobile/tracking/api/Countly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V
    .locals 1

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly$a;->a:Lcn/com/custommma/mobile/tracking/api/Countly;

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/api/Countly;->b(Lcn/com/custommma/mobile/tracking/api/Countly;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/api/Countly$a;->a:Lcn/com/custommma/mobile/tracking/api/Countly;

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/api/Countly;->c(Lcn/com/custommma/mobile/tracking/api/Countly;)Lcn/com/custommma/mobile/tracking/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/api/Countly$a;->a:Lcn/com/custommma/mobile/tracking/api/Countly;

    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/api/Countly;->c(Lcn/com/custommma/mobile/tracking/api/Countly;)Lcn/com/custommma/mobile/tracking/api/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/com/custommma/mobile/tracking/api/a;->c(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V

    :cond_0
    return-void
.end method
