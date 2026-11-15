.class public Lcom/transsion/privacy/MarkPointUtil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/privacy/MarkPointUtil$c;,
        Lcom/transsion/privacy/MarkPointUtil$a;,
        Lcom/transsion/privacy/MarkPointUtil$b;
    }
.end annotation


# static fields
.field public static b:Landroid/content/SharedPreferences; = null

.field public static c:Ljava/lang/String; = null

.field public static d:I = -0x1

.field public static e:Lcom/transsion/privacy/MarkPointUtil$c; = null

.field public static f:Ljava/lang/String; = "user_experience"

.field public static g:Ljava/lang/String; = null

.field public static h:J = 0x0L

.field public static i:Ljava/lang/String; = ""

.field public static j:Ljava/lang/String; = ""

.field public static k:Z


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

.method public static bridge synthetic a()V
    .locals 0

    invoke-static {}, Lcom/transsion/privacy/MarkPointUtil;->u()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-boolean v0, Lcom/transsion/privacy/MarkPointUtil;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/privacy/MarkPointUtil;->f:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "new_agreed_privacy"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "content://com.hoffnung.cloudControl.RemoteConfigProvider/config/os_common_gdpr_privacy_version"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "os_common_gdpr_privacy_version"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/privacy/MarkPointUtil;->g:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "MarkPointUtil"

    const-string v1, "getPrivacyVersionInfo failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_3
    sget-object p0, Lcom/transsion/privacy/MarkPointUtil;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Lcom/transsion/privacy/MarkPointUtil;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/transsion/privacy/MarkPointUtil;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/privacy/MarkPointUtil;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/transsion/privacy/MarkPointUtil;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "versionCodeT"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x3

    return p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "20210705V3"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "versionNameT"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/privacy/MarkPointUtil;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/transsion/privacy/MarkPointUtil;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->f(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "new_agreed_privacy_version"

    const/4 v4, 0x3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-le v0, v2, :cond_1

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->m(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/transsion/privacy/MarkPointUtil;->t(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;IIZZ)V
    .locals 7

    invoke-static {}, Lu06;->c()Lu06;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lu06;->e(Landroid/content/Context;Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static j(Landroid/app/FragmentManager;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/GdprUtil;->d(Landroid/app/FragmentManager;)Z

    move-result p0

    return p0
.end method

.method public static k(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/transsion/privacy/MarkPointUtil;->e:Lcom/transsion/privacy/MarkPointUtil$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/privacy/MarkPointUtil$c;

    invoke-direct {v0, p0}, Lcom/transsion/privacy/MarkPointUtil$c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/transsion/privacy/MarkPointUtil;->e:Lcom/transsion/privacy/MarkPointUtil$c;

    :cond_0
    sget-object v0, Lcom/transsion/privacy/MarkPointUtil;->e:Lcom/transsion/privacy/MarkPointUtil$c;

    invoke-static {p0, v0}, Lcom/transsion/privacy/MarkPointUtil;->l(Landroid/content/Context;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static l(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/transsion/privacy/MarkPointUtil;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "new_agreed_privacy"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "new_agreed_privacy"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static o(Lid4;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/privacy/MarkPointUtil$a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/privacy/MarkPointUtil$a;-><init>(Lw06;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/privacy/MarkPointUtil$b;

    invoke-direct {v0, p0}, Lcom/transsion/privacy/MarkPointUtil$b;-><init>(Lid4;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lcom/transsion/transsion_gdpr/GdprUtil;->c(Lid4;)V

    return-void
.end method

.method public static p(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-wide p0, Lcom/transsion/privacy/MarkPointUtil;->h:J

    sput-object p2, Lcom/transsion/privacy/MarkPointUtil;->i:Ljava/lang/String;

    sput-object p3, Lcom/transsion/privacy/MarkPointUtil;->j:Ljava/lang/String;

    return-void
.end method

.method public static q(Landroid/content/Context;Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;->isIgnoreUserExperience()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/transsion/privacy/MarkPointUtil;->k:Z

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lu06;->c()Lu06;

    move-result-object p0

    invoke-virtual {p0, v0}, Lu06;->h(Z)V

    return-void

    :cond_1
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "dealPrivacy"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/transsion/privacy/MarkPointUtil$1;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/transsion/privacy/MarkPointUtil$1;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;Landroid/os/HandlerThread;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static r(Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1

    invoke-static {}, Lu06;->c()Lu06;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lu06;->i(Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method

.method public static s(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 1

    invoke-static {}, Lu06;->c()Lu06;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lu06;->j(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    return-void
.end method

.method public static t(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lcom/transsion/privacy/MarkPointUtil;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "new_agreed_privacy_version"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static u()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/transsion/privacy/MarkPointUtil;->j:Ljava/lang/String;

    sget-object v2, Lcom/transsion/privacy/MarkPointUtil;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/privacy/MarkPointUtil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/privacy/MarkPointUtil;->i:Ljava/lang/String;

    sget-wide v2, Lcom/transsion/privacy/MarkPointUtil;->h:J

    invoke-static {v1, v0, v2, v3}, Lcom/transsion/privacy/MarkPointUtil;->r(Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static v(Landroid/app/FragmentManager;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/transsion_gdpr/GdprUtil;->e(Landroid/app/FragmentManager;)V

    return-void
.end method

.method public static w(Landroid/app/FragmentManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/privacy/MarkPointUtil;->x(Landroid/app/FragmentManager;Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    return-void
.end method

.method public static x(Landroid/app/FragmentManager;Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transsion_gdpr/GdprUtil;->f(Landroid/app/FragmentManager;Lcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    return-void
.end method

.method public static y(Landroid/content/Context;Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/privacy/MarkPointUtil;->q(Landroid/content/Context;Landroid/app/FragmentManager;ZLcom/transsion/transsion_gdpr/GdprUtil$GDPRConfig;)V

    return-void
.end method
