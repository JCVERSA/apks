.class public Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;
.super Ljava/lang/Object;
.source "SourceFile"


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

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method private static avoidNoClassDefFoundError()V
    .locals 2

    .line 1
    const-class v0, Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static checkOfficialWarning()V
    .locals 1

    .line 1
    new-instance v0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ld0/b;->a(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    return p0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    return v0
.end method

.method private static interceptWebAutoDownload(Landroid/content/Context;)V
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/app/Application;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    move-object v0, p0

    .line 7
    check-cast v0, Landroid/app/Application;

    .line 8
    .line 9
    new-instance v1, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil$b;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static setAppContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v1, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getVersionCode(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const v1, 0x472aca

    .line 27
    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    const v1, 0x472a66

    .line 32
    .line 33
    .line 34
    if-eq v0, v1, :cond_1

    .line 35
    .line 36
    const v1, 0x474230

    .line 37
    .line 38
    .line 39
    if-lt v0, v1, :cond_2

    .line 40
    .line 41
    const v1, 0x4748de

    .line 42
    .line 43
    .line 44
    if-ge v0, v1, :cond_2

    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0, p0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->setAppContextToPlugin(Ljava/lang/ClassLoader;Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->avoidNoClassDefFoundError()V

    .line 54
    .line 55
    .line 56
    sget-object p0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->interceptWebAutoDownload(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/utils/z;->f(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/PluginProvider;->init(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->sAppContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {p0}, Ln/c;->k(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->updateFromPlugin()V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->checkOfficialWarning()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static setAppContextToPlugin(Ljava/lang/ClassLoader;Landroid/content/Context;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0}, Lcom/snaptube/extractor/pluginlib/utils/z;->g(Ljava/lang/ClassLoader;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-class v2, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v2, "setAppContext"

    .line 17
    .line 18
    new-array v3, v1, [Ljava/lang/Class;

    .line 19
    .line 20
    const-class v4, Landroid/content/Context;

    .line 21
    .line 22
    aput-object v4, v3, v0

    .line 23
    .line 24
    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p1, v1, v0

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private static updateFromPlugin()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/z;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->updateUnconfirmedTitleRegex()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static updateUnconfirmedTitleRegex()V
    .locals 0

    return-void
.end method
