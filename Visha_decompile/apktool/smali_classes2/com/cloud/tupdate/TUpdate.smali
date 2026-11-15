.class public final Lcom/cloud/tupdate/TUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tupdate/TUpdate$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/cloud/tupdate/TUpdate$a;

.field public static final d:Lyi5;


# instance fields
.field public a:Landroid/app/Application;

.field public b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tupdate/TUpdate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tupdate/TUpdate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tupdate/TUpdate;->c:Lcom/cloud/tupdate/TUpdate$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/cloud/tupdate/TUpdate$Companion$get$2;->INSTANCE:Lcom/cloud/tupdate/TUpdate$Companion$get$2;

    invoke-static {v0, v1}, Lkotlin/b;->b(Lkotlin/LazyThreadSafetyMode;Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/cloud/tupdate/TUpdate;->d:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tupdate/TUpdate;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lyi5;
    .locals 1

    sget-object v0, Lcom/cloud/tupdate/TUpdate;->d:Lyi5;

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/app/Application;
    .locals 0

    invoke-virtual {p0}, Lcom/cloud/tupdate/TUpdate;->g()V

    iget-object p0, p0, Lcom/cloud/tupdate/TUpdate;->a:Landroid/app/Application;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final c(Landroid/app/Application;Z)V
    .locals 2

    const-string p2, "application"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tupdate/TUpdate;->a:Landroid/app/Application;

    invoke-virtual {p0}, Lcom/cloud/tupdate/TUpdate;->e()Lcom/cloud/tupdate/TUpdate;

    sget-object p2, Lvk;->a:Lvk;

    iget-object v0, p0, Lcom/cloud/tupdate/TUpdate;->a:Landroid/app/Application;

    iget-boolean v1, p0, Lcom/cloud/tupdate/TUpdate;->b:Z

    invoke-virtual {p2, v0, v1}, Lvk;->o(Landroid/content/Context;Z)V

    invoke-virtual {p0, p1}, Lcom/cloud/tupdate/TUpdate;->d(Landroid/content/Context;)V

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p0

    const-string/jumbo p1, "update"

    const-string/jumbo v0, "update SDK Version is 1.3.0"

    invoke-virtual {p0, p1, v0}, Lia1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "upgrade_sdk_init_status"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "upgrade_sdk_init"

    invoke-virtual {p2, p1, p0}, Lvk;->z(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-boolean p0, p0, Lcom/cloud/tupdate/TUpdate;->b:Z

    if-eqz p0, :cond_0

    const-string p0, "http://140.206.67.86:8082/common/app-management/v1/consumer-not-login/versioncontent/query/get"

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "https://app-manage-api.shalltry.com/common/app-management/v1/consumer-not-login/versioncontent/query/get"

    :goto_0
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cloud/tupdate/TUpdate$b;

    invoke-direct {v1, p0}, Lcom/cloud/tupdate/TUpdate$b;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$InitListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {p1, p0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final e()Lcom/cloud/tupdate/TUpdate;
    .locals 3

    iget-object v0, p0, Lcom/cloud/tupdate/TUpdate;->a:Landroid/app/Application;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->k:Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;->a()Lcom/cloud/tupdate/net/network/HttpRequestor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/cloud/tupdate/TUpdate;->b:Z

    invoke-virtual {v1, v2}, Lcom/cloud/tupdate/net/network/HttpRequestor;->c(Z)V

    :goto_0
    invoke-virtual {v0}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;->a()Lcom/cloud/tupdate/net/network/HttpRequestor;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lqa1;->a:Lqa1;

    invoke-virtual {v1}, Lqa1;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tupdate/net/network/HttpRequestor;->d(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    iget-boolean v1, p0, Lcom/cloud/tupdate/TUpdate;->b:Z

    invoke-virtual {v0, v1}, Lcom/cloud/tupdate/net/utils/LogUtil;->f(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v1, v0}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :goto_2
    return-object p0
.end method

.method public final f(Z)Lcom/cloud/tupdate/TUpdate;
    .locals 3

    iput-boolean p1, p0, Lcom/cloud/tupdate/TUpdate;->b:Z

    if-nez p1, :cond_0

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    const-string v1, "UPDATE"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lia1;->h(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    invoke-virtual {v0, p1}, Lia1;->h(Z)V

    :goto_0
    sget-object v0, Lxca;->a:Lxca;

    invoke-virtual {v0, p1}, Lxca;->b(Z)V

    return-object p0
.end method

.method public final g()V
    .locals 1

    iget-object p0, p0, Lcom/cloud/tupdate/TUpdate;->a:Landroid/app/Application;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ExceptionInInitializerError;

    const-string/jumbo v0, "\u8bf7\u5148\u5728\u5168\u5c40Application\u4e2d\u8c03\u7528 TUpdate.get().init() \u521d\u59cb\u5316\uff01"

    invoke-direct {p0, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
