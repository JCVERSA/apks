.class Lcom/cloud/tmc/miniutils/util/UtilsBridge;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/util/UtilsBridge$FileHead;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UtilsBridge"

.field private static mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->mainHandler:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->lambda$getApplicationByReflect$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static addActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static addOnAppStatusChangedListener(Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->addOnAppStatusChangedListener(Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static base64Decode([B)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncodeUtils;->base64Decode([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static base64Encode([B)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/EncodeUtils;->base64Encode([B)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object p0

    return-object p0
.end method

.method static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static byte2FitMemorySize(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/ConvertUtils;->byte2FitMemorySize(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bytes2Drawable([B)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->bytes2Drawable([B)Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bytes2HexString([B)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ConvertUtils;->bytes2HexString([B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static createFileByDeleteOldFile(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createFileByDeleteOldFile(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static createOrExistsDir(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsDir(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static createOrExistsFile(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->createOrExistsFile(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static deleteAllInDir(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->deleteAllInDir(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static dp2px(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B

    move-result-object p0

    return-object p0
.end method

.method static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object p0

    return-object p0
.end method

.method static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static finishAllActivities()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->finishAllActivities()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static fixSoftInputLeaks(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/KeyboardUtils;->fixSoftInputLeaks(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static getActivityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getActivityList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static getAppScreenWidth()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getAppScreenWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static getApplicationByReflect()Landroid/app/Application;
    .locals 7

    .line 1
    const-string v0, "getApplicationByReflect: "

    .line 2
    .line 3
    const-string v1, "UtilsBridge"

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getApplicationByReflect()Landroid/app/Application;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 31
    .line 32
    .line 33
    :try_start_0
    new-instance v4, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    .line 41
    .line 42
    new-instance v5, Lcom/cloud/tmc/miniutils/util/n;

    .line 43
    .line 44
    invoke-direct {v5, v2, v3}, Lcom/cloud/tmc/miniutils/util/n;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 51
    .line 52
    const-wide/16 v5, 0x1388

    .line 53
    .line 54
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    .line 60
    const-string v3, "getApplicationByReflect: get app by reflection"

    .line 61
    .line 62
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    return-object v3

    .line 72
    :catchall_0
    move-exception v3

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception v3

    .line 75
    goto :goto_1

    .line 76
    :goto_0
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 88
    .line 89
    .line 90
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/app/Application;

    .line 95
    .line 96
    return-object v0
.end method

.method static getDialIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/IntentUtils;->getDialIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static getFileByPath(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static getFsAvailableSize(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->getFsAvailableSize(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static getFsTotalSize(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->getFsTotalSize(Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static getInstallAppIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/IntentUtils;->getInstallAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/IntentUtils;->getInstallAppIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/IntentUtils;->getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static getLaunchAppIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/IntentUtils;->getLaunchAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getLauncherActivity(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static getNavBarHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/BarUtils;->getNavBarHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static getSendSmsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/IntentUtils;->getSendSmsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static getStatusBarHeight()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/BarUtils;->getStatusBarHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/StringUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getTopActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static getUninstallAppIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/IntentUtils;->getUninstallAppIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static hashTemplate([BLjava/lang/String;)[B
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static init(Landroid/app/Application;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ProcessUtils;->isMiniProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->init(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "init: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "UtilsBridge"

    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method static inputStream2Bytes(Ljava/io/InputStream;)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ConvertUtils;->inputStream2Bytes(Ljava/io/InputStream;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static inputStream2Lines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/ConvertUtils;->inputStream2Lines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static isActivityAlive(Landroid/app/Activity;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static isAppDebug()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/AppUtils;->isAppDebug()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static isAppForeground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->isAppForeground()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method static isAppInstalled(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static isFileExists(Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->isFileExists(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static varargs isGranted([Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGranted([Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static isGrantedDrawOverlays()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGrantedDrawOverlays()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static isIntentAvailable(Landroid/content/Intent;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/IntentUtils;->isIntentAvailable(Landroid/content/Intent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static isLayoutRtl()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static isSDCardEnableByEnvironment()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/SDCardUtils;->isSDCardEnableByEnvironment()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static isSpace(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/StringUtils;->isSpace(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static synthetic lambda$getApplicationByReflect$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->getApplicationByReflect()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static layoutId2View(I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->layoutId2View(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static notifySystemToScan(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/FileUtils;->notifySystemToScan(Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static px2dp(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->px2dp(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static px2sp(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->px2sp(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static relaunchApp()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/AppUtils;->relaunchApp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static removeActivityLifecycleCallbacks(Landroid/app/Activity;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacks(Landroid/app/Activity;)V

    return-void
.end method

.method static removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacks(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static removeActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacks(Lcom/cloud/tmc/miniutils/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static removeOnAppStatusChangedListener(Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->removeOnAppStatusChangedListener(Lcom/cloud/tmc/miniutils/util/Utils$OnAppStatusChangedListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->mainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static sp2px(F)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->sp2px(F)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static startHomeActivity()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->startHomeActivity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static unInit(Landroid/app/Application;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ProcessUtils;->isMiniProcess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsActivityLifecycleImpl;->unInit(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "unInit: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "UtilsBridge"

    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-void
.end method

.method static uri2File(Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/UriUtils;->uri2File(Landroid/net/Uri;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniutils/util/ImageUtils;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniutils/util/FileIOUtils;->writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
