.class public abstract LOppOOp0/OppO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# static fields
.field public static i:Ljava/util/ArrayList;

.field public static j:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Ljava/lang/Class;

.field public final d:Landroid/content/Context;

.field public e:Ljava/lang/ref/SoftReference;

.field public f:Lmk7;

.field public g:I

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, LOppOOp0/OppO0O0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/login/login-by-password-with-captcha-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/account/get-profile-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/account/update-profile-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/account/bind-phone-email-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/app/address/list-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/app/address/new-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/app/address/update-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/login/login-by-third-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/password/new-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/password/reset-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/password/change-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/password/verify-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/sdk/verification/verify-code-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    const-string v1, "/client/token-crypt"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, LOppOOp0/OppO0O0;->g:I

    iput v0, p0, LOppOOp0/OppO0O0;->h:I

    .line 11
    iput-object p2, p0, LOppOOp0/OppO0O0;->c:Ljava/lang/Class;

    .line 12
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    .line 14
    new-instance p2, Ljava/lang/ref/SoftReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, LOppOOp0/OppO0O0;->e:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LOppOOp0/OppO0O0;->g:I

    iput v0, p0, LOppOOp0/OppO0O0;->h:I

    .line 3
    iput-object p2, p0, LOppOOp0/OppO0O0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, LOppOOp0/OppO0O0;->c:Ljava/lang/Class;

    .line 5
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    .line 7
    new-instance p2, Ljava/lang/ref/SoftReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, LOppOOp0/OppO0O0;->e:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;-><init>()V

    sget-object v1, Lao7$a;->a:Lao7;

    iget-object v2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lao7;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;->publicKey1061:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x190

    const/4 v4, 0x0

    const-string v5, "com.palm.id.log"

    if-eqz v2, :cond_0

    const-string v0, "applyKey publicKey1061 = null"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;-><init>()V

    iput v3, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    iget-object v1, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    sget-object p0, LOppOOp0/OppO0O0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    iget-object v2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lao7;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;->keyId:Ljava/lang/String;

    iget-object v1, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-static {v1}, Lmp7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/ApplyKeyReq;->deviceId:Ljava/lang/String;

    iget-object v1, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget-object v2, Lcr7$b;->a:Lcr7;

    invoke-virtual {v2, v1}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v2, Lzn7;

    invoke-direct {v2}, Lzn7;-><init>()V

    const-string v6, "/sdk/config/apply-key"

    invoke-static {v6}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v1, v6, v0}, Lzn7;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v1}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "applyKey -----> isSuccessful"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, LOppOOp0/OppO0O0;->h()V

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " applyKey -----> ERROR_PARAM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " applyKey -----> data.code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, v2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    iget-object v0, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, v2}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " applyKey ----->"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    sget-object p0, LOppOOp0/OppO0O0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_3
    sget-object v0, LOppOOp0/OppO0O0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method

.method public abstract b(ILjava/lang/Object;Ljava/lang/String;)V
.end method

