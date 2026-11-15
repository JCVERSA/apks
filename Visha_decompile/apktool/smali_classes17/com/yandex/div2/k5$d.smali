.class public final Lcom/yandex/div2/k5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/k5;
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

    iput-object p1, p0, Lcom/yandex/div2/k5$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivVideoSourceTemplate$ResolutionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/k5$d;->b(Lex7;Lcom/yandex/div2/DivVideoSourceTemplate$ResolutionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVideoSource$Resolution;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivVideoSourceTemplate$ResolutionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVideoSource$Resolution;
    .locals 9

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivVideoSource$Resolution;

    iget-object v1, p2, Lcom/yandex/div2/DivVideoSourceTemplate$ResolutionTemplate;->a:Ltp3;

    sget-object v7, Lacb;->b:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/k5;->b:Lpnb;

    const-string v3, "height"

    move-object v0, p1

    move-object v2, p3

    move-object v4, v7

    move-object v5, v8

    invoke-static/range {v0 .. v6}, Lsa5;->i(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v1, "resolveExpression(contex\u2026TO_INT, HEIGHT_VALIDATOR)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p2, Lcom/yandex/div2/DivVideoSourceTemplate$ResolutionTemplate;->b:Ltp3;

    const-string v5, "width"

    sget-object p2, Lcom/yandex/div2/k5;->c:Lpnb;

    move-object v2, p1

    move-object v4, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, p2

    invoke-static/range {v2 .. v8}, Lsa5;->i(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "resolveExpression(contex\u2026_TO_INT, WIDTH_VALIDATOR)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/yandex/div2/DivVideoSource$Resolution;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
