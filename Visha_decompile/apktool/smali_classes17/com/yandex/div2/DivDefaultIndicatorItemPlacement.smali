.class public final Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lko4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivDefaultIndicatorItemPlacement$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/div2/DivDefaultIndicatorItemPlacement$a;

.field public static final d:Lcom/yandex/div2/DivFixedSize;

.field public static final e:Ls74;


# instance fields
.field public final a:Lcom/yandex/div2/DivFixedSize;

.field public b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->c:Lcom/yandex/div2/DivDefaultIndicatorItemPlacement$a;

    new-instance v0, Lcom/yandex/div2/DivFixedSize;

    sget-object v2, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/yandex/div2/DivFixedSize;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->d:Lcom/yandex/div2/DivFixedSize;

    sget-object v0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivDefaultIndicatorItemPlacement$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->e:Ls74;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/div2/DivFixedSize;)V
    .locals 1

    const-string v0, "spaceBetweenCenters"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;Loj3;Loj3;)Z
    .locals 1

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otherResolver"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    iget-object p1, p1, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivFixedSize;->a(Lcom/yandex/div2/DivFixedSize;Loj3;Loj3;)Z

    move-result p0

    return p0
.end method

.method public hash()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const-class v0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->a:Lcom/yandex/div2/DivFixedSize;

    invoke-virtual {v1}, Lcom/yandex/div2/DivFixedSize;->hash()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;->b:Ljava/lang/Integer;

    return v0
.end method

.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->G2()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/x0$b;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/x0$b;->e(Lex7;Lcom/yandex/div2/DivDefaultIndicatorItemPlacement;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