.method public c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V
    .locals 2

    invoke-virtual {p0}, LOppOOp0/OppO0O0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Llk7$a;->a:Llk7;

    new-instance v1, LOppOOp0/OppO0O0$OppO00p;

    invoke-direct {v1, p0, p1}, LOppOOp0/OppO0O0$OppO00p;-><init>(LOppOOp0/OppO0O0;Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    iget-object p0, v0, Llk7;->a:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, LOppOOp0/OppO0O0;->e:Ljava/lang/ref/SoftReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    if-eqz p2, :cond_1

    move-object p2, p0

    check-cast p2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, LOppOOp0/OppO0O0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Llk7$a;->a:Llk7;

    new-instance v1, LOppOOp0/OppO0O0$OppO0O0;

    invoke-direct {v1, p0, p1}, LOppOOp0/OppO0O0$OppO0O0;-><init>(LOppOOp0/OppO0O0;Ljava/lang/Object;)V

    iget-object p0, v0, Llk7;->a:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, LOppOOp0/OppO0O0;->e:Ljava/lang/ref/SoftReference;

    const/4 v0, 0x1

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public abstract g()V
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, LOppOOp0/OppO0O0;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Llk7$a;->a:Llk7;

    new-instance v1, LOppOOp0/OppO0O0$OppO0OO;

    invoke-direct {v1, p0}, LOppOOp0/OppO0O0$OppO0OO;-><init>(LOppOOp0/OppO0O0;)V

    iget-object p0, v0, Llk7;->a:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 6

    iget v0, p0, LOppOOp0/OppO0O0;->g:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LOppOOp0/OppO0O0;->g:I

    const-string v0, " refreshToken"

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lao7$a;->a:Lao7;

    iget-object v3, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lao7;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "refreshToken"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget-object v4, Lcr7$b;->a:Lcr7;

    invoke-virtual {v4, v3}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v4, Lzn7;

    invoke-direct {v4}, Lzn7;-><init>()V

    const-string v5, "/sdk/login/refresh-token"

    invoke-static {v5}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v0}, Lzn7;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, v3, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-virtual {v4, v3}, Lcr7;->b(Landroid/content/Context;)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    const-string v4, " refreshToken -----> isSuccessful"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;

    iget-object v4, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    iget-object v5, v3, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->accessToken:Ljava/lang/String;

    iget-object v3, v3, Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;->refreshToken:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lao7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-static {v2}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ltl7;->d(J)V

    invoke-virtual {v2}, Lkk7;->b()V

    invoke-virtual {p0}, LOppOOp0/OppO0O0;->h()V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_5

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " refreshToken -----> ERROR_PARAM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    const-class v4, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " refreshToken -----> data.code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v4, 0x61a86

    if-ne v3, v4, :cond_4

    const-string v3, ""

    iput-object v3, v2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, v2}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    sget-object v2, Llk7$a;->a:Llk7;

    new-instance v3, LOppOOp0/OppO0OO;

    invoke-direct {v3, p0}, LOppOOp0/OppO0OO;-><init>(LOppOOp0/OppO0O0;)V

    iget-object v2, v2, Llk7;->a:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {v3}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;-><init>()V

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, v3, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    iget-object v0, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, v3}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " refreshToken ----->"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "onFailure IOException response ----->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;-><init>()V

    instance-of p2, p2, Ljava/net/SocketTimeoutException;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iput v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    iget-object p2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_request_timeout:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    goto :goto_0

    :cond_0
    iput v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    iget-object p2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    :goto_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 11

    const-string v0, "com.palm.id.log"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResponse code ----->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-class v3, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    :try_start_1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " response -----> success"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v6

    move v7, v2

    :goto_0
    sget-object v8, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    sget-object v8, LOppOOp0/OppO0O0;->i:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_3

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    const-class v2, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    invoke-virtual {v5, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/model/data/EncryptRes;

    invoke-virtual {v2}, Lcom/transsion/xuanniao/account/model/data/EncryptRes;->checkSign()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, LOppOOp0/OppO0O0;->f:Lmk7;

    invoke-virtual {v2, v1}, Lcom/transsion/xuanniao/account/model/data/EncryptRes;->dataJson(Lmk7;)Ljava/lang/String;

    move-result-object v1

    const-string v4, " response -----> checkSign success"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, LOppOOp0/OppO0O0;->f:Lmk7;

    iget-object v4, v4, Lmk7;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Lcom/transsion/xuanniao/account/model/data/EncryptRes;->isSafe(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, " response -----> not safe"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object v2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, v1}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    return-void

    :cond_3
    invoke-virtual {v5, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object v2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, v1}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    return-void

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " response -----> noSign "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, LOppOOp0/OppO0O0;->c:Ljava/lang/Class;

    invoke-virtual {v5, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, LOppOOp0/OppO0O0;->e(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " response -----> null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LOppOOp0/OppO0O0;->e(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v5, 0x190

    if-ne v1, v5, :cond_d

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " response -----> error param"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget v3, v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v5, 0x61bad

    if-ne v3, v5, :cond_8

    sget-object v1, LOppOOp0/OppO0O0;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, LOppOOp0/OppO0O0;->a()V

    goto/16 :goto_4

    :cond_8
    const v5, 0x61bae

    if-ne v3, v5, :cond_a

    iget-object v3, v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    if-eqz v3, :cond_f

    iget v5, p0, LOppOOp0/OppO0O0;->h:I

    add-int/2addr v5, v4

    iput v5, p0, LOppOOp0/OppO0O0;->h:I

    iget-wide v5, v3, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->currentTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    iget-object v3, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->getValidPeriod(Landroid/content/Context;)J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-gtz v3, :cond_9

    const-wide/16 v5, 0x0

    :cond_9
    iget-object v3, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-static {v3}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object v3

    const-string v7, "key_time_diff"

    invoke-virtual {v3}, Lkk7;->a()V

    iget-object v8, v3, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v3}, Lkk7;->b()V

    invoke-virtual {p0}, LOppOOp0/OppO0O0;->h()V

    iget v3, p0, LOppOOp0/OppO0O0;->h:I

    if-le v3, v4, :cond_f

    iget-object v3, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, v1}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    iput v2, p0, LOppOOp0/OppO0O0;->h:I

    goto/16 :goto_4

    :cond_a
    const v2, 0x61a80

    if-ne v3, v2, :cond_c

    iget-object v2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    invoke-static {v2}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object v2

    invoke-virtual {v2}, Ltl7;->h()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Llk7$a;->a:Llk7;

    new-instance v3, LOppOOp0/OppO0OO;

    invoke-direct {v3, p0}, LOppOOp0/OppO0OO;-><init>(LOppOOp0/OppO0O0;)V

    iget-object v2, v2, Llk7;->a:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    invoke-virtual {p0, v1}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    goto/16 :goto_4

    :cond_c
    invoke-virtual {p0, v1}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x191

    const-string v4, " response ----->"

    if-ne v1, v2, :cond_e

    :try_start_2
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, LOppOOp0/OppO0O0;->i()V

    goto/16 :goto_4

    :cond_e
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    iget-object v3, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v5, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "Exception response ----->"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;

    invoke-direct {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    iput p2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    iget-object p2, p0, LOppOOp0/OppO0O0;->d:Landroid/content/Context;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, LOppOOp0/OppO0O0;->c(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;)V

    :cond_f
    :goto_4
    return-void
.end method
