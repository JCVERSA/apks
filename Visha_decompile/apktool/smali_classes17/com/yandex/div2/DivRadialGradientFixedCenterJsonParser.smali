.class public abstract Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$a;,
        Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$b;,
        Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$c;,
        Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lzbb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser;->a:Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->DP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivSizeUnit;->values()[Lcom/yandex/div2/DivSizeUnit;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$Companion$TYPE_HELPER_UNIT$1;->INSTANCE:Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser$Companion$TYPE_HELPER_UNIT$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivRadialGradientFixedCenterJsonParser;->c:Lzbb;

    return-void
.end method
