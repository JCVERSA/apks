.class public Lo/sq5;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0}, Lo/sq5;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Lo/ts;->a()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c()Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lo/sq5;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/sq5;->b()Z

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

.method public static d()Z
    .locals 1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0}, Lo/sq5;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/sq5;->b()Z

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

.method public static e()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    return-object v0

    :cond_0
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    return-object v0
.end method

.method public static f()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/us;->a(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lo/az7;->c0()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "OP_SYSTEM_ALERT_WINDOW"

    invoke-static {v0, v1}, Lo/sq5;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static g()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    invoke-static {}, Lo/sq5;->c()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lo/sq5;->b()Z

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Lo/rq5;->a(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "install_non_market_apps"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android:picture_in_picture"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x1

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v6, "appops"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    const-string v6, "android.app.AppOpsManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "checkOpNoThrow"

    new-array v8, v1, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v6, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {p1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v4, v1, v2

    aput-object v5, v1, v0

    invoke-virtual {v7, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lo/de5;->d(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "illegal access"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "invocation target"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "no such field"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "no such method"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_4
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "class not found"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v4, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-static {}, Lo/sq5;->c()Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {}, Lo/sq5;->b()Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {}, Lo/uh;->f()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v2}, Lo/sq5;->n(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x72ca2557 -> :sswitch_2
        -0x6c1165bf -> :sswitch_1
        0x516a29a7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static l()Z
    .locals 5

    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string v1, "PermissionUtils"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return v3
.end method

.method public static m()Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lo/sq5;->n(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lo/uh;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
