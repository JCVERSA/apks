.class public final Lcom/yandex/div2/DivBorder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivBorder$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/yandex/div2/DivBorder$a;

.field public static final h:Lcom/yandex/div/json/expressions/Expression;

.field public static final i:Ls74;


# instance fields
.field public final a:Lcom/yandex/div/json/expressions/Expression;

.field public final b:Lcom/yandex/div2/DivCornersRadius;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public final d:Lcom/yandex/div2/DivShadow;

.field public final e:Lcom/yandex/div2/DivStroke;

.field public f:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivBorder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivBorder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivBorder;->g:Lcom/yandex/div2/DivBorder$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivBorder;->h:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivBorder$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivBorder$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivBorder;->i:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivCornersRadius;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivShadow;Lcom/yandex/div2/DivStroke;)V
    .locals 1

    const-string v0, "hasShadow"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    iput-object p2, p0, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    iput-object p3, p0, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    iput-object p4, p0, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    iput-object p5, p0, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivBorder;Loj3;Loj3;)Z
    .locals 4

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lcom/yandex/div2/DivBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_2
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivCornersRadius;->a(Lcom/yandex/div2/DivCornersRadius;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p1, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v1, v3, :cond_9

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivShadow;->a(Lcom/yandex/div2/DivShadow;Loj3;Loj3;)Z

    move-result v1

    goto :goto_2

    :cond_5
    iget-object v1, p1, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-eqz p0, :cond_7

    iget-object p1, p1, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivStroke;->a(Lcom/yandex/div2/DivStroke;Loj3;Loj3;)Z

    move-result p0

    goto :goto_3

    :cond_7
    iget-object p0, p1, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-nez p0, :cond_8

    move p0, v2

    goto :goto_3

    :cond_8
    move p0, v0

    :goto_3
    if-eqz p0, :cond_9

    move v0, v2

    :cond_9
    return v0
.end method

.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivBorder;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivBorder;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->b:Lcom/yandex/div2/DivCornersRadius;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div2/DivCornersRadius;->hash()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->d:Lcom/yandex/div2/DivShadow;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div2/DivShadow;->hash()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivBorder;->e:Lcom/yandex/div2/DivStroke;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/yandex/div2/DivStroke;->hash()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivBorder;->f:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/g0$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/g0$b;->e(Lex7;Lcom/yandex/div2/DivBorder;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
