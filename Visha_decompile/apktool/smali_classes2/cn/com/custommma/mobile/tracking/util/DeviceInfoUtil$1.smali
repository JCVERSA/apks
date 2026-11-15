.class final Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->j(Landroid/content/Context;Lqx8;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$adia_url:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;->val$adia_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/a;->b()Lcn/com/custommma/mobile/tracking/util/a;

    move-result-object v1

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;->val$adia_url:Ljava/lang/String;

    new-instance v4, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1$a;

    invoke-direct {v4, p0}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1$a;-><init>(Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;)V

    invoke-virtual {v1, v2, v3, v4}, Lcn/com/custommma/mobile/tracking/util/a;->f(Landroid/content/Context;Ljava/lang/String;Lcn/com/custommma/mobile/tracking/util/a$a;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->a(Z)Z

    return-void
.end method
