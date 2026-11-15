.class public Lc19;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lc19;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc19;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lc19;
    .locals 2

    const-class v0, Lc19;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc19;->c:Lc19;

    if-nez v1, :cond_0

    new-instance v1, Lc19;

    invoke-direct {v1, p0}, Lc19;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc19;->c:Lc19;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lc19;->c:Lc19;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)J
    .locals 5

    iget-object v0, p0, Lc19;->b:Landroid/content/Context;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v3, p0, Lc19;->a:Landroid/content/SharedPreferences;

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lc19;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lc19;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object p0, p0, Lc19;->a:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-interface {p0, p1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide v1
.end method

.method public final c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    :try_start_0
    const-string v0, "gateway_core"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lc19;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lc19;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lc19;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lc19;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lc19;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object p0, p0, Lc19;->a:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
