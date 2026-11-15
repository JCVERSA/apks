.class public final Lcom/yandex/div2/DivTabs$Item;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTabs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivTabs$Item$a;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/div2/DivTabs$Item$a;

.field public static final f:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/Div;

.field public final b:Lcom/yandex/div/json/expressions/Expression;

.field public final c:Lcom/yandex/div2/DivAction;

.field public d:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivTabs$Item$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivTabs$Item$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivTabs$Item;->e:Lcom/yandex/div2/DivTabs$Item$a;

    sget-object v0, Lcom/yandex/div2/DivTabs$Item$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivTabs$Item$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivTabs$Item;->f:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAction;)V
    .locals 1

    const-string v0, "div"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    iput-object p2, p0, Lcom/yandex/div2/DivTabs$Item;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object p3, p0, Lcom/yandex/div2/DivTabs$Item;->c:Lcom/yandex/div2/DivAction;

    return-void
.end method

.method public static synthetic b(Lcom/yandex/div2/DivTabs$Item;Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAction;ILjava/lang/Object;)Lcom/yandex/div2/DivTabs$Item;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/yandex/div2/DivTabs$Item;->b:Lcom/yandex/div/json/expressions/Expression;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/yandex/div2/DivTabs$Item;->c:Lcom/yandex/div2/DivAction;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTabs$Item;->a(Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAction;)Lcom/yandex/div2/DivTabs$Item;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAction;)Lcom/yandex/div2/DivTabs$Item;
    .locals 0

    const-string p0, "div"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "title"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivTabs$Item;

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div2/DivTabs$Item;-><init>(Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAction;)V

    return-object p0
.end method

.method public final c(Lcom/yandex/div2/DivTabs$Item;Loj3;Loj3;)Z
    .locals 3

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    iget-object v2, p1, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v1, v2, p2, p3}, Lcom/yandex/div2/Div;->a(Lcom/yandex/div2/Div;Loj3;Loj3;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$Item;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/yandex/div2/DivTabs$Item;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/DivTabs$Item;->c:Lcom/yandex/div2/DivAction;

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/yandex/div2/DivTabs$Item;->c:Lcom/yandex/div2/DivAction;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivAction;->a(Lcom/yandex/div2/DivAction;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/yandex/div2/DivTabs$Item;->c:Lcom/yandex/div2/DivAction;

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivTabs$Item;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivTabs$Item;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$Item;->a:Lcom/yandex/div2/Div;

    invoke-virtual {v1}, Lcom/yandex/div2/Div;->hash()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$Item;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v1}, Lcom/yandex/div/json/expressions/Expression;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/yandex/div2/DivTabs$Item;->c:Lcom/yandex/div2/DivAction;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/yandex/div2/DivAction;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivTabs$Item;->d:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->L7()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/c4;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/c4;->e(Lex7;Lcom/yandex/div2/DivTabs$Item;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
