.class public final Lcom/yandex/div2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/a$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/a$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/a$b;->e(Lex7;Lcom/yandex/div2/DivAbsoluteEdgeInsets;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAbsoluteEdgeInsets;
    .locals 13

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    sget-object v7, Lacb;->b:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v5, Lcom/yandex/div2/a;->f:Lpnb;

    sget-object v9, Lcom/yandex/div2/a;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "bottom"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v7

    move-object v4, v8

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v0

    :goto_0
    sget-object v5, Lcom/yandex/div2/a;->g:Lpnb;

    sget-object v10, Lcom/yandex/div2/a;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "left"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v7

    move-object v4, v8

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v0

    :goto_1
    sget-object v5, Lcom/yandex/div2/a;->h:Lpnb;

    sget-object v11, Lcom/yandex/div2/a;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "right"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v7

    move-object v4, v8

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v11, v0

    :goto_2
    sget-object v5, Lcom/yandex/div2/a;->i:Lpnb;

    sget-object v12, Lcom/yandex/div2/a;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "top"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v7

    move-object v4, v8

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v12, p1

    :goto_3
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/yandex/div2/DivAbsoluteEdgeInsets;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivAbsoluteEdgeInsets;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v1, "bottom"

    invoke-static {p1, p0, v1, v0}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "left"

    iget-object v1, p2, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "right"

    iget-object v1, p2, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "top"

    iget-object p2, p2, Lcom/yandex/div2/DivAbsoluteEdgeInsets;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, p0, v0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
