.class public Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/com/custommma/mobile/tracking/util/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1$a;->a:Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1$a;->a:Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;

    iget-object v0, v0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lng9;->f(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1$a;->a:Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;

    iget-object p1, p1, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;->val$context:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lzq8;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1$a;->a:Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;

    iget-object p1, p1, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lzq8;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1$a;->a:Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil$1;->val$context:Landroid/content/Context;

    sget-object p1, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->e:Ljava/lang/String;

    invoke-static {p0, p1}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->z(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method
