.class Lcn/com/custommma/mobile/tracking/viewability/webjs/JSBridgeLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcn/com/custommma/mobile/tracking/viewability/webjs/a;


# direct methods
.method public constructor <init>(Lcn/com/custommma/mobile/tracking/viewability/webjs/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/a;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/a;Z)Z

    const/4 p0, 0x0

    :try_start_0
    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/a;->b(Lcn/com/custommma/mobile/tracking/viewability/webjs/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/custommma/mobile/tracking/viewability/webjs/a$a;->a(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/a;->c(Lcn/com/custommma/mobile/tracking/viewability/webjs/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/a;->e(Lcn/com/custommma/mobile/tracking/viewability/webjs/a;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "mma.viewabilityjs.bridgejs"

    invoke-virtual {v1, v3, p0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/a;->f(Lcn/com/custommma/mobile/tracking/viewability/webjs/a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {v0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/a;->c(Lcn/com/custommma/mobile/tracking/viewability/webjs/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, v2}, Lcn/com/custommma/mobile/tracking/viewability/webjs/a;->d(Lcn/com/custommma/mobile/tracking/viewability/webjs/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    invoke-static {v0, p0}, Lcn/com/custommma/mobile/tracking/viewability/webjs/a;->a(Lcn/com/custommma/mobile/tracking/viewability/webjs/a;Z)Z

    return-void
.end method
