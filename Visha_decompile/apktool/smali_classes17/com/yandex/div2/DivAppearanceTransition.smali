.class public abstract Lcom/yandex/div2/DivAppearanceTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivAppearanceTransition$a;,
        Lcom/yandex/div2/DivAppearanceTransition$b;,
        Lcom/yandex/div2/DivAppearanceTransition$c;,
        Lcom/yandex/div2/DivAppearanceTransition$d;,
        Lcom/yandex/div2/DivAppearanceTransition$e;
    }
.end annotation


# static fields
.field public static final b:Lcom/yandex/div2/DivAppearanceTransition$a;

.field public static final c:Ls74;


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/DivAppearanceTransition$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivAppearanceTransition$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivAppearanceTransition;->b:Lcom/yandex/div2/DivAppearanceTransition$a;

    sget-object v0, Lcom/yandex/div2/DivAppearanceTransition$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivAppearanceTransition$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivAppearanceTransition;->c:Ls74;

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
    invoke-direct {p0}, Lcom/yandex/div2/DivAppearanceTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivAppearanceTransition;Loj3;Loj3;)Z
    .locals 2

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivAppearanceTransition$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivAppearanceTransition$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAppearanceTransition$d;->c()Lcom/yandex/div2/DivAppearanceSetTransition;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivAppearanceSetTransition;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivAppearanceSetTransition;

    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivAppearanceSetTransition;->a(Lcom/yandex/div2/DivAppearanceSetTransition;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivAppearanceTransition$b;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/yandex/div2/DivAppearanceTransition$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAppearanceTransition$b;->c()Lcom/yandex/div2/DivFadeTransition;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivFadeTransition;

    if-eqz v0, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivFadeTransition;

    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivFadeTransition;->a(Lcom/yandex/div2/DivFadeTransition;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/yandex/div2/DivAppearanceTransition$c;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/yandex/div2/DivAppearanceTransition$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivScaleTransition;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivScaleTransition;

    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivScaleTransition;->a(Lcom/yandex/div2/DivScaleTransition;Loj3;Loj3;)Z

    move-result p0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lcom/yandex/div2/DivAppearanceTransition$e;

    if-eqz v0, :cond_8

    check-cast p0, Lcom/yandex/div2/DivAppearanceTransition$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAppearanceTransition$e;->c()Lcom/yandex/div2/DivSlideTransition;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/div2/DivAppearanceTransition;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/yandex/div2/DivSlideTransition;

    if-eqz v0, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/yandex/div2/DivSlideTransition;

    :cond_7
    invoke-virtual {p0, v1, p2, p3}, Lcom/yandex/div2/DivSlideTransition;->a(Lcom/yandex/div2/DivSlideTransition;Loj3;Loj3;)Z

    move-result p0

    :goto_0
    return p0

    :cond_8
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lcom/yandex/div2/DivAppearanceTransition$d;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/yandex/div2/DivAppearanceTransition$d;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAppearanceTransition$d;->c()Lcom/yandex/div2/DivAppearanceSetTransition;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/yandex/div2/DivAppearanceTransition$b;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/yandex/div2/DivAppearanceTransition$b;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAppearanceTransition$b;->c()Lcom/yandex/div2/DivFadeTransition;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/yandex/div2/DivAppearanceTransition$c;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/yandex/div2/DivAppearanceTransition$c;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/yandex/div2/DivAppearanceTransition$e;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/yandex/div2/DivAppearanceTransition$e;

    invoke-virtual {p0}, Lcom/yandex/div2/DivAppearanceTransition$e;->c()Lcom/yandex/div2/DivSlideTransition;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivAppearanceTransition;->a:Ljava/lang/Integer;

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

    instance-of v1, p0, Lcom/yandex/div2/DivAppearanceTransition$d;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivAppearanceTransition$d;

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition$d;->c()Lcom/yandex/div2/DivAppearanceSetTransition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceSetTransition;->hash()I

    move-result v1

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lcom/yandex/div2/DivAppearanceTransition$b;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivAppearanceTransition$b;

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition$b;->c()Lcom/yandex/div2/DivFadeTransition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivFadeTransition;->hash()I

    move-result v1

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/yandex/div2/DivAppearanceTransition$c;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivAppearanceTransition$c;

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivScaleTransition;->hash()I

    move-result v1

    goto :goto_0

    :cond_3
    instance-of v1, p0, Lcom/yandex/div2/DivAppearanceTransition$e;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lcom/yandex/div2/DivAppearanceTransition$e;

    invoke-virtual {v1}, Lcom/yandex/div2/DivAppearanceTransition$e;->c()Lcom/yandex/div2/DivSlideTransition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div2/DivSlideTransition;->hash()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivAppearanceTransition;->a:Ljava/lang/Integer;

    return v0

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/y;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/y;->e(Lex7;Lcom/yandex/div2/DivAppearanceTransition;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
