.class public final Lcom/yandex/div2/m1;
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

    iput-object p1, p0, Lcom/yandex/div2/m1;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/m1;->b(Lex7;Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFocus$NextFocusIds;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFocus$NextFocusIds;
    .locals 6

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivFocus$NextFocusIds;

    iget-object v0, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->a:Ltp3;

    sget-object v1, Lacb;->c:Lzbb;

    const-string v2, "down"

    invoke-static {p1, v0, p3, v2, v1}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    iget-object v0, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->b:Ltp3;

    const-string v3, "forward"

    invoke-static {p1, v0, p3, v3, v1}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    iget-object v0, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->c:Ltp3;

    const-string v4, "left"

    invoke-static {p1, v0, p3, v4, v1}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    iget-object v0, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->d:Ltp3;

    const-string v5, "right"

    invoke-static {p1, v0, p3, v5, v1}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v5

    iget-object p2, p2, Lcom/yandex/div2/DivFocusTemplate$NextFocusIdsTemplate;->e:Ltp3;

    const-string v0, "up"

    invoke-static {p1, p2, p3, v0, v1}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div2/DivFocus$NextFocusIds;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
