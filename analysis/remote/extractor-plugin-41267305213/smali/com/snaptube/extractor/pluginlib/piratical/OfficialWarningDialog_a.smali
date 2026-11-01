.class public final Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/pg1;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->d(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Landroid/app/Activity;)V

    return-void
.end method

.method public static final synthetic b(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Landroid/app/Activity;)V
    .locals 1

    const-string v0, "$this_runCatching"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$activity"

    invoke-static {p1, p0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;

    sget-object v0, Lo/xl;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lo/mg8;->a:Lo/mg8;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    return v0

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->e(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    :cond_2
    sget-object v2, Lo/et5;->a:Lo/et5;

    sget-object v4, Lo/xl;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lo/et5;->e(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lo/rf5;

    invoke-direct {v2, p0, v1}, Lo/rf5;-><init>(Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;Landroid/app/Activity;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public final e(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.sensorsdata.analytics.android.sdk.AppStateManager"

    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "getInstance"

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getForegroundActivity"

    invoke-virtual {p1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    return-object v0
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "en"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final h()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->d()Lo/t14;

    move-result-object v0

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final i(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "guide_download"

    invoke-virtual {p0, p1, v0}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "guide_uninstall"

    invoke-virtual {p0, p1, v1}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog$a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final j(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lo/xm3;->d()Lo/xm3;

    move-result-object v0

    invoke-virtual {v0}, Lo/xm3;->g()Lo/af3;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/af3;->b(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lo/xl;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x28

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "be135353437d704f3a37e2b413d040a5ddff4f19"

    invoke-static {v0, p1, v1}, Lo/cu7;->y(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/piratical/OfficialWarningDialog;->c()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lo/et5;->a:Lo/et5;

    invoke-virtual {v0, p1}, Lo/et5;->d(Ljava/lang/String;)V

    :cond_4
    return v2
.end method
