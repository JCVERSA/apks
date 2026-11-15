.class public Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;
.super Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/palmsdk/auth/OooO0OO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/auth/OooO0OO;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    invoke-direct {p0}, Lcom/transsion/palmsdk/auth/OooO00o$OooO00o;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Landroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "linked_bd"

    const-string v1, "linked_id"

    const-string v2, "linked_pkg"

    iget-object v3, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object v4, v3, Lcom/transsion/palmsdk/auth/OooO0OO;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/transsion/palmsdk/auth/OooO0OO;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    iget-object v4, v3, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const-class v3, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v3, "token_info"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-boolean v7, v6, Lcom/transsion/palmsdk/auth/OooO0OO;->g:Z

    if-eqz v7, :cond_1

    iget-object v6, v6, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    invoke-static {v6}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object v6

    iget-object v6, v6, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {v6, v2, v3}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object v2, v2, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    invoke-static {v2}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object v2

    iget-object v2, v2, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {v2, v1, v4}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_3

    iget-object v1, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object v1, v1, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    invoke-static {v1}, Lmj7;->a(Landroid/content/Context;)Lmj7;

    move-result-object v1

    iget-object v1, v1, Lmj7;->a:Lhyperion/hap/IStoreManager;

    invoke-interface {v1, v0, v5}, Lhyperion/hap/IStoreManager;->saveString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, v6, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "linkedPkg"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "linkedId"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    const-string v1, "linkedBd"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object v1, v1, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object v3, v3, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    sget-object v4, Lcom/transsion/palmsdk/account/PalmAccProvider;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".PalmAccProvider"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/linked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v1, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->f:Lcom/transsion/palmsdk/PalmID$b;

    if-eqz p0, :cond_5

    new-instance v0, Lcom/transsion/palmsdk/data/PalmAuthResult;

    invoke-direct {v0, p1}, Lcom/transsion/palmsdk/data/PalmAuthResult;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Lcom/transsion/palmsdk/PalmID$b;->b(Lcom/transsion/palmsdk/data/PalmAuthResult;)V

    goto :goto_2

    :cond_4
    const-string v0, "error_code"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "error_message"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->f:Lcom/transsion/palmsdk/PalmID$b;

    if-eqz p0, :cond_5

    invoke-interface {p0, v0, p1}, Lcom/transsion/palmsdk/PalmID$b;->a(ILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCancel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object v1, v0, Lcom/transsion/palmsdk/auth/OooO0OO;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/palmsdk/auth/OooO0OO;->b:Lcom/transsion/palmsdk/auth/OooO0O0;

    iget-object v1, v0, Lcom/transsion/palmsdk/auth/OooO0OO;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0OO$OooO00o;->OooO0O0:Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object p0, p0, Lcom/transsion/palmsdk/auth/OooO0OO;->f:Lcom/transsion/palmsdk/PalmID$b;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/transsion/palmsdk/PalmID$b;->onCancel()V

    :cond_1
    return-void
.end method
