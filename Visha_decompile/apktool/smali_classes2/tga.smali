.class public final Ltga;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ltga;

.field public static b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltga;

    invoke-direct {v0}, Ltga;-><init>()V

    sput-object v0, Ltga;->a:Ltga;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Ltga;->c(I)V

    return-void
.end method

.method public static final b(Z)V
    .locals 7

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "key_data_status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lo9;->g(Ljava/lang/String;I)I

    move-result v0

    xor-int/lit8 v3, p0, 0x1

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sp save env status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and isDebug = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "TestChecker"

    invoke-virtual {v4, v5, p0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_1

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lsga;

    invoke-direct {v0, v3}, Lsga;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->r(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Lo9;->p(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final c(I)V
    .locals 2

    sget-object v0, Ltga;->a:Ltga;

    invoke-virtual {v0}, Ltga;->d()V

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "key_data_status"

    invoke-virtual {v0, v1, p0}, Lo9;->p(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    :try_start_0
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    invoke-virtual {v0}, Lo9;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete sp fail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TestChecker"

    invoke-virtual {v1, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ltga;->e()V

    return-void
.end method

.method public final e()V
    .locals 4

    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v0

    const-string v1, "execSQL delete"

    const-string v2, "TestChecker"

    invoke-virtual {v0, v2, v1}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Ltga;->f()V

    sget-object p0, Ltga;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->l()Ltba;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ltba;->a()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ltga;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->b()Lufd;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lufd;->a()V

    :cond_1
    sget-object p0, Ltga;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->r()Ly8d;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ly8d;->b()V

    :cond_2
    sget-object p0, Ltga;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->v()Ldgc;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ldgc;->b()V

    :cond_3
    sget-object p0, Ltga;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->h()Lazd;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lazd;->a()I

    :cond_4
    sget-object p0, Ltga;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->e()Lqud;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lqud;->a()I

    :cond_5
    invoke-static {}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->deleteTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete db fail = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Ltga;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v0

    sput-object v0, Ltga;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lja1;->Log()Lja1;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openDB ex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TestChecker"

    invoke-virtual {v1, v2, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
