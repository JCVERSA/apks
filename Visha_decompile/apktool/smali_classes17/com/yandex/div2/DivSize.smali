.class public abstract Lcom/yandex/div2/DivSize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivSize$a;,
        Lcom/yandex/div2/DivSize$b;,
        Lcom/yandex/div2/DivSize$c;,
        Lcom/yandex/div2/DivSize$d;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div2/DivSize$a;

.field public static final c:Ls74;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivSize$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivSize$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivSize;->b:Lcom/yandex/div2/DivSize$a;

    sget-object v0, Lcom/yandex/div2/DivSize$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivSize$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivSize;->c:Ls74;

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
    invoke-direct {p0}, Lcom/yandex/div2/DivSize;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivSize;Loj3;Loj3;)Z
    .locals 2

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivSize$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivFixedSize;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivFixedSize;

    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivFixedSize;->a(Lcom/yandex/div2/DivFixedSize;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivSize$c;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivSize$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$c;->c()Lcom/yandex/div2/DivMatchParentSize;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivMatchParentSize;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivMatchParentSize;

    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivMatchParentSize;->a(Lcom/yandex/div2/DivMatchParentSize;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivSize$d;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivSize$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivSize;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivWrapContentSize;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivWrapContentSize;

    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivWrapContentSize;->a(Lcom/yandex/div2/DivWrapContentSize;Loj3;Loj3;)Z

    move-result p0

    :goto_0
    return p0

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivSize$b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivSize$c;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivSize$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$c;->c()Lcom/yandex/div2/DivMatchParentSize;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivSize$d;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivSize$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivSize;->a:Ljava/lang/Integer;

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

    instance-of v1, p0, Lcom/yandex/div2/DivSize$b;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivSize$b;

    invoke-virtual {v1}, Lcom/yandex/div2/DivSize$b;->c()Lcom/yandex/div2/DivFixedSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivFixedSize;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lcom/yandex/div2/DivSize$c;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivSize$c;

    invoke-virtual {v1}, Lcom/yandex/div2/DivSize$c;->c()Lcom/yandex/div2/DivMatchParentSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivMatchParentSize;->hash()I

    move-result v1

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/yandex/div2/DivSize$d;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivSize$d;

    invoke-virtual {v1}, Lcom/yandex/div2/DivSize$d;->c()Lcom/yandex/div2/DivWrapContentSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivWrapContentSize;->hash()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivSize;->a:Ljava/lang/Integer;

    return v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->V6()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/p3;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/p3;->e(Lex7;Lcom/yandex/div2/DivSize;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
