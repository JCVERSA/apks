.class final Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideHistogramReporter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->g(Lsq4;)Loj8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lrq4;",
        "invoke",
        "()Lrq4;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $histogramReporterDelegate:Lsq4;


# direct methods
.method public constructor <init>(Lsq4;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideHistogramReporter$1;->$histogramReporterDelegate:Lsq4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideHistogramReporter$1;->invoke()Lrq4;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lrq4;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideHistogramReporter$1;->$histogramReporterDelegate:Lsq4;

    .line 3
    invoke-static {p0}, Lcom/yandex/div/core/dagger/DivHistogramsModuleKt;->a(Lsq4;)Lrq4;

    move-result-object p0

    return-object p0
.end method
