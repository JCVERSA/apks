.class public Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/palmsdk/PalmDefaultImpl;->d(Landroid/content/Context;ZZLcom/transsion/palmsdk/PalmID$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/transsion/palmsdk/PalmID$b;

.field public final synthetic OooO0O0:Landroid/os/Bundle;

.field public final synthetic OooO0OO:Z

.field public final synthetic OooO0Oo:Z

.field public final synthetic OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;


# direct methods
.method public constructor <init>(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmID$b;Landroid/os/Bundle;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    iput-object p2, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$b;

    iput-object p3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0O0:Landroid/os/Bundle;

    iput-boolean p4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0OO:Z

    iput-boolean p5, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0Oo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$OooO00o;

    invoke-direct {v1, p0, v0}, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$OooO00o;-><init>(Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;Landroid/os/Bundle;)V

    new-instance v2, Lcom/transsion/palmsdk/data/PalmAuthRequest;

    iget-object v3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v3}, Lcom/transsion/palmsdk/PalmDefaultImpl;->t(Lcom/transsion/palmsdk/PalmDefaultImpl;)Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v4}, Lcom/transsion/palmsdk/PalmDefaultImpl;->u(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z

    move-result v4

    invoke-direct {v2, v3, v4, v1}, Lcom/transsion/palmsdk/data/PalmAuthRequest;-><init>(Lcom/transsion/palmsdk/PalmAuthParam;ZLcom/transsion/palmsdk/auth/OooO00o;)V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->t(Lcom/transsion/palmsdk/PalmDefaultImpl;)Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->hasTudc()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->t(Lcom/transsion/palmsdk/PalmDefaultImpl;)Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->getTudcSpName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnj7;->a(Ljava/lang/String;)Lnj7;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v3}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnj7;->b(Landroid/content/Context;)V

    :cond_0
    iget-boolean v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0OO:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "tech.palm.id"

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v3, "palm_sdk_version"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1.0.2.05"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->n()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0Oo:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$b;

    const v0, 0x9ca9

    const-string v1, "palm id not login"

    invoke-interface {p0, v0, v1}, Lcom/transsion/palmsdk/PalmID$b;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    const-string v1, "1"

    iget-object v3, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v3}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "userLogout"

    invoke-static {v3, v4}, Lcom/transsion/palmsdk/account/PalmAccProvider;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$b;

    const-string v3, "user logout before"

    const/16 v4, 0x7530

    invoke-interface {v1, v4, v3}, Lcom/transsion/palmsdk/PalmID$b;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    :cond_2
    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$b;

    const v0, 0x9ca6

    const-string v1, "not support silent mode"

    invoke-interface {p0, v0, v1}, Lcom/transsion/palmsdk/PalmID$b;->a(ILjava/lang/String;)V

    return-void

    :catch_1
    :cond_3
    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->t(Lcom/transsion/palmsdk/PalmDefaultImpl;)Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/palmsdk/PalmAuthParam;->ignorePalmApp()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v1}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lvj7;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    sget-object v4, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "palm id intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v4}, Lcom/transsion/palmsdk/PalmDefaultImpl;->t(Lcom/transsion/palmsdk/PalmDefaultImpl;)Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/palmsdk/PalmAuthParam;->copy()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v5}, Lcom/transsion/palmsdk/PalmDefaultImpl;->u(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v3}, Lcom/transsion/palmsdk/PalmAuthParam;->setShowPreLogin(Z)V

    :cond_5
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string v5, "auth_param"

    invoke-virtual {v10, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "host_mode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v10, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0OO:Z

    const-string v5, "silent_mode"

    invoke-virtual {v10, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v4}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lvj7;->i(Landroid/content/Context;)Z

    move-result v4

    const-string v5, "auto_jump_login"

    if-nez v4, :cond_6

    invoke-virtual {v10, v5, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    iget-boolean v4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0Oo:Z

    invoke-virtual {v10, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    new-instance v11, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;

    invoke-direct {v11, p0, v0, v2}, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0$a;-><init>(Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;Landroid/os/Bundle;Lcom/transsion/palmsdk/data/PalmAuthRequest;)V

    :goto_2
    const/4 v0, 0x2

    if-ge v3, v0, :cond_8

    new-instance v0, Lcom/transsion/palmsdk/auth/OooO0OO;

    iget-object v4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v4}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object v5

    iget-object v4, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v4}, Lcom/transsion/palmsdk/PalmDefaultImpl;->v(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z

    move-result v9

    move-object v4, v0

    move-object v6, v1

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v4 .. v9}, Lcom/transsion/palmsdk/auth/OooO0OO;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Lcom/transsion/palmsdk/PalmID$b;Z)V

    invoke-virtual {v0}, Lcom/transsion/palmsdk/auth/OooO0OO;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->u(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {v0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->v(Lcom/transsion/palmsdk/PalmDefaultImpl;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    invoke-static {p0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->s(Lcom/transsion/palmsdk/PalmDefaultImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object p0

    invoke-virtual {p0, v2}, Law7;->d(Lcom/transsion/palmsdk/data/PalmAuthRequest;)V

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO0o0:Lcom/transsion/palmsdk/PalmDefaultImpl;

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmDefaultImpl$OooO0O0;->OooO00o:Lcom/transsion/palmsdk/PalmID$b;

    invoke-static {v0, p0}, Lcom/transsion/palmsdk/PalmDefaultImpl;->w(Lcom/transsion/palmsdk/PalmDefaultImpl;Lcom/transsion/palmsdk/PalmID$b;)V

    :cond_a
    :goto_3
    return-void
.end method
