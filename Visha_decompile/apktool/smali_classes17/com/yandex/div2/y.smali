.class public final Lcom/yandex/div2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/y;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransition;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/y;->e(Lex7;Lcom/yandex/div2/DivAppearanceTransition;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceTransition;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "readString(context, data, \"type\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "slide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div2/DivAppearanceTransition$e;

    iget-object p0, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Y6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSlideTransitionJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlideTransition;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransition$e;-><init>(Lcom/yandex/div2/DivSlideTransition;)V

    return-object v0

    :sswitch_1
    const-string v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/yandex/div2/DivAppearanceTransition$c;

    iget-object p0, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->x6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivScaleTransitionJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivScaleTransitionJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivScaleTransition;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransition$c;-><init>(Lcom/yandex/div2/DivScaleTransition;)V

    return-object v0

    :sswitch_2
    const-string v2, "fade"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/yandex/div2/DivAppearanceTransition$b;

    iget-object p0, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFadeTransitionJsonParser$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivFadeTransitionJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFadeTransition;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransition$b;-><init>(Lcom/yandex/div2/DivFadeTransition;)V

    return-object v0

    :sswitch_3
    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Lkga;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivAppearanceTransitionTemplate;

    if-eqz v3, :cond_3

    check-cast v2, Lcom/yandex/div2/DivAppearanceTransitionTemplate;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/a0;

    invoke-virtual {p0, p1, v2, p2}, Lcom/yandex/div2/a0;->b(Lex7;Lcom/yandex/div2/DivAppearanceTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceTransition;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_5
    new-instance v0, Lcom/yandex/div2/DivAppearanceTransition$d;

    iget-object p0, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/x$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/x$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceSetTransition;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransition$d;-><init>(Lcom/yandex/div2/DivAppearanceSetTransition;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1bc62 -> :sswitch_3
        0x2fd67c -> :sswitch_2
        0x683094a -> :sswitch_1
        0x6873db1 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lex7;Lcom/yandex/div2/DivAppearanceTransition;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransition$d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/x$b;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransition$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransition$d;->c()Lcom/yandex/div2/DivAppearanceSetTransition;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/x$b;->e(Lex7;Lcom/yandex/div2/DivAppearanceSetTransition;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransition$b;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->b3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFadeTransitionJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransition$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransition$b;->c()Lcom/yandex/div2/DivFadeTransition;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivFadeTransitionJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivFadeTransition;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransition$c;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->x6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivScaleTransitionJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransition$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransition$c;->c()Lcom/yandex/div2/DivScaleTransition;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivScaleTransitionJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivScaleTransition;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransition$e;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/y;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Y6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$b;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransition$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransition$e;->c()Lcom/yandex/div2/DivSlideTransition;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSlideTransitionJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivSlideTransition;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
