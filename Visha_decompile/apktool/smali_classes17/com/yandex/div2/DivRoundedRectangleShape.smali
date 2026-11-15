.class public final Lcom/yandex/div2/DivRoundedRectangleShape;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivRoundedRectangleShape$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/yandex/div2/DivRoundedRectangleShape$a;

.field public static final h:Lcom/yandex/div2/DivFixedSize;

.field public static final i:Lcom/yandex/div2/DivFixedSize;

.field public static final j:Lcom/yandex/div2/DivFixedSize;

.field public static final k:Ls74;


# instance fields
.field public final a:Lcom/yandex/div/json/expressions/Expression;

.field public final b:Lcom/yandex/div2/DivFixedSize;

.field public final c:Lcom/yandex/div2/DivFixedSize;

.field public final d:Lcom/yandex/div2/DivFixedSize;

.field public final e:Lcom/yandex/div2/DivStroke;

.field public f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/yandex/div2/DivRoundedRectangleShape$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivRoundedRectangleShape$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivRoundedRectangleShape;->g:Lcom/yandex/div2/DivRoundedRectangleShape$a;

    new-instance v0, Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v3, 0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivRoundedRectangleShape;->h:Lcom/yandex/div2/DivFixedSize;

    new-instance v0, Lcom/yandex/div2/DivFixedSize;

    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v5

    invoke-direct {v0, v1, v5, v4, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivRoundedRectangleShape;->i:Lcom/yandex/div2/DivFixedSize;

    new-instance v0, Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivRoundedRectangleShape;->j:Lcom/yandex/div2/DivFixedSize;

    sget-object v0, Lcom/yandex/div2/DivRoundedRectangleShape$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivRoundedRectangleShape$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivRoundedRectangleShape;->k:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivStroke;)V
    .locals 1

    const-string v0, "cornerRadius"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemHeight"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemWidth"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    .line 3
    iput-object p2, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    .line 4
    iput-object p3, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    .line 5
    iput-object p4, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    .line 6
    iput-object p5, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivStroke;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 7
    sget-object p2, Lcom/yandex/div2/DivRoundedRectangleShape;->h:Lcom/yandex/div2/DivFixedSize;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 8
    sget-object p3, Lcom/yandex/div2/DivRoundedRectangleShape;->i:Lcom/yandex/div2/DivFixedSize;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    .line 9
    sget-object p4, Lcom/yandex/div2/DivRoundedRectangleShape;->j:Lcom/yandex/div2/DivFixedSize;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    .line 10
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/yandex/div2/DivRoundedRectangleShape;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivFixedSize;Lcom/yandex/div2/DivStroke;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivRoundedRectangleShape;Loj3;Loj3;)Z
    .locals 4

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    :cond_2
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivFixedSize;->a(Lcom/yandex/div2/DivFixedSize;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivFixedSize;->a(Lcom/yandex/div2/DivFixedSize;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    iget-object v2, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivFixedSize;->a(Lcom/yandex/div2/DivFixedSize;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivStroke;->a(Lcom/yandex/div2/DivStroke;Loj3;Loj3;)Z

    move-result p0

    goto :goto_1

    :cond_3
    iget-object p0, p1, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    if-nez p0, :cond_4

    move p0, v1

    goto :goto_1

    :cond_4
    move p0, v0

    :goto_1
    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivRoundedRectangleShape;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->b:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1}, Lcom/yandex/div2/DivFixedSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->c:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1}, Lcom/yandex/div2/DivFixedSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->d:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1}, Lcom/yandex/div2/DivFixedSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->e:Lcom/yandex/div2/DivStroke;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div2/DivStroke;->hash()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivRoundedRectangleShape;->f:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->u6()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/h3$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/h3$b;->e(Lex7;Lcom/yandex/div2/DivRoundedRectangleShape;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
