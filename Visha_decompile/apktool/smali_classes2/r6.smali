.class public abstract Lr6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr6$a;,
        Lr6$b;
    }
.end annotation


# static fields
.field public static a:Lr6$a; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Z = true

.field public static d:Ljava/util/concurrent/atomic/AtomicLong;

.field public static e:I

.field public static f:I

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lr6;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, -0x1

    sput v0, Lr6;->e:I

    const/16 v0, 0xa

    sput v0, Lr6;->f:I

    const/4 v0, 0x1

    sput-boolean v0, Lr6;->g:Z

    const/4 v1, 0x0

    sput-boolean v1, Lr6;->h:Z

    sput-boolean v0, Lr6;->i:Z

    sput v1, Lr6;->j:I

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lr6;->m()V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lr6;->h()V

    return-void
.end method

.method public static synthetic c()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    sget-object v0, Lr6;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static d(Lr6$a;)V
    .locals 3

    sget-object v0, Lr6;->a:Lr6$a;

    if-nez v0, :cond_5

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {p0}, Lr6$a;->c(Lr6$a;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    sget-object v0, Lja1;->NET_LOG:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    const-string v2, "AD_NET_LOG"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->q(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    :cond_1
    invoke-static {p0}, Lr6$a;->e(Lr6$a;)Z

    move-result v0

    invoke-static {v0}, Ltga;->b(Z)V

    invoke-static {p0}, Lr6$a;->c(Lr6$a;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string v0, "TA_SDK"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ADSDK"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    invoke-static {p0, v0}, Lr6$a;->b(Lr6$a;Z)Z

    :cond_4
    sput-object p0, Lr6;->a:Lr6$a;

    sget-object p0, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0;

    sget-object v0, Lr6;->a:Lr6$a;

    invoke-static {v0}, Lr6$a;->f(Lr6$a;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/k0;->c(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->f()Ljava/lang/String;

    sget-object p0, Lr6;->a:Lr6$a;

    invoke-static {p0}, Lr6$a;->c(Lr6$a;)Z

    move-result p0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p(ZLandroid/content/Context;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->registerMonitorBroadcast()V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    sget-object v0, Lr6;->a:Lr6$a;

    invoke-static {v0}, Lr6$a;->c(Lr6$a;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lja1;->setLogSwitch(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W()V

    invoke-static {}, Lr6;->f()V

    invoke-static {}, Lcgc;->n()Lcgc;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcgc;->p(I)V

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lp6;

    invoke-direct {v0}, Lp6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->n(Ljava/lang/Runnable;)V

    new-instance v0, Lq6;

    invoke-direct {v0}, Lq6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->l(Ljava/lang/Runnable;)V

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/n;->b(Landroid/content/Context;)V

    sget-object p0, Lcom/cloud/hisavana/sdk/g0;->a:Lcom/cloud/hisavana/sdk/g0;

    sget-object v0, Lr6;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/sdk/g0;->k(J)V

    sget-object p0, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/y;->O()V

    sget-object p0, Lq1d;->a:Lq1d;

    invoke-virtual {p0}, Lq1d;->d()V

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic e(Z)Z
    .locals 0

    sput-boolean p0, Lr6;->g:Z

    return p0
.end method

.method public static f()V
    .locals 2

    :try_start_0
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Luz6;->c(Landroid/app/Application;Z)V

    invoke-static {}, Lr6;->p()Z

    move-result v0

    sput-boolean v0, Lcom/cloud/hisavana/net/CommonOkHttpClient;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "init NetworkMonitor failure!"

    invoke-virtual {v0, v1}, Lja1;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic g(Z)Z
    .locals 0

    sput-boolean p0, Lr6;->h:Z

    return p0
.end method

.method public static synthetic h()V
    .locals 0

    invoke-static {}, Lin8;->n()V

    invoke-static {}, Lrd;->s0()V

    return-void
.end method

.method public static synthetic i(Z)Z
    .locals 0

    sput-boolean p0, Lr6;->i:Z

    return p0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lr6;->g:Z

    return v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lr6;->i:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lr6;->h:Z

    return v0
.end method

.method public static synthetic m()V
    .locals 1

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcy9;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static n()I
    .locals 1

    sget v0, Lr6;->e:I

    return v0
.end method

.method public static o(Landroid/content/Context;Lr6$a;)V
    .locals 1

    sget-object v0, Lr6;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "AdManager"

    const-string v0, "AppId is empty, please check your config."

    invoke-virtual {p0, p1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lzk5;->j(Landroid/app/Application;)V

    invoke-static {p0}, Lul4;->g(Landroid/content/Context;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->h()V

    invoke-static {p1}, Lr6;->d(Lr6$a;)V

    return-void
.end method

.method public static p()Z
    .locals 1

    sget-object v0, Lr6;->a:Lr6$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lr6$a;->c(Lr6$a;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static q()Z
    .locals 3

    sget v0, Lr6;->j:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    sget-object v0, Lr6;->a:Lr6$a;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lr6$a;->a(Lr6$a;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static r()Z
    .locals 1

    sget-boolean v0, Lr6;->c:Z

    return v0
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    sput-object p1, Lr6;->b:Ljava/lang/String;

    invoke-static {p0}, Lul4;->g(Landroid/content/Context;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HisavanaContentProvider;->h()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->f()Ljava/lang/String;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->p(ZLandroid/content/Context;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->registerMonitorBroadcast()V

    return-void
.end method

.method public static t(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sput p0, Lr6;->f:I

    :cond_1
    :goto_0
    return-void
.end method

.method public static u(Z)V
    .locals 0

    sput-boolean p0, Lr6;->c:Z

    return-void
.end method

.method public static v()Z
    .locals 1

    sget-object v0, Lr6;->a:Lr6$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lr6$a;->d(Lr6$a;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
