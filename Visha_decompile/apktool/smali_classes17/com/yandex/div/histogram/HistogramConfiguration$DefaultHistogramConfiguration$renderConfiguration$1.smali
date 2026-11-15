.class final synthetic Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
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


# static fields
.field public static final INSTANCE:Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1;

    invoke-direct {v0}, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1;-><init>()V

    sput-object v0, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1;->INSTANCE:Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "<init>(Lcom/yandex/div/histogram/HistogramFilter;Lcom/yandex/div/histogram/HistogramFilter;Lcom/yandex/div/histogram/HistogramFilter;Lcom/yandex/div/histogram/HistogramFilter;)V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lfs8;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lfs8;
    .locals 7

    .line 1
    new-instance p0, Lfs8;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lfs8;-><init>(Lmq4;Lmq4;Lmq4;Lmq4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/div/histogram/HistogramConfiguration$DefaultHistogramConfiguration$renderConfiguration$1;->invoke()Lfs8;

    move-result-object p0

    return-object p0
.end method
