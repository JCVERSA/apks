.class public Lcom/pgl/ssdk/u;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:[[J

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/pgl/ssdk/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 3
    sget-object v0, Lcom/pgl/ssdk/u;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "boot_count"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/pgl/ssdk/u;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "lowapi"

    .line 6
    sput-object p0, Lcom/pgl/ssdk/u;->a:Ljava/lang/String;

    .line 7
    :goto_0
    sget-object p0, Lcom/pgl/ssdk/u;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/pgl/ssdk/u;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/pgl/ssdk/u;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/16 v0, 0x9c

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 0

    .line 5
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 15
    sget-object v0, Lcom/pgl/ssdk/u;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    sget-object v0, Lcom/pgl/ssdk/u;->c:Ljava/lang/String;

    return-object v0

    .line 17
    :cond_0
    invoke-static {}, Lcom/pgl/ssdk/x;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "romtype"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pgl/ssdk/u0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pgl/ssdk/u;->c:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    sget-object v0, Lcom/pgl/ssdk/u;->c:Ljava/lang/String;

    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/pgl/ssdk/u$a;

    invoke-direct {v0}, Lcom/pgl/ssdk/u$a;-><init>()V

    invoke-static {v0}, Lcom/pgl/ssdk/o0;->b(Ljava/lang/Runnable;)V

    const-string v0, ""

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .line 14
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)[Lorg/json/JSONArray;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1
    sget-object v3, Lcom/pgl/ssdk/u;->b:[[J

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/16 v3, 0x9d

    .line 2
    invoke-static {v3, p0, v4}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[J

    sput-object p0, Lcom/pgl/ssdk/u;->b:[[J

    .line 3
    :cond_0
    sget-object p0, Lcom/pgl/ssdk/u;->b:[[J

    if-eqz p0, :cond_2

    array-length p0, p0

    if-ne p0, v1, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 5
    sget-object p0, Lcom/pgl/ssdk/u;->b:[[J

    aget-object v5, p0, v0

    .line 6
    aget-object p0, p0, v2

    .line 7
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 8
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move v8, v0

    .line 9
    :goto_0
    :try_start_0
    array-length v9, v5

    if-ge v8, v9, :cond_1

    .line 10
    aget-wide v9, v5, v8

    sub-long v9, v3, v9

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 11
    aget-wide v9, p0, v8

    sub-long v9, v3, v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v8, v2

    goto :goto_0

    .line 12
    :catch_0
    :cond_1
    new-array p0, v1, [Lorg/json/JSONArray;

    aput-object v6, p0, v0

    aput-object v7, p0, v2

    return-object p0

    .line 13
    :cond_2
    sput-object v4, Lcom/pgl/ssdk/u;->b:[[J

    return-object v4
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.knox.SemPersonaManager"

    .line 4
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.samsung.android.knoxguard.KnoxGuardManager"

    .line 5
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "androidhnext.Manifest"

    .line 6
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "androidhnext.R"

    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "androidhwext.Manifest"

    .line 7
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "androidhwext.R"

    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "oppo.Manifest"

    .line 8
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "oppo.R"

    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "oplus.Manifest"

    .line 9
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "oplus.R"

    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.oneplus.Manifest"

    .line 10
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.oneplus.R"

    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vivo.Manifest"

    .line 11
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "vivo.R"

    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "miui.Manifest"

    .line 12
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "miui.R"

    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "miui.os.Build"

    .line 13
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lineageos.platform.Manifest"

    .line 14
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lineageos.platform.R"

    .line 15
    invoke-static {v0}, Lcom/pgl/ssdk/u;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/system/framework/com.motorola.motosignature.jar"

    .line 16
    invoke-static {v0}, Lcom/pgl/ssdk/u;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moto"

    return-object v0

    :cond_0
    const-string v0, "/system/framework/transsion-framework.jar"

    .line 17
    invoke-static {v0}, Lcom/pgl/ssdk/u;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/framework/transsion-services.jar"

    invoke-static {v0}, Lcom/pgl/ssdk/u;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "other"

    return-object v0

    :cond_1
    const-string v0, "transsion"

    return-object v0

    :cond_2
    const-string v0, "lineage"

    return-object v0

    :cond_3
    const-string v0, "xiaomi"

    return-object v0

    :cond_4
    const-string v0, "vivo"

    return-object v0

    :cond_5
    const-string v0, "oppo"

    return-object v0

    :cond_6
    const-string v0, "huawei"

    return-object v0

    :cond_7
    const-string v0, "honor"

    return-object v0

    :cond_8
    const-string v0, "samsung"

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    const/16 v0, 0x9b

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e()I
    .locals 2

    .line 1
    const/16 v0, 0xa2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method
