.class public Lcom/transsion/athena/taaneh/anehat;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z

.field private static d:J

.field public static final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/athena/taaneh/anehat;->b:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/transsion/athena/taaneh/anehat;->c:Z

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    sput-wide v0, Lcom/transsion/athena/taaneh/anehat;->d:J

    .line 14
    .line 15
    return-void
.end method

.method public static a(J)I
    .locals 2

    const-wide/16 v0, 0x3e7

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 15
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-le p0, v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 2
    const-string v0, "athena_id"

    sget-object v1, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;)Lcom/transsion/athena/taaneh/athena$aethna;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/transsion/athena/taaneh/athena$aethna;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-static {p0}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lm4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    sget-object v3, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    sget-object v2, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lm4/a;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 11
    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-static {p0}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v0}, Lm4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    .line 14
    :cond_1
    sget-object p0, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    const-string v0, "Athena"

    const-string v1, "------------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v2, ""

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 19
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 20
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_2

    if-eqz v3, :cond_2

    .line 21
    array-length v0, v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    aget-object v5, v3, v4

    .line 22
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    return v2

    .line 23
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 24
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1

    :catch_1
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    return v2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 3
    sget-object v0, Lcom/transsion/athena/taaneh/anehat;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/transsion/sdk/oneid/OneID;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 7
    sget-wide v3, Lcom/transsion/athena/taaneh/anehat;->d:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    sub-long v3, v1, v3

    const-wide/32 v7, 0x927c0

    cmp-long v3, v3, v7

    if-ltz v3, :cond_3

    .line 8
    :cond_1
    invoke-static {p0}, Lm4/b;->b(Landroid/content/Context;)Lm4/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lm4/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sput-wide v5, Lcom/transsion/athena/taaneh/anehat;->d:J

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 12
    :cond_2
    sput-wide v1, Lcom/transsion/athena/taaneh/anehat;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/transsion/athena/taaneh/anehat;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()Z
    .locals 1

    .line 14
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static b(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e7

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x270f

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .line 15
    :try_start_0
    sget-boolean v0, Lcom/transsion/athena/taaneh/anehat;->c:Z

    if-eqz v0, :cond_1

    .line 16
    invoke-static {p0}, Lm4/a;->a(Landroid/content/Context;)Lm4/a;

    move-result-object v0

    const-string v1, "first_launch"

    invoke-virtual {v0, v1}, Lm4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 18
    sput-boolean v1, Lcom/transsion/athena/taaneh/anehat;->c:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/transsion/athena/config/data/model/ehanat;->j:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "global.cfg"

    invoke-direct {v0, p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 21
    sput-boolean v1, Lcom/transsion/athena/taaneh/anehat;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 22
    :goto_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 23
    :cond_1
    :goto_1
    sget-boolean p0, Lcom/transsion/athena/taaneh/anehat;->c:Z

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    const-string v1, "com.hoffnung"

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    array-length v1, p0

    .line 19
    move v2, v0

    .line 20
    :goto_0
    if-ge v2, v1, :cond_1

    .line 21
    .line 22
    aget-object v3, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    const-string v4, "com.transsion.dataservice.provider"

    .line 25
    .line 26
    :try_start_1
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return v0
.end method
