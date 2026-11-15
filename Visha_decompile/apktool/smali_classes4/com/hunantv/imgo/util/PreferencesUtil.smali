.class public final Lcom/hunantv/imgo/util/PreferencesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "DATA_RAW"

.field public static b:Ljava/lang/String; = "MGTVCommon"

.field public static c:Ljava/lang/String; = "ERROR"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 1

    .line 6
    sget-object v0, Lcom/hunantv/imgo/util/PreferencesUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)Z
    .locals 0

    .line 16
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;J)Z
    .locals 1

    .line 8
    sget-object v0, Lcom/hunantv/imgo/util/PreferencesUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 10
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/hunantv/imgo/util/PreferencesUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    .line 12
    sget-object v0, Lcom/hunantv/imgo/util/PreferencesUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 14
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 15
    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;J)J
    .locals 1

    .line 5
    sget-object v0, Lcom/hunantv/imgo/util/PreferencesUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method private static b(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .line 9
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    :try_start_0
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/hunantv/imgo/util/PreferencesUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Z)Z
    .locals 1

    .line 7
    sget-object v0, Lcom/hunantv/imgo/util/PreferencesUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/util/PreferencesUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static putInt(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/util/PreferencesUtil;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Landroid/content/SharedPreferences$Editor;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
