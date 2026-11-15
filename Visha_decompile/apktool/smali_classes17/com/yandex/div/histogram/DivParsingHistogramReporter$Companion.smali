.class public final Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/histogram/DivParsingHistogramReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic a:Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;

.field public static final b:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;

    invoke-direct {v0}, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;-><init>()V

    sput-object v0, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;->a:Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;

    sget-object v0, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion$DEFAULT$2;->INSTANCE:Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion$DEFAULT$2;

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;->b:Lyi5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/histogram/DivParsingHistogramReporter;
    .locals 0

    sget-object p0, Lcom/yandex/div/histogram/DivParsingHistogramReporter$Companion;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/histogram/DivParsingHistogramReporter;

    return-object p0
.end method
