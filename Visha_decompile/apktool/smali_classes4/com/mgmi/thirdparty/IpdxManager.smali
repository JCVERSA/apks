.class public Lcom/mgmi/thirdparty/IpdxManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;
    }
.end annotation


# static fields
.field private static g:Lcom/mgmi/thirdparty/IpdxManager;


# instance fields
.field public a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgmi/thirdparty/IpdxManager;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/thirdparty/IpdxManager;->d:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mgmi/thirdparty/IpdxManager;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/thirdparty/IpdxManager;->f:Z

    iput-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;
    .locals 2

    .line 4
    sget-object v0, Lcom/mgmi/thirdparty/IpdxManager;->g:Lcom/mgmi/thirdparty/IpdxManager;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/mgmi/thirdparty/IpdxManager;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/mgmi/thirdparty/IpdxManager;->g:Lcom/mgmi/thirdparty/IpdxManager;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/mgmi/thirdparty/IpdxManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/mgmi/thirdparty/IpdxManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mgmi/thirdparty/IpdxManager;->g:Lcom/mgmi/thirdparty/IpdxManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_1
    :goto_2
    sget-object p0, Lcom/mgmi/thirdparty/IpdxManager;->g:Lcom/mgmi/thirdparty/IpdxManager;

    return-object p0
.end method

.method public static synthetic a(Lcom/mgmi/thirdparty/IpdxManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/thirdparty/IpdxManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    .line 30
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v1, p0, Lcom/mgmi/thirdparty/IpdxManager;->d:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object p0, p0, Lcom/mgmi/thirdparty/IpdxManager;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    const-string v3, "[ERRORCODE]"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 35
    const-string v3, "[ERRORMSG]"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v0, v1}, Lcom/mgmi/e/a/d;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    :cond_0
    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/mgmi/thirdparty/IpdxManager;->f:Z

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/thirdparty/IpdxManager;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgmi/thirdparty/IpdxManager;->a(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/thirdparty/IpdxManager;Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/mgmi/thirdparty/IpdxManager;->a(Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;)V

    return-void
.end method

.method private b()Z
    .locals 7

    iget-object v0, p0, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/mgmi/thirdparty/IpdxManager;->c:Ljava/lang/String;

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/mgmi/thirdparty/IpdxManager;->e:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/mgmi/thirdparty/IpdxManager;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string v4, "com_mgmi_android"

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "mgmi_ipdx_url"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mgmi/thirdparty/IpdxManager;->c:Ljava/lang/String;

    const-string v4, "mgmi_ipdx_safer_duration"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mgmi/thirdparty/IpdxManager;->e:J

    :cond_2
    iget-object v0, p0, Lcom/mgmi/thirdparty/IpdxManager;->c:Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    iget-wide v5, p0, Lcom/mgmi/thirdparty/IpdxManager;->e:J

    cmp-long v0, v5, v2

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    iget-wide v5, p0, Lcom/mgmi/thirdparty/IpdxManager;->e:J

    add-long/2addr v2, v5

    iget-object p0, p0, Lcom/mgmi/thirdparty/IpdxManager;->a:Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;

    iget p0, p0, Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;->exptime:I

    int-to-long v5, p0

    cmp-long p0, v2, v5

    if-lez p0, :cond_4

    return v1

    :cond_4
    :goto_0
    return v4
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 26
    :try_start_0
    invoke-static {p1}, Lmpd;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lg4d;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "^"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    const-string p0, "mgmi"

    const-string p1, "generateAuthenticationtoken error"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public a()V
    .locals 4

    .line 19
    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/platform/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mgmi/thirdparty/IpdxManager;->f:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mgmi/thirdparty/IpdxManager;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iput-boolean v1, p0, Lcom/mgmi/thirdparty/IpdxManager;->f:Z

    .line 21
    new-instance v0, Lcom/mgadplus/netlib/a/a;

    iget-object v1, p0, Lcom/mgmi/thirdparty/IpdxManager;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/mgadplus/netlib/a/a;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/mgadplus/netlib/a/a;->a(I)Lcom/mgadplus/netlib/a/a;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/mgadplus/netlib/base/c$a;->HEADER:Lcom/mgadplus/netlib/base/c$a;

    const-string v2, "auver"

    const-string v3, "v1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    .line 23
    invoke-static {}, Lcom/mgmi/f/f;->h()Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/mgmi/thirdparty/IpdxManager;->b:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authentication"

    invoke-virtual {v0, v3, v2, v1}, Lcom/mgadplus/netlib/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mgadplus/netlib/base/c$a;)Lcom/mgadplus/netlib/a/a;

    .line 25
    iget-object v1, p0, Lcom/mgmi/thirdparty/IpdxManager;->b:Landroid/content/Context;

    new-instance v2, Lcom/mgmi/thirdparty/IpdxManager$1;

    invoke-direct {v2, p0}, Lcom/mgmi/thirdparty/IpdxManager$1;-><init>(Lcom/mgmi/thirdparty/IpdxManager;)V

    invoke-static {v1, v0, v2}, Lcom/mgadplus/netlib/a/e;->a(Landroid/content/Context;Lcom/mgadplus/netlib/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/mgmi/thirdparty/IpdxManager;->c:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/mgmi/thirdparty/IpdxManager;->d:Ljava/util/List;

    int-to-long p2, p3

    .line 12
    iput-wide p2, p0, Lcom/mgmi/thirdparty/IpdxManager;->e:J

    .line 13
    iget-object p0, p0, Lcom/mgmi/thirdparty/IpdxManager;->b:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 14
    const-string v0, "com_mgmi_android"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 16
    const-string v0, "mgmi_ipdx_url"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    const-string p1, "mgmi_ipdx_safer_duration"

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 18
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
