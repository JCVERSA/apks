.class public Lfw3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field public static c:Landroid/content/Context;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:J

.field public static h:J


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lfw3;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sput-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-static {p2}, Lfw3;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "android_id"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static b()J
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-object v0, Lfw3;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lfw3;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FirebaseImpl"

    const-string v2, "Failed to get version name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    :goto_0
    sget-object v1, Lfw3;->c:Landroid/content/Context;

    invoke-static {v1}, Lfw3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfw3;->e:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lfw3;->f:Ljava/lang/String;

    invoke-static {}, Lfw3;->b()J

    move-result-wide v1

    sput-wide v1, Lfw3;->g:J

    sget-object v1, Lfw3;->c:Landroid/content/Context;

    invoke-static {v1}, Lfw3;->c(Landroid/content/Context;)J

    move-result-wide v1

    sput-wide v1, Lfw3;->h:J

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lfw3;->d:Ljava/lang/String;

    sget-object v1, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v2, "Channel"

    invoke-virtual {v1, v2, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "countryLanguage"

    sget-object v2, Lfw3;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "Model"

    sget-object v2, Lfw3;->f:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "gaid"

    sget-object v2, Lfw3;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    sget-object v1, Lfw3;->c:Landroid/content/Context;

    sget-wide v2, Lfw3;->h:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "emmcsize"

    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    sget-object v1, Lfw3;->c:Landroid/content/Context;

    sget-wide v2, Lfw3;->g:J

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "memsize"

    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    const-string v1, "versionName"

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lfw3;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lfw3;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lfw3;->d(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public f()V
    .locals 0

    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->resetAnalyticsData()V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lfw3;->a:Z

    return-void
.end method

.method public i(Z)V
    .locals 0

    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setAnalyticsCollectionEnabled(Z)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 0

    sget-object p3, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lfw3;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lfw3;->b:Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void
.end method
