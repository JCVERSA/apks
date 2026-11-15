.class public final Lcom/transsion/dbdata/migration/MigrationExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/migration/MigrationExecutor$a;,
        Lcom/transsion/dbdata/migration/MigrationExecutor$b;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/dbdata/migration/MigrationExecutor$a;

.field public static volatile d:Lcom/transsion/dbdata/migration/MigrationExecutor;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Lnk1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/migration/MigrationExecutor$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/migration/MigrationExecutor$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/migration/MigrationExecutor;->c:Lcom/transsion/dbdata/migration/MigrationExecutor$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/migration/MigrationExecutor;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lv6a;->b(Lkotlinx/coroutines/j;ILjava/lang/Object;)Lpb1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/migration/MigrationExecutor;->b:Lnk1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/dbdata/migration/MigrationExecutor;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/transsion/dbdata/migration/MigrationExecutor;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/migration/MigrationExecutor;->d:Lcom/transsion/dbdata/migration/MigrationExecutor;

    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/dbdata/migration/MigrationExecutor;)V
    .locals 0

    sput-object p0, Lcom/transsion/dbdata/migration/MigrationExecutor;->d:Lcom/transsion/dbdata/migration/MigrationExecutor;

    return-void
.end method


# virtual methods
.method public final c(Landroid/content/Context;Lcom/transsion/dbdata/migration/MigrationExecutor$b;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/dbdata/migration/MigrationExecutor;->b:Lnk1;

    new-instance v4, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;

    const/4 p0, 0x0

    invoke-direct {v4, p1, p2, p0}, Lcom/transsion/dbdata/migration/MigrationExecutor$executeMigration$1;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/migration/MigrationExecutor$b;Lwh1;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcl0;->d(Lnk1;Lkotlin/coroutines/d;Lkotlinx/coroutines/CoroutineStart;Ls74;ILjava/lang/Object;)Lkotlinx/coroutines/j;

    return-void
.end method
