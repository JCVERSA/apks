.class final Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/migration/MigrationExecutor;->c(Landroid/content/Context;Lcom/transsion/dbdata/migration/MigrationExecutor$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lnk1;",
        "Lzfb;",
        "<anonymous>",
        "(Lnk1;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.dbdata.migration.MigrationExecutor$executeMigration$1"
    f = "MigrationExecutor.kt"
    l = {
        0x3c,
        0x40,
        0x46
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/transsion/dbdata/migration/MigrationExecutor$b;

.field final synthetic $context:Landroid/content/Context;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/migration/MigrationExecutor$b;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/dbdata/migration/MigrationExecutor$b;",
            "Lwh1<",
            "-",
            "Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->$callback:Lcom/transsion/dbdata/migration/MigrationExecutor$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lwh1;)Lwh1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;

    iget-object v0, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->$callback:Lcom/transsion/dbdata/migration/MigrationExecutor$b;

    invoke-direct {p1, v0, p0, p2}, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/migration/MigrationExecutor$b;Lwh1;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lnk1;

    check-cast p2, Lwh1;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->invoke(Lnk1;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lnk1;Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk1;",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->create(Ljava/lang/Object;Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    :try_start_1
    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object p1

    new-instance v1, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1$result$1;

    iget-object v6, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->$context:Landroid/content/Context;

    invoke-direct {v1, v6, v4}, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1$result$1;-><init>(Landroid/content/Context;Lwh1;)V

    iput v5, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object v1

    new-instance v5, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1$1;

    iget-object v6, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->$callback:Lcom/transsion/dbdata/migration/MigrationExecutor$b;

    invoke-direct {v5, v6, p1, v4}, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1$1;-><init>(Lcom/transsion/dbdata/migration/MigrationExecutor$b;ZLwh1;)V

    iput v3, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->label:I

    invoke-static {v1, v5, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Lzfb;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_2
    const-string v1, "migration exception"

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "PlayListMigrationExecutor"

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lmc2;->c()Lrx5;

    move-result-object p1

    new-instance v1, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1$2;

    iget-object v3, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->$callback:Lcom/transsion/dbdata/migration/MigrationExecutor$b;

    invoke-direct {v1, v3, v4}, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1$2;-><init>(Lcom/transsion/dbdata/migration/MigrationExecutor$b;Lwh1;)V

    iput v2, p0, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;->label:I

    invoke-static {p1, v1, p0}, Lcl0;->g(Lkotlin/coroutines/d;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    check-cast p1, Lzfb;

    :goto_4
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
