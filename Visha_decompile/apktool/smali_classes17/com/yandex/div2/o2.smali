.class public final Lcom/yandex/div2/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/o2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPageTransformationTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/o2;->b(Lex7;Lcom/yandex/div2/DivPageTransformationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPageTransformation;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivPageTransformationTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPageTransformation;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivPageTransformationTemplate$c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivPageTransformation$c;

    iget-object p0, p0, Lcom/yandex/div2/o2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPageTransformationSlideJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivPageTransformationTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivPageTransformationTemplate$c;->c()Lcom/yandex/div2/DivPageTransformationSlideTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivPageTransformationSlideJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivPageTransformationSlideTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPageTransformationSlide;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivPageTransformation$c;-><init>(Lcom/yandex/div2/DivPageTransformationSlide;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivPageTransformationTemplate$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivPageTransformation$b;

    iget-object p0, p0, Lcom/yandex/div2/o2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->s5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivPageTransformationTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivPageTransformationTemplate$b;->c()Lcom/yandex/div2/DivPageTransformationOverlapTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivPageTransformationOverlapJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivPageTransformationOverlapTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPageTransformationOverlap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivPageTransformation$b;-><init>(Lcom/yandex/div2/DivPageTransformationOverlap;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
