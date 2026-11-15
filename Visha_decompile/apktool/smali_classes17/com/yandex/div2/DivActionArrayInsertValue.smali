.class public final Lcom/yandex/div2/DivActionArrayInsertValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivActionArrayInsertValue$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/div2/DivActionArrayInsertValue$a;

.field public static final f:Ls74;


# instance fields
.field public final a:Lcom/yandex/div/json/expressions/Expression;

.field public final b:Lcom/yandex/div2/DivTypedValue;

.field public final c:Lcom/yandex/div/json/expressions/Expression;

.field public d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivActionArrayInsertValue$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivActionArrayInsertValue$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivActionArrayInsertValue;->e:Lcom/yandex/div2/DivActionArrayInsertValue$a;

    sget-object v0, Lcom/yandex/div2/DivActionArrayInsertValue$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivActionArrayInsertValue$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivActionArrayInsertValue;->f:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivTypedValue;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variableName"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->a:Lcom/yandex/div/json/expressions/Expression;

    iput-object p2, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->b:Lcom/yandex/div2/DivTypedValue;

    iput-object p3, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->c:Lcom/yandex/div/json/expressions/Expression;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivActionArrayInsertValue;Loj3;Loj3;)Z
    .locals 4

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->a:Lcom/yandex/div/json/expressions/Expression;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p1, Lcom/yandex/div2/DivActionArrayInsertValue;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    :cond_2
    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->b:Lcom/yandex/div2/DivTypedValue;

    iget-object v2, p1, Lcom/yandex/div2/DivActionArrayInsertValue;->b:Lcom/yandex/div2/DivTypedValue;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/DivTypedValue;->a(Lcom/yandex/div2/DivTypedValue;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lcom/yandex/div2/DivActionArrayInsertValue;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivActionArrayInsertValue;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->a:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->b:Lcom/yandex/div2/DivTypedValue;

    invoke-virtual {v1}, Lcom/yandex/div2/DivTypedValue;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivActionArrayInsertValue;->d:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->Q()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltd2;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ltd2;->e(Lex7;Lcom/yandex/div2/DivActionArrayInsertValue;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
