.class public final Lxgb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;

.field public d:Ljava/util/Map;

.field public e:Lxw4;

.field public f:Ltw4;

.field public g:Lyw4;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Z

.field public l:Lvw4;

.field public m:Lcom/cloud/tupdate/dialog/DialogPosition;

.field public n:F

.field public o:Z

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxgb$a;->a:Landroid/content/Context;

    new-instance p1, Lcom/cloud/tupdate/impl/UpdateParser;

    invoke-direct {p1}, Lcom/cloud/tupdate/impl/UpdateParser;-><init>()V

    iput-object p1, p0, Lxgb$a;->e:Lxw4;

    new-instance p1, Lugb;

    invoke-direct {p1}, Lugb;-><init>()V

    iput-object p1, p0, Lxgb$a;->f:Ltw4;

    new-instance p1, Lbhb;

    invoke-direct {p1}, Lbhb;-><init>()V

    iput-object p1, p0, Lxgb$a;->g:Lyw4;

    sget-object p1, Lcom/cloud/tupdate/dialog/DialogPosition;->MIDDLE:Lcom/cloud/tupdate/dialog/DialogPosition;

    iput-object p1, p0, Lxgb$a;->m:Lcom/cloud/tupdate/dialog/DialogPosition;

    const-string p1, ""

    iput-object p1, p0, Lxgb$a;->p:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lxgb$a;Lrv4;)V
    .locals 0

    invoke-virtual {p0, p1}, Lxgb$a;->f(Lrv4;)V

    return-void
.end method

.method public static final synthetic b(Lxgb$a;Lrv4;)V
    .locals 0

    invoke-virtual {p0, p1}, Lxgb$a;->h(Lrv4;)V

    return-void
.end method

.method public static final synthetic c(Lxgb$a;)V
    .locals 0

    invoke-virtual {p0}, Lxgb$a;->m()V

    return-void
.end method


