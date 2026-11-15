.class final synthetic Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideDivParsingHistogramReporter$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/dagger/DivKitHistogramsModule;->f(Lcom/yandex/div/histogram/HistogramConfiguration;Loj8;Loj8;)Lcom/yandex/div/histogram/DivParsingHistogramReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lc74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string v5, "get()Ljava/lang/Object;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Loj8;

    const-string v4, "get"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/div/core/dagger/DivKitHistogramsModule$provideDivParsingHistogramReporter$1;->invoke()Lrq4;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lrq4;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Loj8;

    invoke-interface {p0}, Loj8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrq4;

    return-object p0
.end method
