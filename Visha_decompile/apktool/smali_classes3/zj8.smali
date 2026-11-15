.class public abstract Lzj8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/content/Context;ZLjava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lzj8;->e(Landroid/content/Context;ZLjava/lang/Void;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const-string v0, "com.google.firebase.messaging"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lzj8;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "proxy_notification_initialized"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/SharedPreferences;Z)Z
    .locals 3

    const-string v0, "proxy_retention"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static synthetic e(Landroid/content/Context;ZLjava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1}, Lzj8;->h(Landroid/content/Context;Z)V

    return-void
.end method

.method public static f(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lzj8;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "proxy_notification_initialized"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static g(Landroid/content/Context;Lwi4;Z)V
    .locals 2

    invoke-static {}, Ld28;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lzj8;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, p2}, Lzj8;->d(Landroid/content/SharedPreferences;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lwi4;->k(Z)Lxda;

    move-result-object p1

    new-instance v0, Lur1;

    invoke-direct {v0}, Lur1;-><init>()V

    new-instance v1, Lyj8;

    invoke-direct {v1, p0, p2}, Lyj8;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1, v0, v1}, Lxda;->g(Ljava/util/concurrent/Executor;Llf7;)Lxda;

    :cond_1
    return-void
.end method

.method public static h(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lzj8;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "proxy_retention"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
