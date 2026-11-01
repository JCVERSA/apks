.class public Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;
.super Ljava/lang/Object;


# static fields
.field private static final INTENT_EXTRA_AUTO_DOWNLOAD:Ljava/lang/String; = "auto_download"

.field public static final METHOD_SET_CONTEXT:Ljava/lang/String; = "setAppContext"

.field private static sAppContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private static avoidNoClassDefFoundError()V
    .locals 2

    const-class v0, Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static checkOfficialWarning()V
    .locals 1

    new-instance v0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$a;

    invoke-direct {v0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$a;-><init>()V

    invoke-static {v0}, Lo/y48;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static interceptWebAutoDownload(Landroid/content/Context;)V
    .locals 2

    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$b;

    invoke-direct {v1, p0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eq v0, v1, :cond_2

    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    const v1, 0x472aca

    if-eq v0, v1, :cond_1

    const v1, 0x472a66

    if-eq v0, v1, :cond_1

    const v1, 0x474230

    if-lt v0, v1, :cond_2

    const v1, 0x4748de

    if-ge v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->setAppContextToPlugin(Ljava/lang/ClassLoader;Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->avoidNoClassDefFoundError()V

    sget-object p0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->interceptWebAutoDownload(Landroid/content/Context;)V

    sget-object p0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lo/pz5;->e(Landroid/content/Context;)V

    sget-object p0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->init(Landroid/content/Context;)V

    sget-object p0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    invoke-static {p0}, Lo/w44;->k(Landroid/content/Context;)V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->updateFromPlugin()V

    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->checkOfficialWarning()V

    return-void
.end method

.method public static setAppContextToPlugin(Ljava/lang/ClassLoader;Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "setAppContext"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static updateFromPlugin()V
    .locals 1

    invoke-static {}, Lo/pz5;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->updateUnconfirmedTitleRegex()V

    return-void
.end method

.method private static updateUnconfirmedTitleRegex()V
    .locals 0

    return-void
.end method