# virtual methods
.method public final d()Lxgb;
    .locals 4

    sget-object v0, Ldhb;->a:Ldhb;

    iget-object v1, p0, Lxgb$a;->a:Landroid/content/Context;

    const-string v2, "[UpdateManager.Builder] : context == null"

    invoke-virtual {v0, v1, v2}, Ldhb;->n(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lxgb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxgb;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lxgb;->k(Lxgb;Ljava/lang/ref/WeakReference;)V

    iget-object v2, p0, Lxgb$a;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lxgb;->w(Lxgb;Ljava/lang/String;)V

    iget-object v2, p0, Lxgb$a;->c:Ljava/util/Map;

    invoke-static {v0, v2}, Lxgb;->n(Lxgb;Ljava/util/Map;)V

    iget-object v2, p0, Lxgb$a;->d:Ljava/util/Map;

    invoke-static {v0, v2}, Lxgb;->s(Lxgb;Ljava/util/Map;)V

    iget-boolean v2, p0, Lxgb$a;->k:Z

    invoke-static {v0, v2}, Lxgb;->u(Lxgb;Z)V

    iget-object v2, p0, Lxgb$a;->m:Lcom/cloud/tupdate/dialog/DialogPosition;

    invoke-static {v0, v2}, Lxgb;->m(Lxgb;Lcom/cloud/tupdate/dialog/DialogPosition;)V

    iget v2, p0, Lxgb$a;->n:F

    invoke-static {v0, v2}, Lxgb;->l(Lxgb;F)V

    iget-boolean v2, p0, Lxgb$a;->o:Z

    invoke-static {v0, v2}, Lxgb;->r(Lxgb;Z)V

    iget-object v2, p0, Lxgb$a;->f:Ltw4;

    invoke-static {v0, v2}, Lxgb;->o(Lxgb;Ltw4;)V

    iget-object v2, p0, Lxgb$a;->e:Lxw4;

    invoke-static {v0, v2}, Lxgb;->p(Lxgb;Lxw4;)V

    iget-object v2, p0, Lxgb$a;->g:Lyw4;

    invoke-static {v0, v2}, Lxgb;->q(Lxgb;Lyw4;)V

    iget-object v2, p0, Lxgb$a;->l:Lvw4;

    invoke-static {v0, v2}, Lxgb;->v(Lxgb;Lvw4;)V

    invoke-static {v0, v1}, Lxgb;->t(Lxgb;Lcw4;)V

    iget-object p0, p0, Lxgb$a;->p:Ljava/lang/String;

    invoke-static {v0, p0}, Lxgb;->x(Lxgb;Ljava/lang/String;)V

    return-object v0
.end method

.method public final e(Lrv4;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lqe1;->a:Lqe1$a;

    iget-object v3, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context.applicationContext"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lqe1$a;->a(Landroid/content/Context;)Lse1;

    move-result-object v2

    new-instance v3, Lxgb$a$a;

    invoke-direct {v3, v0, v1, p0, p1}, Lxgb$a$a;-><init>(JLxgb$a;Lrv4;)V

    invoke-virtual {v2, v3}, Lcom/cloud/tupdate/config/AbsConfigStore;->d(Lre1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lia1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final f(Lrv4;)V
    .locals 5

    iget-object v0, p0, Lxgb$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    sget-object v0, Lxca;->a:Lxca;

    invoke-virtual {v0}, Lxca;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://140.206.67.86:8082/common/app-management/v1/consumer-not-login/versioncontent/query/get"

    goto :goto_0

    :cond_1
    const-string v0, "https://app-manage-api.shalltry.com/common/app-management/v1/consumer-not-login/versioncontent/query/get"

    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lxgb$a;->b:Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    iput-object v0, p0, Lxgb$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iput-object v0, p0, Lxgb$a;->b:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v0, v1}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lxgb$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lxgb$a;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget v0, p0, Lxgb$a;->j:I

    if-nez v0, :cond_9

    :cond_7
    :goto_4
    sget-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->k:Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;->a()Lcom/cloud/tupdate/net/network/HttpRequestor;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.packageName"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lqa1;->a:Lqa1;

    iget-object v3, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lqa1;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lqa1;->j(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/cloud/tupdate/net/network/HttpRequestor;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lxgb$a;->d()Lxgb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxgb;->A(Lrv4;)V

    return-void
.end method

.method public final g(Lrv4;)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lqe1;->a:Lqe1$a;

    iget-object v3, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context.applicationContext"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lqe1$a;->a(Landroid/content/Context;)Lse1;

    move-result-object v2

    new-instance v3, Lxgb$a$b;

    invoke-direct {v3, v0, v1, p0, p1}, Lxgb$a$b;-><init>(JLxgb$a;Lrv4;)V

    invoke-virtual {v2, v3}, Lcom/cloud/tupdate/config/AbsConfigStore;->d(Lre1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lia1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final h(Lrv4;)V
    .locals 5

    iget-object v0, p0, Lxgb$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    sget-object v0, Lxca;->a:Lxca;

    invoke-virtual {v0}, Lxca;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://140.206.67.86:8082/common/app-management/v1/consumer-not-login/versioncontent/query/get"

    goto :goto_0

    :cond_1
    const-string v0, "https://app-manage-api.shalltry.com/common/app-management/v1/consumer-not-login/versioncontent/query/get"

    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lxgb$a;->b:Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    iput-object v0, p0, Lxgb$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iput-object v0, p0, Lxgb$a;->b:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v0, v1}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lxgb$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lxgb$a;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget v0, p0, Lxgb$a;->j:I

    if-nez v0, :cond_9

    :cond_7
    :goto_4
    sget-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->k:Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;->a()Lcom/cloud/tupdate/net/network/HttpRequestor;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.packageName"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lqa1;->a:Lqa1;

    iget-object v3, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lqa1;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lqa1;->j(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/cloud/tupdate/net/network/HttpRequestor;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lxgb$a;->d()Lxgb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxgb;->B(Lrv4;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)Lxgb$a;
    .locals 1

    const-string/jumbo v0, "whiteListId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lxgb$a;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Lxgb$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxgb$a;->o:Z

    return-object p0
.end method

.method public final k(Lvw4;)Lxgb$a;
    .locals 1

    const-string/jumbo v0, "updateListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lxgb$a;->l:Lvw4;

    return-object p0
.end method

.method public final l()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    sget-object v2, Lqe1;->a:Lqe1$a;

    iget-object v3, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context.applicationContext"

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lqe1$a;->a(Landroid/content/Context;)Lse1;

    move-result-object v2

    new-instance v3, Lxgb$a$c;

    invoke-direct {v3, v0, v1, p0}, Lxgb$a$c;-><init>(JLxgb$a;)V

    invoke-virtual {v2, v3}, Lcom/cloud/tupdate/config/AbsConfigStore;->d(Lre1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lo6;->j()Lo6;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lia1;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 5

    iget-object v0, p0, Lxgb$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    sget-object v0, Lxca;->a:Lxca;

    invoke-virtual {v0}, Lxca;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://140.206.67.86:8082/common/app-management/v1/consumer-not-login/versioncontent/query/get"

    goto :goto_0

    :cond_1
    const-string v0, "https://app-manage-api.shalltry.com/common/app-management/v1/consumer-not-login/versioncontent/query/get"

    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lxgb$a;->b:Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    iput-object v0, p0, Lxgb$a;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    iput-object v0, p0, Lxgb$a;->b:Ljava/lang/String;

    sget-object v0, Lcom/cloud/tupdate/net/utils/LogUtil;->a:Lcom/cloud/tupdate/net/utils/LogUtil;

    invoke-virtual {v0, v1}, Lcom/cloud/tupdate/net/utils/LogUtil;->d(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    iget-object v0, p0, Lxgb$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lxgb$a;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    iget v0, p0, Lxgb$a;->j:I

    if-nez v0, :cond_9

    :cond_7
    :goto_4
    sget-object v0, Lcom/cloud/tupdate/net/network/HttpRequestor;->k:Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;

    invoke-virtual {v0}, Lcom/cloud/tupdate/net/network/HttpRequestor$Companion;->a()Lcom/cloud/tupdate/net/network/HttpRequestor;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.packageName"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lqa1;->a:Lqa1;

    iget-object v3, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lqa1;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lxgb$a;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lqa1;->j(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/cloud/tupdate/net/network/HttpRequestor;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lxgb$a;->d()Lxgb;

    move-result-object p0

    invoke-virtual {p0}, Lxgb;->C()V

    return-void
.end method
