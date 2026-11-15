.class public final Lcom/yandex/div2/a0;
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

    iput-object p1, p0, Lcom/yandex/div2/a0;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/a0;->b(Lex7;Lcom/yandex/div2/DivAppearanceTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivAppearanceTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceTransition;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$d;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivAppearanceTransition$d;

    iget-object p0, p0, Lcom/yandex/div2/a0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/x$d;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$d;->c()Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/x$d;->b(Lex7;Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceSetTransition;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransition$d;-><init>(Lcom/yandex/div2/DivAppearanceSetTransition;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivAppearanceTransition$b;

    iget-object p0, p0, Lcom/yandex/div2/a0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->d3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFadeTransitionJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$b;->c()Lcom/yandex/div2/DivFadeTransitionTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivFadeTransitionJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivFadeTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFadeTransition;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransition$b;-><init>(Lcom/yandex/div2/DivFadeTransition;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$c;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/DivAppearanceTransition$c;

    iget-object p0, p0, Lcom/yandex/div2/a0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->z6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivScaleTransitionJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$c;->c()Lcom/yandex/div2/DivScaleTransitionTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivScaleTransitionJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivScaleTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivScaleTransition;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransition$c;-><init>(Lcom/yandex/div2/DivScaleTransition;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$e;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/div2/DivAppearanceTransition$e;

    iget-object p0, p0, Lcom/yandex/div2/a0;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->a7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$d;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$e;->c()Lcom/yandex/div2/DivSlideTransitionTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivSlideTransitionJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivSlideTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlideTransition;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransition$e;-><init>(Lcom/yandex/div2/DivSlideTransition;)V

    :goto_0
    return-object v0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
