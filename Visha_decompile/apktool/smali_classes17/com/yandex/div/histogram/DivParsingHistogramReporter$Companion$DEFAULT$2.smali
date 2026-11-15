.class final synthetic Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion$DEFAULT$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;
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


# static fields
.field public static final INSTANCE:Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion$DEFAULT$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion$DEFAULT$2;

    invoke-direct {v0}, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion$DEFAULT$2;-><init>()V

    sput-object v0, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion$DEFAULT$2;->INSTANCE:Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion$DEFAULT$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "<init>()V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Ls02;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion$DEFAULT$2;->invoke()Ls02;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ls02;
    .locals 0

    .line 1
    new-instance p0, Ls02;

    invoke-direct {p0}, Ls02;-><init>()V

    return-object p0
.end method
