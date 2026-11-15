.class public final Lcom/yandex/div2/DivStretchIndicatorItemPlacement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivStretchIndicatorItemPlacement$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/yandex/div2/DivStretchIndicatorItemPlacement$a;

.field public static final e:Lcom/yandex/div2/DivFixedSize;

.field public static final f:Lcom/yandex/div/json/expressions/Expression;

.field public static final g:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivFixedSize;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivStretchIndicatorItemPlacement$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->d:Lcom/yandex/div2/DivStretchIndicatorItemPlacement$a;

    new-instance v0, Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->e:Lcom/yandex/div2/DivFixedSize;

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->f:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivStretchIndicatorItemPlacement$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->g:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 1

    const-string v0, "itemSpacing"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "maxVisibleItems"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    iput-object p2, p0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->b:Lcom/yandex/div/json/expressions/Expression;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivStretchIndicatorItemPlacement;Loj3;Loj3;)Z
    .locals 3

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, p1, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivFixedSize;->a(Lcom/yandex/div2/DivFixedSize;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object p0, p1, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1}, Lcom/yandex/div2/DivFixedSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivStretchIndicatorItemPlacement;->c:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->t7()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/y3$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/y3$b;->e(Lex7;Lcom/yandex/div2/DivStretchIndicatorItemPlacement;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
