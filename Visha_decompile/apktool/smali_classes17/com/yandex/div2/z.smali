.class public final Lcom/yandex/div2/z;
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

    iput-object p1, p0, Lcom/yandex/div2/z;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/z;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceTransitionTemplate;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/z;->e(Lex7;Lcom/yandex/div2/DivAppearanceTransitionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceTransitionTemplate;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, p2, v0}, Ltb5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "readString(context, data, \"type\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->a()Lkga;

    move-result-object v2

    invoke-interface {v2, v1}, Lkga;->get(Ljava/lang/String;)Lza3;

    move-result-object v2

    instance-of v3, v2, Lcom/yandex/div2/DivAppearanceTransitionTemplate;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/yandex/div2/DivAppearanceTransitionTemplate;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "slide"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lcom/yandex/div2/DivAppearanceTransitionTemplate$e;

    iget-object p0, p0, Lcom/yandex/div2/z;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Z6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$c;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_3
    check-cast v4, Lcom/yandex/div2/DivSlideTransitionTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivSlideTransitionJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivSlideTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivSlideTransitionTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$e;-><init>(Lcom/yandex/div2/DivSlideTransitionTemplate;)V

    return-object v0

    :sswitch_1
    const-string v3, "scale"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lcom/yandex/div2/DivAppearanceTransitionTemplate$c;

    iget-object p0, p0, Lcom/yandex/div2/z;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->y6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivScaleTransitionJsonParser$c;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_4
    check-cast v4, Lcom/yandex/div2/DivScaleTransitionTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivScaleTransitionJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivScaleTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivScaleTransitionTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$c;-><init>(Lcom/yandex/div2/DivScaleTransitionTemplate;)V

    return-object v0

    :sswitch_2
    const-string v3, "fade"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lcom/yandex/div2/DivAppearanceTransitionTemplate$b;

    iget-object p0, p0, Lcom/yandex/div2/z;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFadeTransitionJsonParser$c;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_5
    check-cast v4, Lcom/yandex/div2/DivFadeTransitionTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/DivFadeTransitionJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivFadeTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFadeTransitionTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$b;-><init>(Lcom/yandex/div2/DivFadeTransitionTemplate;)V

    return-object v0

    :sswitch_3
    const-string v3, "set"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v0, Lcom/yandex/div2/DivAppearanceTransitionTemplate$d;

    iget-object p0, p0, Lcom/yandex/div2/z;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/x$c;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate;->b()Ljava/lang/Object;

    move-result-object v4

    :cond_6
    check-cast v4, Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;

    invoke-virtual {p0, p1, v4, p2}, Lcom/yandex/div2/x$c;->d(Lex7;Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$d;-><init>(Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;)V

    return-object v0

    :cond_7
    :goto_2
    invoke-static {p2, v0, v1}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x1bc62 -> :sswitch_3
        0x2fd67c -> :sswitch_2
        0x683094a -> :sswitch_1
        0x6873db1 -> :sswitch_0
    .end sparse-switch
.end method

.method public e(Lex7;Lcom/yandex/div2/DivAppearanceTransitionTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div2/z;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u1()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/x$c;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$d;->c()Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/x$c;->e(Lex7;Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$b;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/div2/z;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->c3()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFadeTransitionJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$b;->c()Lcom/yandex/div2/DivFadeTransitionTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivFadeTransitionJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivFadeTransitionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$c;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/div2/z;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->y6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivScaleTransitionJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$c;->c()Lcom/yandex/div2/DivScaleTransitionTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivScaleTransitionJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivScaleTransitionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$e;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div2/z;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Z6()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivSlideTransitionJsonParser$c;

    check-cast p2, Lcom/yandex/div2/DivAppearanceTransitionTemplate$e;

    invoke-virtual {p2}, Lcom/yandex/div2/DivAppearanceTransitionTemplate$e;->c()Lcom/yandex/div2/DivSlideTransitionTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivSlideTransitionJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivSlideTransitionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
