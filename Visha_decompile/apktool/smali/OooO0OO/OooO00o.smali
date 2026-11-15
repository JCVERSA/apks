.class public LOooO0OO/OooO00o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lcom/transsion/palmsdk/PalmAuthParam;

.field public b:Lcom/transsion/palmsdk/PalmID$a;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/PalmAuthParam;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO00o;->a:Lcom/transsion/palmsdk/PalmAuthParam;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string v0, "xuanniaoId"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    const-string v2, "intent.action.PALM_ID_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "linked_id"

    const-string v4, "linked_pkg"

    const/4 v5, 0x0

    const-string v6, "intent.action.SILENT_LOGOUT"

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    const-string v1, "is_local"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v9, "is_login"

    invoke-virtual {p2, v9, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    sget-object v5, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "palm id change isLocal = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isPalmLogin = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    iget-object v0, p0, LOooO0OO/OooO00o;->a:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->isBindTransID()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/palmsdk/account/XNManager;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object v0

    iget-object v0, v0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {v0, v4}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2}, Lvj7;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "palm id intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " linkedPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/transsion/palmsdk/auth/OooO0o;

    iget-object p0, p0, LOooO0OO/OooO00o;->a:Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-direct {v0, p1, v1, p0, v8}, Lcom/transsion/palmsdk/auth/OooO0o;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/transsion/palmsdk/PalmAuthParam;Lcom/transsion/palmsdk/PalmID$e;)V

    iput-boolean p2, v0, Lcom/transsion/palmsdk/auth/OooO0o;->g:Z

    invoke-virtual {v0}, Lcom/transsion/palmsdk/auth/OooO0o;->a()Z

    if-nez p2, :cond_9

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/transsion/palmsdk/account/XNManager;->f(Landroid/content/Context;Z)Ljava/lang/String;

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/palmsdk/account/XNManager;->j(Landroid/content/Context;)Z

    move-result p0

    const-string v1, "intent.action.inner.SIGN_OUT"

    if-eqz p0, :cond_5

    invoke-static {p1}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object p0

    iget-object p0, p0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {p0, v3}, Lhyperion/hap/IStoreManager;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/transsion/palmsdk/account/XNManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "linkedId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loggedId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_2

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "intent.action.inner.SIGN_IN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_2

    :cond_4
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmID;->l(Landroid/content/Context;)Lcom/transsion/palmsdk/PalmID;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;

    if-eqz p1, :cond_9

    if-eqz v7, :cond_9

    check-cast p0, Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-virtual {p0, v7}, Lcom/transsion/palmsdk/PalmDefaultImpl;->z(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "error_code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p1, -0x1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "error_message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, LOooO0OO/OooO00o;->b:Lcom/transsion/palmsdk/PalmID$a;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/transsion/palmsdk/PalmID$a;->a(ILjava/lang/String;)V

    iput-object v8, p0, LOooO0OO/OooO00o;->b:Lcom/transsion/palmsdk/PalmID$a;

    goto :goto_2

    :cond_7
    iget-object p2, p0, LOooO0OO/OooO00o;->b:Lcom/transsion/palmsdk/PalmID$a;

    if-eqz p2, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0}, Lcom/transsion/palmsdk/PalmID$a;->onSuccess(Ljava/lang/Object;)V

    iput-object v8, p0, LOooO0OO/OooO00o;->b:Lcom/transsion/palmsdk/PalmID$a;

    :cond_8
    invoke-static {p1}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object p0

    iget-object p0, p0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {p0, v3, v7}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object p0

    iget-object p0, p0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {p0, v4, v7}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object p0

    const-string p2, "linked_bd"

    iget-object p0, p0, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {p0, p2, v7}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/transsion/palmsdk/PalmID;->l(Landroid/content/Context;)Lcom/transsion/palmsdk/PalmID;

    move-result-object p0

    instance-of p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl;

    if-eqz p1, :cond_9

    check-cast p0, Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-virtual {p0, v5}, Lcom/transsion/palmsdk/PalmDefaultImpl;->y(Z)V

    :cond_9
    :goto_2
    return-void
.end method
