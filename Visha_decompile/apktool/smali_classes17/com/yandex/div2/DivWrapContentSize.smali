.class public final Lcom/yandex/div2/DivWrapContentSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivWrapContentSize$a;,
        Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/div2/DivWrapContentSize$a;

.field public static final f:Ls74;


# instance fields
.field public final a:Lcom/yandex/div/json/expressions/Expression;

.field public final b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

.field public final c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

.field public d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivWrapContentSize$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivWrapContentSize$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivWrapContentSize;->e:Lcom/yandex/div2/DivWrapContentSize$a;

    sget-object v0, Lcom/yandex/div2/DivWrapContentSize$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivWrapContentSize$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivWrapContentSize;->f:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    .line 3
    iput-object p2, p0, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    .line 4
    iput-object p3, p0, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div2/DivWrapContentSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivWrapContentSize;Loj3;Loj3;)Z
    .locals 4

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    :cond_2
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    invoke-virtual {v1, v3, p2, p3}, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->a(Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;Loj3;)Z

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz p0, :cond_5

    iget-object p1, p1, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->a(Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;Loj3;Loj3;)Z

    move-result p0

    goto :goto_2

    :cond_5
    iget-object p0, p1, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-nez p0, :cond_6

    move p0, v2

    goto :goto_2

    :cond_6
    move p0, v0

    :goto_2
    if-eqz p0, :cond_7

    move v0, v2

    :cond_7
    return v0
.end method

.method public hash()I
    .locals 3

    iget-object v0, p0, Lcom/yandex/div2/DivWrapContentSize;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivWrapContentSize;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivWrapContentSize;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivWrapContentSize;->b:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->hash()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivWrapContentSize;->c:Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div2/DivWrapContentSize$ConstraintSize;->hash()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivWrapContentSize;->d:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->w9()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/m5;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/m5;->e(Lex7;Lcom/yandex/div2/DivWrapContentSize;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
