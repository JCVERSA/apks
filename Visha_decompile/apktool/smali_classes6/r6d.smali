.class public Lr6d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lr6d;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lr6d;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lr6d;
    .locals 2

    const-class v0, Lr6d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr6d;->c:Lr6d;

    if-nez v1, :cond_0

    new-instance v1, Lr6d;

    invoke-direct {v1, p0}, Lr6d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lr6d;->c:Lr6d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lr6d;->c:Lr6d;
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
.method public a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lr6d;->b:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lr6d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object p0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method

.method public c(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lr6d;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lr6d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object p0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp6d;->m(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr6d;->b:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lr6d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lnw8;->b()Lnw8;

    move-result-object v0

    iget-object v1, p0, Lr6d;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnw8;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Llw8;

    invoke-direct {v0}, Llw8;-><init>()V

    invoke-virtual {v0, p2}, Llw8;->e(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ly2d;->c([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "rsaCrypter encrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "keystore encrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lp6d;->m(Ljava/lang/Object;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "sp is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lp6d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tcrypto"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lr6d;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lr6d;->b:Landroid/content/Context;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lr6d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v1, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_5

    :try_start_0
    invoke-static {}, Lnw8;->b()Lnw8;

    move-result-object v1

    iget-object v2, p0, Lr6d;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lnw8;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Llw8;

    invoke-direct {p1}, Llw8;-><init>()V

    invoke-virtual {p1, p0}, Ly2d;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Llw8;->d([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "rsaCrypter decrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "keystore decrypt error"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lp6d;->m(Ljava/lang/Object;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "sp is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lr6d;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lr6d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object p0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp6d;->m(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lr6d;->b:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Lr6d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object p0, p0, Lr6d;->a:Landroid/content/SharedPreferences;

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp6d;->m(Ljava/lang/Object;)V

    return-object v1
.end method
