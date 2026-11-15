.class public final Lcom/yandex/div2/x$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/x;
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

    iput-object p1, p0, Lcom/yandex/div2/x$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/x$d;->b(Lex7;Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceSetTransition;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAppearanceSetTransition;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivAppearanceSetTransition;

    iget-object v2, p2, Lcom/yandex/div2/DivAppearanceSetTransitionTemplate;->a:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/x$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->y1()Lyi5;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/div2/x$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->w1()Lyi5;

    move-result-object v6

    sget-object v7, Lcom/yandex/div2/x;->b:Lhm5;

    const-string v4, "items"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lsa5;->l(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object p0

    const-string p1, "resolveList(context, tem\u2026yParser, ITEMS_VALIDATOR)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivAppearanceSetTransition;-><init>(Ljava/util/List;)V

    return-object v0
.end method
