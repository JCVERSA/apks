.class public Lnj7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Lnj7;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Lxe;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnj7;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lnj7;
    .locals 2

    sget-object v0, Lnj7;->e:Lnj7;

    if-nez v0, :cond_1

    const-class v0, Lnj7;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lnj7;->e:Lnj7;

    if-nez v1, :cond_0

    new-instance v1, Lnj7;

    invoke-direct {v1, p0}, Lnj7;-><init>(Ljava/lang/String;)V

    sput-object v1, Lnj7;->e:Lnj7;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lnj7;->e:Lnj7;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lnj7;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lnj7;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnj7;->c:J

    iget-object v3, p0, Lnj7;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lnj7;->d:Lxe;

    if-nez v0, :cond_1

    new-instance v0, Lxe;

    invoke-direct {v0, p1}, Lxe;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnj7;->d:Lxe;

    :cond_1
    iget-object p1, p0, Lnj7;->d:Lxe;

    const-string v0, "TOKEN"

    invoke-virtual {p1, v0}, Lme8;->h(Ljava/lang/String;)Z

    iget-object p0, p0, Lnj7;->d:Lxe;

    const-string p1, "OPENID"

    invoke-virtual {p0, p1}, Lme8;->h(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lnj7;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "token"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "openid"

    invoke-interface {p0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    sget-object p0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    const-string p1, "tudc token clear"

    invoke-virtual {p0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 7

    iget-object v0, p0, Lnj7;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnj7;->d:Lxe;

    if-nez v0, :cond_0

    new-instance v0, Lxe;

    invoke-direct {v0, p1}, Lxe;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnj7;->d:Lxe;

    :cond_0
    iget-object p1, p0, Lnj7;->d:Lxe;

    const-string v0, "TOKEN"

    invoke-virtual {p1, v0, v2}, Le4;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnj7;->b:Ljava/lang/String;

    iget-object p1, p0, Lnj7;->d:Lxe;

    const-string v0, "OPENID"

    invoke-virtual {p1, v0, v3, v4}, Le4;->j(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lnj7;->c:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnj7;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "token"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnj7;->b:Ljava/lang/String;

    const-string v0, "openid"

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lnj7;->c:J

    :goto_0
    iget-object p1, p0, Lnj7;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-wide p0, p0, Lnj7;->c:J

    cmp-long p0, p0, v3

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
