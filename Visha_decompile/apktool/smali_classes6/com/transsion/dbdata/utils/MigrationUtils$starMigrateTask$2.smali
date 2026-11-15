.class final Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/utils/MigrationUtils;->v(Landroid/content/Context;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Le74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lzfb;",
        "<anonymous>",
        "()V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lnt1;
    c = "com.transsion.dbdata.utils.MigrationUtils$starMigrateTask$2"
    f = "MigrationUtils.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $migrationType:I

.field label:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lwh1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Lwh1<",
            "-",
            "Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$migrationType:I

    iput-object p2, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILwh1;)V

    return-void
.end method


# virtual methods
.method public final create(Lwh1;)Lwh1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "*>;)",
            "Lwh1<",
            "Lzfb;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;

    iget v1, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$migrationType:I

    iget-object p0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1}, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;-><init>(ILandroid/content/Context;Lwh1;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lwh1;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->invoke(Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lwh1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwh1<",
            "-",
            "Lzfb;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->create(Lwh1;)Lwh1;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;

    sget-object p1, Lzfb;->a:Lzfb;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iget p1, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$migrationType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    iget-object v0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->a(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->d(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->b(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/dbdata/utils/MigrationUtils;->c(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    iget-object v0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->d(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->b(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/dbdata/utils/MigrationUtils;->c(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/transsion/dbdata/utils/MigrationUtils;->a:Lcom/transsion/dbdata/utils/MigrationUtils;

    iget-object v0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->a(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/transsion/dbdata/utils/MigrationUtils;->b(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/transsion/dbdata/utils/MigrationUtils$starMigrateTask$2;->$context:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/transsion/dbdata/utils/MigrationUtils;->c(Lcom/transsion/dbdata/utils/MigrationUtils;Landroid/content/Context;)V

    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
