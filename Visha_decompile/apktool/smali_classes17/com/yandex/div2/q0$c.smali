.class public final Lcom/yandex/div2/q0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/q0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCornersRadiusTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/q0$c;->e(Lex7;Lcom/yandex/div2/DivCornersRadiusTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivCornersRadiusTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/q0$c;->d(Lex7;Lcom/yandex/div2/DivCornersRadiusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCornersRadiusTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivCornersRadiusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivCornersRadiusTemplate;
    .locals 17

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    move-object/from16 v10, p3

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v11

    new-instance v12, Lcom/yandex/div2/DivCornersRadiusTemplate;

    sget-object v13, Lacb;->b:Lzbb;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/yandex/div2/DivCornersRadiusTemplate;->a:Ltp3;

    move-object v7, v2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    sget-object v15, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v9, Lcom/yandex/div2/q0;->b:Lpnb;

    const-string v4, "bottom-left"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026T, BOTTOM_LEFT_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/yandex/div2/DivCornersRadiusTemplate;->b:Ltp3;

    move-object v7, v2

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    sget-object v16, Lcom/yandex/div2/q0;->c:Lpnb;

    const-string v4, "bottom-right"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    move-object v14, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026, BOTTOM_RIGHT_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/yandex/div2/DivCornersRadiusTemplate;->c:Ltp3;

    move-object v7, v2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    sget-object v16, Lcom/yandex/div2/q0;->d:Lpnb;

    const-string v4, "top-left"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    move-object v10, v9

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v9

    const-string v2, "readOptionalFieldWithExp\u2026_INT, TOP_LEFT_VALIDATOR)"

    invoke-static {v9, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/yandex/div2/DivCornersRadiusTemplate;->d:Ltp3;

    move-object v7, v0

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    sget-object v0, Lcom/yandex/div2/q0;->e:Lpnb;

    const-string v4, "top-right"

    move-object v2, v11

    move-object/from16 v3, p3

    move-object v5, v13

    move v6, v1

    move-object v8, v15

    move-object v1, v9

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lra5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;Lpnb;)Ltp3;

    move-result-object v0

    const-string v2, "readOptionalFieldWithExp\u2026INT, TOP_RIGHT_VALIDATOR)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v14, v10, v1, v0}, Lcom/yandex/div2/DivCornersRadiusTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivCornersRadiusTemplate;)Lorg/json/JSONObject;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivCornersRadiusTemplate;->a:Ltp3;

    const-string v1, "bottom-left"

    invoke-static {p1, p0, v1, v0}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "bottom-right"

    iget-object v1, p2, Lcom/yandex/div2/DivCornersRadiusTemplate;->b:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "top-left"

    iget-object v1, p2, Lcom/yandex/div2/DivCornersRadiusTemplate;->c:Ltp3;

    invoke-static {p1, p0, v0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v0, "top-right"

    iget-object p2, p2, Lcom/yandex/div2/DivCornersRadiusTemplate;->d:Ltp3;

    invoke-static {p1, p0, v0, p2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    return-object p0
.end method
