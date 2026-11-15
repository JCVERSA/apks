.class public final Lcom/yandex/div2/q4$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/q4;
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

    iput-object p1, p0, Lcom/yandex/div2/q4$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextRangeBorderTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/q4$d;->b(Lex7;Lcom/yandex/div2/DivTextRangeBorderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeBorder;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTextRangeBorderTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeBorder;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivTextRangeBorder;

    iget-object v2, p2, Lcom/yandex/div2/DivTextRangeBorderTemplate;->a:Ltp3;

    sget-object v5, Lacb;->b:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v7, Lcom/yandex/div2/q4;->b:Lpnb;

    const-string v4, "corner_radius"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lsa5;->t(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    iget-object v3, p2, Lcom/yandex/div2/DivTextRangeBorderTemplate;->b:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/q4$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->y7()Lyi5;

    move-result-object v6

    iget-object p0, p0, Lcom/yandex/div2/q4$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w7()Lyi5;

    move-result-object v7

    const-string v5, "stroke"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivStroke;

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/DivTextRangeBorder;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivStroke;)V

    return-object v0
.end method
