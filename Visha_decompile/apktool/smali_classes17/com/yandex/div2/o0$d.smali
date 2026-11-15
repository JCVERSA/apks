.class public final Lcom/yandex/div2/o0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/o0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate$PrototypeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/o0$d;->b(Lex7;Lcom/yandex/div2/DivCollectionItemBuilderTemplate$PrototypeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCollectionItemBuilder$Prototype;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivCollectionItemBuilderTemplate$PrototypeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCollectionItemBuilder$Prototype;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivCollectionItemBuilder$Prototype;

    iget-object v2, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate$PrototypeTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/o0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L4()Lyi5;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/div2/o0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J4()Lyi5;

    move-result-object v6

    const-string v4, "div"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "resolve(context, templat\u2026nent.divJsonEntityParser)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div2/Div;

    iget-object v1, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate$PrototypeTemplate;->b:Ltp3;

    const-string v2, "id"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {p1, v1, p3, v2, v3}, Lsa5;->r(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    iget-object v3, p2, Lcom/yandex/div2/DivCollectionItemBuilderTemplate$PrototypeTemplate;->c:Ltp3;

    sget-object v6, Lacb;->a:Lzbb;

    sget-object v7, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object p2, Lcom/yandex/div2/o0;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "selector"

    move-object v2, p1

    move-object v4, p3

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-direct {v0, p0, v1, p2}, Lcom/yandex/div2/DivCollectionItemBuilder$Prototype;-><init>(Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
