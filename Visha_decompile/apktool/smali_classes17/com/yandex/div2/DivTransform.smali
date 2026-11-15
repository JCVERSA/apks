.class public final Lcom/yandex/div2/DivTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTransform$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/div2/DivTransform$a;

.field public static final f:Lcom/yandex/div2/DivPivot$c;

.field public static final g:Lcom/yandex/div2/DivPivot$c;

.field public static final h:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivPivot;

.field public final b:Lcom/yandex/div2/DivPivot;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/DivTransform$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTransform$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTransform;->e:Lcom/yandex/div2/DivTransform$a;

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

    sput-object v0, Lcom/yandex/div2/DivTransform;->f:Lcom/yandex/div2/DivPivot$c;

    new-instance v0, Lcom/yandex/div2/DivPivot$c;

    new-instance v1, Lcom/yandex/div2/DivPivotPercentage;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/div2/DivPivotPercentage;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivPivot$c;-><init>(Lcom/yandex/div2/DivPivotPercentage;)V

    sput-object v0, Lcom/yandex/div2/DivTransform;->g:Lcom/yandex/div2/DivPivot$c;

    sget-object v0, Lcom/yandex/div2/DivTransform$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTransform$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTransform;->h:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivPivot;Lcom/yandex/div2/DivPivot;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 1

    const-string v0, "pivotX"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pivotY"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    iput-object p2, p0, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    iput-object p3, p0, Lcom/yandex/div2/DivTransform;->c:Lcom/yandex/div/json/expressions/Expression;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivTransform;Loj3;Loj3;)Z
    .locals 3

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    iget-object v2, p1, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivPivot;->a(Lcom/yandex/div2/DivPivot;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    iget-object v2, p1, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivPivot;->a(Lcom/yandex/div2/DivPivot;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivTransform;->c:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    iget-object p1, p1, Lcom/yandex/div2/DivTransform;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    :cond_2
    invoke-static {p0, v1}, Ly45;->b(Ljava/lang/Double;Ljava/lang/Double;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivTransform;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivTransform;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    invoke-virtual {v1}, Lcom/yandex/div2/DivPivot;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    invoke-virtual {v1}, Lcom/yandex/div2/DivPivot;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTransform;->c:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivTransform;->d:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V8()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/b5$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/b5$b;->e(Lex7;Lcom/yandex/div2/DivTransform;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
