.class public abstract Lcom/yandex/div2/DivTypedValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTypedValue$a;,
        Lcom/yandex/div2/DivTypedValue$b;,
        Lcom/yandex/div2/DivTypedValue$c;,
        Lcom/yandex/div2/DivTypedValue$d;,
        Lcom/yandex/div2/DivTypedValue$e;,
        Lcom/yandex/div2/DivTypedValue$f;,
        Lcom/yandex/div2/DivTypedValue$g;,
        Lcom/yandex/div2/DivTypedValue$h;,
        Lcom/yandex/div2/DivTypedValue$i;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div2/DivTypedValue$d;

.field public static final c:Ls74;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivTypedValue$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTypedValue$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTypedValue;->b:Lcom/yandex/div2/DivTypedValue$d;

    sget-object v0, Lcom/yandex/div2/DivTypedValue$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTypedValue$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTypedValue;->c:Ls74;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div2/DivTypedValue;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivTypedValue;Loj3;Loj3;)Z
    .locals 2

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivTypedValue$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$h;->c()Lcom/yandex/div2/StrValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/StrValue;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/StrValue;

    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/StrValue;->a(Lcom/yandex/div2/StrValue;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$f;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivTypedValue$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$f;->c()Lcom/yandex/div2/IntegerValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/IntegerValue;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/IntegerValue;

    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/IntegerValue;->a(Lcom/yandex/div2/IntegerValue;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$g;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivTypedValue$g;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$g;->c()Lcom/yandex/div2/NumberValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/NumberValue;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/NumberValue;

    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/NumberValue;->a(Lcom/yandex/div2/NumberValue;Loj3;Loj3;)Z

    move-result p0

    goto/16 :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$c;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/yandex/div2/DivTypedValue$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$c;->c()Lcom/yandex/div2/ColorValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/ColorValue;

    if-eqz v0, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/ColorValue;

    :cond_7
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/ColorValue;->a(Lcom/yandex/div2/ColorValue;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_8
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$b;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/yandex/div2/DivTypedValue$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$b;->c()Lcom/yandex/div2/BoolValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/BoolValue;

    if-eqz v0, :cond_9

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/BoolValue;

    :cond_9
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/BoolValue;->a(Lcom/yandex/div2/BoolValue;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_a
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$i;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/yandex/div2/DivTypedValue$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$i;->c()Lcom/yandex/div2/UrlValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/UrlValue;

    if-eqz v0, :cond_b

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/UrlValue;

    :cond_b
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/UrlValue;->a(Lcom/yandex/div2/UrlValue;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_c
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$e;

    if-eqz v0, :cond_e

    check-cast p0, Lcom/yandex/div2/DivTypedValue$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$e;->c()Lcom/yandex/div2/DictValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DictValue;

    if-eqz v0, :cond_d

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DictValue;

    :cond_d
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DictValue;->a(Lcom/yandex/div2/DictValue;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_e
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$a;

    if-eqz v0, :cond_10

    check-cast p0, Lcom/yandex/div2/DivTypedValue$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$a;->c()Lcom/yandex/div2/ArrayValue;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivTypedValue;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/ArrayValue;

    if-eqz v0, :cond_f

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/ArrayValue;

    :cond_f
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/ArrayValue;->a(Lcom/yandex/div2/ArrayValue;Loj3;Loj3;)Z

    move-result p0

    :goto_0
    return p0

    :cond_10
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$h;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivTypedValue$h;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$h;->c()Lcom/yandex/div2/StrValue;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$f;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivTypedValue$f;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$f;->c()Lcom/yandex/div2/IntegerValue;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$g;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivTypedValue$g;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$g;->c()Lcom/yandex/div2/NumberValue;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$c;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivTypedValue$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$c;->c()Lcom/yandex/div2/ColorValue;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$b;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivTypedValue$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$b;->c()Lcom/yandex/div2/BoolValue;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$i;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/yandex/div2/DivTypedValue$i;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$i;->c()Lcom/yandex/div2/UrlValue;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$e;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivTypedValue$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$e;->c()Lcom/yandex/div2/DictValue;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivTypedValue$a;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/yandex/div2/DivTypedValue$a;

    invoke-virtual {p0}, Lcom/yandex/div2/DivTypedValue$a;->c()Lcom/yandex/div2/ArrayValue;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivTypedValue;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    instance-of v1, p0, Lcom/yandex/div2/DivTypedValue$h;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivTypedValue$h;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue$h;->c()Lcom/yandex/div2/StrValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/StrValue;->hash()I

    move-result v1

    goto/16 :goto_0

    :cond_1
    instance-of v1, p0, Lcom/yandex/div2/DivTypedValue$f;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivTypedValue$f;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue$f;->c()Lcom/yandex/div2/IntegerValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/IntegerValue;->hash()I

    move-result v1

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/yandex/div2/DivTypedValue$g;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivTypedValue$g;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue$g;->c()Lcom/yandex/div2/NumberValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/NumberValue;->hash()I

    move-result v1

    goto :goto_0

    :cond_3
    instance-of v1, p0, Lcom/yandex/div2/DivTypedValue$c;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivTypedValue$c;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue$c;->c()Lcom/yandex/div2/ColorValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/ColorValue;->hash()I

    move-result v1

    goto :goto_0

    :cond_4
    instance-of v1, p0, Lcom/yandex/div2/DivTypedValue$b;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivTypedValue$b;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue$b;->c()Lcom/yandex/div2/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/BoolValue;->hash()I

    move-result v1

    goto :goto_0

    :cond_5
    instance-of v1, p0, Lcom/yandex/div2/DivTypedValue$i;

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivTypedValue$i;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue$i;->c()Lcom/yandex/div2/UrlValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/UrlValue;->hash()I

    move-result v1

    goto :goto_0

    :cond_6
    instance-of v1, p0, Lcom/yandex/div2/DivTypedValue$e;

    if-eqz v1, :cond_7

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivTypedValue$e;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue$e;->c()Lcom/yandex/div2/DictValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DictValue;->hash()I

    move-result v1

    goto :goto_0

    :cond_7
    instance-of v1, p0, Lcom/yandex/div2/DivTypedValue$a;

    if-eqz v1, :cond_8

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivTypedValue$a;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue$a;->c()Lcom/yandex/div2/ArrayValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/ArrayValue;->hash()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivTypedValue;->a:Ljava/lang/Integer;

    return v0

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->b9()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/c5;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/c5;->e(Lex7;Lcom/yandex/div2/DivTypedValue;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
