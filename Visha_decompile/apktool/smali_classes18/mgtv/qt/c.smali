.class public abstract Lmgtv/qt/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lmgtv/qt/e; = null

.field public static b:Lm3d; = null

.field public static c:Z = true

.field public static d:Ljava/lang/String; = ""

.field public static e:Z = true

.field public static f:Z = false

.field public static g:Ljava/lang/String; = ""

.field public static h:Ljava/lang/String; = ""

.field public static i:Z = true

.field public static j:Landroid/content/Context; = null

.field public static k:Landroid/app/Application; = null

.field public static l:I = -0x1

.field public static m:J = 0x0L

.field public static n:J = 0x0L

.field public static o:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lmgtv/qt/c;->n:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    sput-wide v0, Lmgtv/qt/c;->n:J

    :cond_1
    return-void
.end method

.method public static b(Landroid/app/Application;)V
    .locals 1

    sget-boolean v0, Lmgtv/qt/c;->i:Z

    if-nez v0, :cond_0

    const-string p0, "QuestMobile"

    const-string v0, "QuestMobile SDK \u8bbe\u7f6e\u4e3a\u4e0d\u5141\u8bb8\u4f7f\u7528\u7f51\u7edc"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lmgtv/qt/c;->f:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lmgtv/qt/c;->f:Z

    new-instance v0, Lmgtv/qt/ag;

    invoke-direct {v0, p0}, Lmgtv/qt/ag;-><init>(Landroid/app/Application;)V

    invoke-static {v0}, Lmgtv/qt/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Landroid/app/Application;Ls4d;)V
    .locals 1

    iget-boolean v0, p1, Ls4d;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lmgtv/qt/c;->n(Landroid/app/Application;Ls4d;)V

    return-void

    :cond_0
    invoke-static {p0}, Lmgtv/qt/c;->k(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lmgtv/qt/c;->n(Landroid/app/Application;Ls4d;)V

    :cond_1
    return-void
.end method

.method public static d(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    const-string v0, "isFirstRun"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lhld;->t(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    :try_start_1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v4}, Lsjd;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    invoke-static {p0}, Ly4d;->e(Landroid/content/Context;)V

    const-string v4, "FirstRunTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lsjd;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0, v4}, Lsjd;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    invoke-static {p0}, Lhld;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmgtv/qt/c;->d:Ljava/lang/String;

    invoke-static {p0, v3}, Lhld;->b(Landroid/content/Context;Z)Ljava/lang/String;

    invoke-static {p0, v3}, Lhld;->h(Landroid/content/Context;Z)Ljava/lang/String;

    invoke-static {p0}, Ltid;->c(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lhld;->i(Landroid/content/Context;)V

    invoke-static {}, Lmgtv/qt/e;->e()Lmgtv/qt/e;

    move-result-object v0

    sput-object v0, Lmgtv/qt/c;->a:Lmgtv/qt/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, ""

    if-nez p1, :cond_2

    move-object p1, v0

    :cond_2
    :try_start_3
    sput-object p1, Lmgtv/qt/c;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object p2, v0

    :cond_3
    const-string p1, "\t"

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lmgtv/qt/c;->h:Ljava/lang/String;

    sput-boolean p3, Lmgtv/qt/c;->i:Z

    invoke-static {p0}, Ly4d;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lmgtv/qt/c;->o:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "QuestMobile-SDK \u521d\u59cb\u5316\u57fa\u672c\u4fe1\u606f\u5b8c\u6210,\u7528\u65f6:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " \u6beb\u79d2"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmgtv/qt/c;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static e(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lmgtv/qt/c;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly4d;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ly4d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldpd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "insid"

    invoke-static {p0, v1, v0}, Lsjd;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lmgtv/qt/c;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "QuestMobile"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmgtv/qt/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static i(Landroid/app/Application;Ls4d;)V
    .locals 0

    invoke-static {p0, p1}, Lmgtv/qt/c;->n(Landroid/app/Application;Ls4d;)V

    return-void
.end method

.method public static synthetic j(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    const-string v0, "hwbdts"

    const-wide/32 v1, 0x93a80

    invoke-static {p0, v0, v1, v2}, Ly4d;->h(Landroid/content/Context;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ly4d;->s(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "tp"

    const-string v1, "deviceos"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lv"

    const-string v1, "host"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "osname"

    invoke-static {}, Ly4d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "https://d.qchannel03.cn/aul"

    invoke-static {}, Laqd;->g()Laqd;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    new-instance v1, Ldtd;

    invoke-direct {v1}, Ldtd;-><init>()V

    invoke-static {v0, p0, v1}, Laqd;->d(Ljava/lang/String;[BLyqd;)Lsjd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static k(Landroid/app/Application;)Z
    .locals 7

    const-string v0, "key_dau_count"

    invoke-static {}, Lmgtv/qt/e;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v0, v5}, Lsjd;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_1

    :try_start_1
    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v6, v2, v4

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_0

    move v2, v4

    :goto_0
    move v4, v3

    goto :goto_3

    :cond_0
    const/4 v6, 0x2

    if-gt v2, v6, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v6

    goto :goto_2

    :catchall_1
    move-exception v6

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_1
    move v2, v4

    goto :goto_3

    :catchall_2
    move-exception v6

    move-object v5, v2

    goto :goto_1

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    const-string v6, "QuestMobile AuCnt"

    if-eqz v4, :cond_3

    add-int/2addr v2, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s,%d"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lsjd;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "close: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return v4
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "insid"

    invoke-static {p0, v1, v0}, Lsjd;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static m()V
    .locals 0

    return-void
.end method

.method public static n(Landroid/app/Application;Ls4d;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lmgtv/qt/c;->m:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lmgtv/qt/c;->m:J

    new-instance v0, Lmgtv/qt/ah;

    invoke-direct {v0, p0, p1}, Lmgtv/qt/ah;-><init>(Landroid/app/Application;Ls4d;)V

    invoke-static {v0}, Lmgtv/qt/j;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
