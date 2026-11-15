.class public abstract Lcom/yandex/div2/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/b5$a;,
        Lcom/yandex/div2/b5$b;,
        Lcom/yandex/div2/b5$c;,
        Lcom/yandex/div2/b5$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/b5$a;

.field public static final b:Lcom/yandex/div2/DivPivot$c;

.field public static final c:Lcom/yandex/div2/DivPivot$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/b5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/b5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/b5;->a:Lcom/yandex/div2/b5$a;

    new-instance v0, Lcom/yandex/div2/DivPivot$c;

    new-instance v1, Lcom/yandex/div2/DivPivotPercentage;

    sget-object v2, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/yandex/div2/DivPivotPercentage;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivPivot$c;-><init>(Lcom/yandex/div2/DivPivotPercentage;)V

    sput-object v0, Lcom/yandex/div2/b5;->b:Lcom/yandex/div2/DivPivot$c;

    new-instance v0, Lcom/yandex/div2/DivPivot$c;

    new-instance v1, Lcom/yandex/div2/DivPivotPercentage;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/div2/DivPivotPercentage;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivPivot$c;-><init>(Lcom/yandex/div2/DivPivotPercentage;)V

    sput-object v0, Lcom/yandex/div2/b5;->c:Lcom/yandex/div2/DivPivot$c;

    return-void
.end method
