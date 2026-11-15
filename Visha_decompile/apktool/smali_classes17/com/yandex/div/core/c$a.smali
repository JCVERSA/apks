.class public final Lcom/yandex/div/core/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Loj8;

.field public b:Ljava/util/concurrent/ExecutorService;

.field public c:Loj8;

.field public d:Loj8;

.field public e:Loj8;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbm2;

    invoke-direct {v0}, Lbm2;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/c$a;->c:Loj8;

    new-instance v0, Lcm2;

    invoke-direct {v0}, Lcm2;-><init>()V

    iput-object v0, p0, Lcom/yandex/div/core/c$a;->e:Loj8;

    return-void
.end method

.method public static synthetic a()Lcom/yandex/div/histogram/HistogramConfiguration;
    .locals 1

    invoke-static {}, Lcom/yandex/div/core/c$a;->e()Lcom/yandex/div/histogram/HistogramConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Lyo2;
    .locals 1

    invoke-static {}, Lcom/yandex/div/core/c$a;->d()Lyo2;

    move-result-object v0

    return-object v0
.end method

.method public static final d()Lyo2;
    .locals 1

    sget-object v0, Lyo2;->b:Lyo2;

    return-object v0
.end method

.method public static final e()Lcom/yandex/div/histogram/HistogramConfiguration;
    .locals 1

    sget-object v0, Lcom/yandex/div/histogram/HistogramConfiguration;->b:Lcom/yandex/div/histogram/HistogramConfiguration;

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/yandex/div/core/c;
    .locals 8

    new-instance v7, Lcom/yandex/div/core/c;

    iget-object v1, p0, Lcom/yandex/div/core/c$a;->a:Loj8;

    iget-object v0, p0, Lcom/yandex/div/core/c$a;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const-string v0, "executorService ?: Execu\u2026newSingleThreadExecutor()"

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yandex/div/core/c$a;->c:Loj8;

    iget-object v4, p0, Lcom/yandex/div/core/c$a;->d:Loj8;

    iget-object v5, p0, Lcom/yandex/div/core/c$a;->e:Loj8;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/c;-><init>(Loj8;Ljava/util/concurrent/ExecutorService;Loj8;Loj8;Loj8;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method
