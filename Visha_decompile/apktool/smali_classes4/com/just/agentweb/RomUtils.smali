.class public final Lcom/just/agentweb/RomUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/RomUtils$RomInfo;
    }
.end annotation


# static fields
.field private static final ROM_HUAWEI:[Ljava/lang/String;

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final VERSION_PROPERTY_HUAWEI:Ljava/lang/String; = "ro.build.version.emui"

.field private static bean:Lcom/just/agentweb/RomUtils$RomInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "huawei"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "u can\'t instantiate me..."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getBrand()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method private static getManufacturer()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getRomInfo()Lcom/just/agentweb/RomUtils$RomInfo;
    .locals 4

    sget-object v0, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/just/agentweb/RomUtils$RomInfo;

    invoke-direct {v0}, Lcom/just/agentweb/RomUtils$RomInfo;-><init>()V

    sput-object v0, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    invoke-static {}, Lcom/just/agentweb/RomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/just/agentweb/RomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/just/agentweb/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/just/agentweb/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v0, v1}, Lcom/just/agentweb/RomUtils$RomInfo;->b(Lcom/just/agentweb/RomUtils$RomInfo;Ljava/lang/String;)V

    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/just/agentweb/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    sget-object v0, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/just/agentweb/RomUtils$RomInfo;->c(Lcom/just/agentweb/RomUtils$RomInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    invoke-static {v1, v0}, Lcom/just/agentweb/RomUtils$RomInfo;->c(Lcom/just/agentweb/RomUtils$RomInfo;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    return-object v0

    :cond_2
    sget-object v0, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    invoke-static {v0, v1}, Lcom/just/agentweb/RomUtils$RomInfo;->b(Lcom/just/agentweb/RomUtils$RomInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    const-string v1, ""

    invoke-static {v1}, Lcom/just/agentweb/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/just/agentweb/RomUtils$RomInfo;->c(Lcom/just/agentweb/RomUtils$RomInfo;Ljava/lang/String;)V

    sget-object v0, Lcom/just/agentweb/RomUtils;->bean:Lcom/just/agentweb/RomUtils$RomInfo;

    return-object v0
.end method

.method private static getRomVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/just/agentweb/RomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknown"

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/just/agentweb/RomUtils;->getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-object p0
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "build.prop"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p0, "getSystemPropertyByStream error"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "RomUtils"

    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static isHuawei()Z
    .locals 2

    sget-object v0, Lcom/just/agentweb/RomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {}, Lcom/just/agentweb/RomUtils;->getRomInfo()Lcom/just/agentweb/RomUtils$RomInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/just/agentweb/RomUtils$RomInfo;->a(Lcom/just/agentweb/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static varargs isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
