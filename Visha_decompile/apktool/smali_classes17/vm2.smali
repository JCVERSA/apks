.class public final Lvm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvm2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivNinePatchBackgroundTemplate;

    invoke-virtual {p0, p1, p2}, Lvm2;->e(Lex7;Lcom/yandex/div2/DivNinePatchBackgroundTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivNinePatchBackgroundTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lvm2;->d(Lex7;Lcom/yandex/div2/DivNinePatchBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNinePatchBackgroundTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivNinePatchBackgroundTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNinePatchBackgroundTemplate;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v8, Lcom/yandex/div2/DivNinePatchBackgroundTemplate;

    sget-object v4, Lacb;->e:Lzbb;

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/yandex/div2/DivNinePatchBackgroundTemplate;->a:Ltp3;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v9

    :goto_0
    sget-object v7, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v3, "image_url"

    move-object v1, p1

    move-object v2, p3

    move v5, v0

    invoke-static/range {v1 .. v7}, Lra5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v7

    const-string v1, "readFieldWithExpression(\u2026nt?.imageUrl, ANY_TO_URI)"

    invoke-static {v7, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/yandex/div2/DivNinePatchBackgroundTemplate;->b:Ltp3;

    move-object v5, p2

    goto :goto_1

    :cond_1
    move-object v5, v9

    :goto_1
    iget-object p0, p0, Lvm2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->F()Lyi5;

    move-result-object v6

    const-string v3, "insets"

    move-object v1, p1

    move-object v2, p3

    move v4, v0

    invoke-static/range {v1 .. v6}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object p0

    const-string p1, "readField(context, data,\u2026InsetsJsonTemplateParser)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v7, p0}, Lcom/yandex/div2/DivNinePatchBackgroundTemplate;-><init>(Ltp3;Ltp3;)V

    return-object v8
.end method

.method public e(Lex7;Lcom/yandex/div2/DivNinePatchBackgroundTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivNinePatchBackgroundTemplate;->a:Ltp3;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v3, "image_url"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object p2, p2, Lcom/yandex/div2/DivNinePatchBackgroundTemplate;->b:Ltp3;

    iget-object p0, p0, Lvm2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->F()Lyi5;

    move-result-object p0

    const-string v1, "insets"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "type"

    const-string p2, "nine_patch_image"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
