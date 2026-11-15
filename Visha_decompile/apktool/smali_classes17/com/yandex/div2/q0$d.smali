.class public final Lcom/yandex/div2/q0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/q0;
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

    iput-object p1, p0, Lcom/yandex/div2/q0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCornersRadiusTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/q0$d;->b(Lex7;Lcom/yandex/div2/DivCornersRadiusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCornersRadius;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivCornersRadiusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCornersRadius;
    .locals 12

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivCornersRadius;

    iget-object v1, p2, Lcom/yandex/div2/DivCornersRadiusTemplate;->a:Ltp3;

    sget-object v9, Lacb;->b:Lzbb;

    sget-object v10, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/q0;->b:Lpnb;

    const-string v3, "bottom-left"

    move-object v0, p1

    move-object v2, p3

    move-object v4, v9

    move-object v5, v10

    invoke-static/range {v0 .. v6}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    iget-object v3, p2, Lcom/yandex/div2/DivCornersRadiusTemplate;->b:Ltp3;

    const-string v5, "bottom-right"

    sget-object v8, Lcom/yandex/div2/q0;->c:Lpnb;

    move-object v2, p1

    move-object v4, p3

    move-object v6, v9

    move-object v7, v10

    invoke-static/range {v2 .. v8}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    iget-object v3, p2, Lcom/yandex/div2/DivCornersRadiusTemplate;->c:Ltp3;

    const-string v5, "top-left"

    sget-object v8, Lcom/yandex/div2/q0;->d:Lpnb;

    invoke-static/range {v2 .. v8}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v11

    iget-object v3, p2, Lcom/yandex/div2/DivCornersRadiusTemplate;->d:Ltp3;

    const-string v5, "top-right"

    sget-object v8, Lcom/yandex/div2/q0;->e:Lpnb;

    invoke-static/range {v2 .. v8}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    invoke-direct {p0, v0, v1, v11, p1}, Lcom/yandex/div2/DivCornersRadius;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
