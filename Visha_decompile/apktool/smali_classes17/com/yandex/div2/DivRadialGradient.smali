.class public final Lcom/yandex/div2/DivRadialGradient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivRadialGradient$ColorPoint;,
        Lcom/yandex/div2/DivRadialGradient$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/yandex/div2/DivRadialGradient$a;

.field public static final h:Lcom/yandex/div2/DivRadialGradientCenter$c;

.field public static final i:Lcom/yandex/div2/DivRadialGradientCenter$c;

.field public static final j:Lcom/yandex/div2/DivRadialGradientRadius$c;

.field public static final k:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivRadialGradientCenter;

.field public final b:Lcom/yandex/div2/DivRadialGradientCenter;

.field public final c:Ljava/util/List;

.field public final d:Lnj3;

.field public final e:Lcom/yandex/div2/DivRadialGradientRadius;

.field public f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/DivRadialGradient$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivRadialGradient$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivRadialGradient;->g:Lcom/yandex/div2/DivRadialGradient$a;

    new-instance v0, Lcom/yandex/div2/DivRadialGradientCenter$c;

    new-instance v1, Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    sget-object v2, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/yandex/div2/DivRadialGradientRelativeCenter;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivRadialGradientCenter$c;-><init>(Lcom/yandex/div2/DivRadialGradientRelativeCenter;)V

    sput-object v0, Lcom/yandex/div2/DivRadialGradient;->h:Lcom/yandex/div2/DivRadialGradientCenter$c;

    new-instance v0, Lcom/yandex/div2/DivRadialGradientCenter$c;

    new-instance v1, Lcom/yandex/div2/DivRadialGradientRelativeCenter;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/yandex/div2/DivRadialGradientRelativeCenter;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivRadialGradientCenter$c;-><init>(Lcom/yandex/div2/DivRadialGradientRelativeCenter;)V

    sput-object v0, Lcom/yandex/div2/DivRadialGradient;->i:Lcom/yandex/div2/DivRadialGradientCenter$c;

    new-instance v0, Lcom/yandex/div2/DivRadialGradientRadius$c;

    new-instance v1, Lcom/yandex/div2/DivRadialGradientRelativeRadius;

    sget-object v3, Lcom/yandex/div2/DivRadialGradientRelativeRadius$Value;->FARTHEST_CORNER:Lcom/yandex/div2/DivRadialGradientRelativeRadius$Value;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yandex/div2/DivRadialGradientRelativeRadius;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivRadialGradientRadius$c;-><init>(Lcom/yandex/div2/DivRadialGradientRelativeRadius;)V

    sput-object v0, Lcom/yandex/div2/DivRadialGradient;->j:Lcom/yandex/div2/DivRadialGradientRadius$c;

    sget-object v0, Lcom/yandex/div2/DivRadialGradient$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivRadialGradient$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivRadialGradient;->k:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivRadialGradientCenter;Lcom/yandex/div2/DivRadialGradientCenter;Ljava/util/List;Lnj3;Lcom/yandex/div2/DivRadialGradientRadius;)V
    .locals 1

    const-string v0, "centerX"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "centerY"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "radius"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    iput-object p2, p0, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    iput-object p3, p0, Lcom/yandex/div2/DivRadialGradient;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    iput-object p5, p0, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivRadialGradient;Loj3;Loj3;)Z
    .locals 6

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    iget-object v2, p1, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivRadialGradientCenter;->a(Lcom/yandex/div2/DivRadialGradientCenter;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    iget-object v2, p1, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivRadialGradientCenter;->a(Lcom/yandex/div2/DivRadialGradientCenter;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->c:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v2, p1, Lcom/yandex/div2/DivRadialGradient;->c:Ljava/util/List;

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_3

    invoke-static {}, Ly71;->u()V

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div2/DivRadialGradient$ColorPoint;

    check-cast v4, Lcom/yandex/div2/DivRadialGradient$ColorPoint;

    invoke-virtual {v4, v3, p2, p3}, Lcom/yandex/div2/DivRadialGradient$ColorPoint;->a(Lcom/yandex/div2/DivRadialGradient$ColorPoint;Loj3;Loj3;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/yandex/div2/DivRadialGradient;->c:Ljava/util/List;

    if-nez v1, :cond_d

    :cond_6
    iget-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    if-eqz v1, :cond_b

    invoke-interface {v1, p2}, Lnj3;->a(Loj3;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, p1, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    if-eqz v2, :cond_a

    invoke-interface {v2, p3}, Lnj3;->a(Loj3;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_8

    goto :goto_3

    :cond_8
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_9

    invoke-static {}, Ly71;->u()V

    :cond_9
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_d

    move v3, v5

    goto :goto_1

    :cond_a
    :goto_2
    return v0

    :cond_b
    iget-object v1, p1, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    if-nez v1, :cond_d

    :cond_c
    iget-object p0, p0, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    iget-object p1, p1, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivRadialGradientRadius;->a(Lcom/yandex/div2/DivRadialGradientRadius;Loj3;Loj3;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 v0, 0x1

    :cond_d
    :goto_3
    return v0
.end method

.method public hash()I
    .locals 5

    iget-object v0, p0, Lcom/yandex/div2/DivRadialGradient;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivRadialGradient;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->a:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {v1}, Lcom/yandex/div2/DivRadialGradientCenter;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->b:Lcom/yandex/div2/DivRadialGradientCenter;

    invoke-virtual {v1}, Lcom/yandex/div2/DivRadialGradientCenter;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->c:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivRadialGradient$ColorPoint;

    invoke-virtual {v4}, Lcom/yandex/div2/DivRadialGradient$ColorPoint;->hash()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->d:Lnj3;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->e:Lcom/yandex/div2/DivRadialGradientRadius;

    invoke-virtual {v1}, Lcom/yandex/div2/DivRadialGradientRadius;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivRadialGradient;->f:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->i6()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/d3$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/d3$b;->e(Lex7;Lcom/yandex/div2/DivRadialGradient;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
