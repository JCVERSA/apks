.class public final Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld65;
.implements Lac5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivSliderTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextStyleTemplate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate$a;

.field public static final j:Lcom/yandex/div/json/expressions/Expression;

.field public static final k:Lcom/yandex/div/json/expressions/Expression;

.field public static final l:Lcom/yandex/div/json/expressions/Expression;

.field public static final m:Lcom/yandex/div/json/expressions/Expression;

.field public static final n:Ls74;


# instance fields
.field public final a:Ltp3;

.field public final b:Ltp3;

.field public final c:Ltp3;

.field public final d:Ltp3;

.field public final e:Ltp3;

.field public final f:Ltp3;

.field public final g:Ltp3;

.field public final h:Ltp3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->i:Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v1, 0xc

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->j:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivSizeUnit;->SP:Lcom/yandex/div2/DivSizeUnit;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->k:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivFontWeight;->REGULAR:Lcom/yandex/div2/DivFontWeight;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->l:Lcom/yandex/div/json/expressions/Expression;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->m:Lcom/yandex/div/json/expressions/Expression;

    sget-object v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate$Companion$CREATOR$1;->INSTANCE:Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate$Companion$CREATOR$1;

    sput-object v0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->n:Ls74;

    return-void
.end method

.method public constructor <init>(Lhx7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;ZLorg/json/JSONObject;)V
    .locals 9

    const-string p2, "env"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "json"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object p1, Ltp3;->c:Ltp3$a;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v1

    .line 12
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v2

    .line 13
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v3

    .line 14
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v4

    .line 15
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v5

    .line 16
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v6

    .line 17
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v7

    .line 18
    invoke-virtual {p1, p2}, Ltp3$a;->a(Z)Ltp3;

    move-result-object v8

    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    .line 20
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Do not use this constructor directly."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lhx7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;ZLorg/json/JSONObject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 10
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;-><init>(Lhx7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V
    .locals 1

    const-string v0, "fontFamily"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontSize"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontSizeUnit"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontVariationSettings"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeight"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fontWeightValue"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offset"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->a:Ltp3;

    .line 3
    iput-object p2, p0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->b:Ltp3;

    .line 4
    iput-object p3, p0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->c:Ltp3;

    .line 5
    iput-object p4, p0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->d:Ltp3;

    .line 6
    iput-object p5, p0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->e:Ltp3;

    .line 7
    iput-object p6, p0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->f:Ltp3;

    .line 8
    iput-object p7, p0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->g:Ltp3;

    .line 9
    iput-object p8, p0, Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;->h:Ltp3;

    return-void
.end method


# virtual methods
.method public s()Lorg/json/JSONObject;
    .locals 2

    invoke-static {}, Lml0;->a()Lcom/yandex/div2/JsonParserComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->i7()Lyi5;

    move-result-object v0

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivSliderTextStyleJsonParser$c;

    invoke-static {}, Lml0;->b()Lex7;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/yandex/div2/DivSliderTextStyleJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSliderTemplate$TextStyleTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
