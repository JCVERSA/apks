.class public Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/div/histogram/HistogramConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/histogram/HistogramConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultHistogramConfiguration"
.end annotation


# instance fields
.field public final c:Loj8;

.field public final d:Loj8;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Loj8;

.field public final k:Loj8;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lax2;

    sget-object v1, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$histogramBridge$1;->INSTANCE:Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$histogramBridge$1;

    invoke-direct {v0, v1}, Lax2;-><init>(Lc74;)V

    iput-object v0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->c:Loj8;

    new-instance v0, Lax2;

    sget-object v1, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$cpuUsageHistogramReporter$1;->INSTANCE:Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$cpuUsageHistogramReporter$1;

    invoke-direct {v0, v1}, Lax2;-><init>(Lc74;)V

    iput-object v0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->d:Loj8;

    new-instance v0, Lax2;

    sget-object v1, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$taskExecutorProvider$1;->INSTANCE:Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$taskExecutorProvider$1;

    invoke-direct {v0, v1}, Lax2;-><init>(Lc74;)V

    iput-object v0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->j:Loj8;

    new-instance v0, Lax2;

    sget-object v1, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1;->INSTANCE:Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1;

    invoke-direct {v0, v1}, Lax2;-><init>(Lc74;)V

    iput-object v0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->k:Loj8;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->e:Z

    return p0
.end method

.method public b()Loj8;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->d:Loj8;

    return-object p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->g:Z

    return p0
.end method

.method public d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->i:Z

    return p0
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->f:Z

    return p0
.end method

.method public f()Loj8;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->k:Loj8;

    return-object p0
.end method

.method public g()Loj8;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->c:Loj8;

    return-object p0
.end method

.method public h()Loj8;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->j:Loj8;

    return-object p0
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;->h:Z

    return p0
.end method
