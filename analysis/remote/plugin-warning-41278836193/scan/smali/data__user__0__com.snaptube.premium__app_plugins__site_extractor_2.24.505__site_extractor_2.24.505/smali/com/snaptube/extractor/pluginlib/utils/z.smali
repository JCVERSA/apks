.class public abstract Lcom/snaptube/extractor/pluginlib/utils/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/z;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/z;->c:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method public static c()I
    .locals 1

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/z;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/z;->d(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Lcom/snaptube/extractor/pluginlib/utils/z;->a:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 20
    .line 21
    sput p0, Lcom/snaptube/extractor/pluginlib/utils/z;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    return v0
.end method

.method public static e()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/snaptube/extractor/pluginlib/utils/z;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/snaptube/extractor/pluginlib/utils/z;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sput-object p0, Lcom/snaptube/extractor/pluginlib/utils/z;->b:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method

.method public static g(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sput-object p0, Lcom/snaptube/extractor/pluginlib/utils/z;->c:Ljava/lang/ClassLoader;

    .line 5
    .line 6
    return-void
.end method
