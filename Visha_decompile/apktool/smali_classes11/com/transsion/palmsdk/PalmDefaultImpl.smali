.class public Lcom/transsion/palmsdk/PalmDefaultImpl;
.super Lcom/transsion/palmsdk/PalmID;
.source "SourceFile"


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/transsion/palmsdk/PalmAuthParam;

.field public g:LOooO0OO/OooO00o;

.field public h:Z

.field public i:Z

.field public final j:Lpj7;

.field public final k:Llj7;

.field public final l:Lsj7;

.field public final m:Luj7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/palmsdk/PalmID;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->h:Z

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {p2, p1}, Lcom/transsion/palmsdk/PalmAuthParam;->setupApp(Landroid/content/Context;)V

    new-instance p1, Lpj7;

    invoke-direct {p1, v0, p2}, Lpj7;-><init>(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)V

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->j:Lpj7;

    new-instance p1, Lsj7;

    invoke-direct {p1, v0, p2}, Lsj7;-><init>(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)V

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->l:Lsj7;

    new-instance v1, Luj7;

    invoke-direct {v1, v0, p2}, Luj7;-><init>(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)V

    iput-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->m:Luj7;

    new-instance v1, Llj7;

    invoke-direct {v1, v0, p2}, Llj7;-><init>(Landroid/content/Context;Lcom/transsion/palmsdk/PalmAuthParam;)V

    iput-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->k:Llj7;

    invoke-virtual {p1}, Lsj7;->e()V

    invoke-virtual {p1}, Lsj7;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    invoke-virtual {p1}, Lsj7;->d()LOooO0OO/OooO00o;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->g:LOooO0OO/OooO00o;

    iget-boolean p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    invoke-virtual {p0, p1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->A(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->h:Z

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/palmsdk/account/XNManager;->d(Lcom/transsion/palmsdk/PalmAuthParam;)V

    :cond_0
    return-void
.end method

.method public static synthetic s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic t(Lcom/transsion/palmsdk/PalmDefaultImpl;)Lcom/transsion/palmsdk/PalmAuthParam;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->h:Z

    return p0
.end method

.method public static synthetic v(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    return p0
.end method

.method public static synthetic w(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmID$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->B(Lcom/transsion/palmsdk/PalmID$b;)V

    return-void
.end method


# virtual methods
.method public A(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    sget p0, Lcom/transsion/xuanniao/account/api/PalmInitialize;->b:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->K:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :goto_1
    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "palmInitialize error: "

    invoke-static {v0}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final B(Lcom/transsion/palmsdk/PalmID$b;)V
    .locals 10

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->copy()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v0

    const-string v1, "auth_param"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v7, Landroid/content/Intent;

    const-string v0, "intent.action.PALM_ACCOUNT_AUTH"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_1

    new-instance v9, Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    move-object v0, v9

    move-object v2, v7

    move-object v3, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/palmsdk/auth/OooO0OO;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lcom/transsion/palmsdk/PalmID$b;Z)V

    invoke-virtual {v9}, Lcom/transsion/palmsdk/auth/OooO0OO;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Landroid/content/Context;Lcom/transsion/palmsdk/PalmID$b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/transsion/palmsdk/PalmDefaultImpl;->d(Landroid/content/Context;ZZLcom/transsion/palmsdk/PalmID$b;)V

    return-void
.end method

.method public d(Landroid/content/Context;ZZLcom/transsion/palmsdk/PalmID$b;)V
    .locals 6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appid"

    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "version"

    const-string v1, "2.0.1.03"

    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ti_s_source"

    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Lwj;

    const-string v0, "sdk_start_auth"

    const/16 v1, 0x1e1e

    invoke-direct {p1, v0, v1}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p1

    invoke-virtual {p1}, Lwj;->b()V

    new-instance v2, Lcom/transsion/palmsdk/PalmDefaultImpl$a;

    invoke-direct {v2, p0, p4}, Lcom/transsion/palmsdk/PalmDefaultImpl$a;-><init>(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmID$b;)V

    iget-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    invoke-static {p1}, Lvj7;->h(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "network unavailable"

    const p1, 0x9ca7

    invoke-virtual {v2, p1, p0}, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->a(ILjava/lang/String;)V

    const-string p0, "ti_s_result"

    const-string p2, "failure"

    invoke-virtual {v3, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "errcode"

    invoke-virtual {v3, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p0, Lwj;

    const-string p1, "sdk_start_auth_callback"

    invoke-direct {p0, p1, v1}, Lwj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v3, v0}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object p0

    invoke-virtual {p0}, Lwj;->b()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/transsion/palmsdk/data/PalmAuthResult;

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/transsion/palmsdk/account/XNManager;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    invoke-virtual {p3, p0}, Lcom/transsion/palmsdk/account/XNManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/transsion/palmsdk/data/PalmAuthResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/transsion/palmsdk/PalmDefaultImpl$a;->b(Lcom/transsion/palmsdk/data/PalmAuthResult;)V

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "palm id is already logged in"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object p1

    iget-object p4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getServerMode()I

    move-result v1

    invoke-virtual {p1, p4, v0, v1}, Lcom/transsion/palmsdk/account/XNManager;->c(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    invoke-static {}, Lxj7;->a()Lxj7;

    move-result-object p1

    new-instance p4, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;

    move-object v0, p4

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;-><init>(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmID$b;Landroid/os/Bundle;ZZ)V

    invoke-virtual {p1, p4}, Lxj7;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    const-string v2, "2.0.1.03"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "param"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lwj;

    const-string v2, "sdk_openapi"

    const/16 v3, 0x1e1e

    invoke-direct {v1, v2, v3}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v1

    invoke-virtual {v1}, Lwj;->b()V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->k:Llj7;

    new-instance v2, Lcom/transsion/palmsdk/PalmDefaultImpl$b;

    invoke-direct {v2, p0, p4, v0}, Lcom/transsion/palmsdk/PalmDefaultImpl$b;-><init>(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmID$a;Landroid/os/Bundle;)V

    invoke-virtual {v1, p1, p2, p3, v2}, Llj7;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/transsion/palmsdk/PalmID$a;)V

    return-void
.end method

.method public i()Lcom/transsion/palmsdk/PalmID$Profile;
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->m:Luj7;

    invoke-virtual {p0}, Luj7;->a()Lcom/transsion/palmsdk/PalmID$Profile;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    const-string v0, "profile"

    invoke-static {p0, v0}, Lcom/transsion/palmsdk/account/PalmAccProvider;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/palmsdk/PalmID$Profile;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/palmsdk/PalmID$Profile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "getProfile error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/palmsdk/account/XNManager;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    const-string v0, "token"

    invoke-static {p0, v0}, Lcom/transsion/palmsdk/account/PalmAccProvider;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "getToken error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public k()J
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/transsion/palmsdk/account/XNManager;->i(Landroid/content/Context;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "getTokenExpiredTs error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public m()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->i:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->m:Luj7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v1

    iget-object p0, p0, Luj7;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/transsion/palmsdk/account/XNManager;->j(Landroid/content/Context;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PalmUserManager isLoggedIn error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :goto_0
    return v0

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_0
    const-string v1, "1"

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    const-string v2, "status"

    invoke-static {p0, v2}, Lcom/transsion/palmsdk/account/PalmAccProvider;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return p0

    :goto_1
    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "isLoggedIn error: "

    invoke-static {v2}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, v2, v1}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    return v0
.end method

.method public n()Z
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->m:Luj7;

    invoke-virtual {p0}, Luj7;->b()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "isOSLoggedIn error: "

    invoke-static {v1}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    const/4 p0, 0x0

    return p0
.end method

.method public o(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const-string p2, "tech.palm.id"

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    const-string v2, "2.0.1.03"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lwj;

    const-string v2, "sdk_open_palm_center"

    const/16 v3, 0x1e1e

    invoke-direct {v1, v2, v3}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v0

    invoke-virtual {v0}, Lwj;->b()V

    const-string v0, "PalmSDK"

    if-nez p1, :cond_0

    const-string p0, "invalid arguments"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLogged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->m()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    :try_start_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.xuanniao.account.center.view.UserCenterActivity"

    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_3
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    :cond_1
    iget-boolean p2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->h:Z

    if-eqz p2, :cond_2

    const-class p2, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    sget v1, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->r:I

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    invoke-direct {v1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :goto_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public p(Lcom/transsion/palmsdk/PalmID$a;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getAppid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    const-string v2, "2.0.1.03"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lwj;

    const-string v2, "sdk_refresh_token"

    const/16 v3, 0x1e1e

    invoke-direct {v1, v2, v3}, Lwj;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v0

    invoke-virtual {v0}, Lwj;->b()V

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->e:Landroid/content/Context;

    invoke-static {p0}, LOooO0OO/OooO0O0;->a(Landroid/content/Context;)LOooO0OO/OooO0O0;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LOooO0OO/OooO0O0;->c(Lcom/transsion/palmsdk/PalmID$a;Z)V

    return-void
.end method

.method public x()Lcom/transsion/palmsdk/PalmAuthParam;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;->f:Lcom/transsion/palmsdk/PalmAuthParam;

    return-object p0
.end method

.method public y(Z)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/transsion/palmsdk/PalmID;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/palmsdk/PalmID$c;

    invoke-interface {v0, p1}, Lcom/transsion/palmsdk/PalmID$c;->onChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "notifyLoggedListener error: "

    invoke-static {v0}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :cond_0
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "PalmSDK newProfile is empty"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/transsion/palmsdk/PalmID$Profile;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/palmsdk/PalmID$Profile;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmID;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/palmsdk/PalmID$d;

    invoke-interface {v0, p1}, Lcom/transsion/palmsdk/PalmID$d;->a(Lcom/transsion/palmsdk/PalmID$Profile;)V

    goto :goto_0

    :cond_1
    const-string p0, "PalmSDK"

    const-string p1, "notifyProfileListener newProfile = null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v0, "notifyProfileListener error: "

    invoke-static {v0}, Lqj7;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Loj7;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Lcom/transsion/core/log/ObjectLogUtils;)V

    :cond_2
    :goto_2
    return-void
.end method
