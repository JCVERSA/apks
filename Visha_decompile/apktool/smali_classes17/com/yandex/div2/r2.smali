.class public final Lcom/yandex/div2/r2;
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

    iput-object p1, p0, Lcom/yandex/div2/r2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPagerLayoutModeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/r2;->b(Lex7;Lcom/yandex/div2/DivPagerLayoutModeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPagerLayoutMode;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivPagerLayoutModeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPagerLayoutMode;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivPagerLayoutModeTemplate$d;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivPagerLayoutMode$d;

    iget-object p0, p0, Lcom/yandex/div2/r2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->m5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Len2;

    check-cast p2, Lcom/yandex/div2/DivPagerLayoutModeTemplate$d;

    invoke-virtual {p2}, Lcom/yandex/div2/DivPagerLayoutModeTemplate$d;->c()Lcom/yandex/div2/DivPageSizeTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Len2;->b(Lex7;Lcom/yandex/div2/DivPageSizeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPageSize;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivPagerLayoutMode$d;-><init>(Lcom/yandex/div2/DivPageSize;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivPagerLayoutModeTemplate$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivPagerLayoutMode$b;

    iget-object p0, p0, Lcom/yandex/div2/r2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->a5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltm2;

    check-cast p2, Lcom/yandex/div2/DivPagerLayoutModeTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivPagerLayoutModeTemplate$b;->c()Lcom/yandex/div2/DivNeighbourPageSizeTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Ltm2;->b(Lex7;Lcom/yandex/div2/DivNeighbourPageSizeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNeighbourPageSize;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivPagerLayoutMode$b;-><init>(Lcom/yandex/div2/DivNeighbourPageSize;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/div2/DivPagerLayoutModeTemplate$c;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/DivPagerLayoutMode$c;

    iget-object p0, p0, Lcom/yandex/div2/r2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->j5()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbn2;

    check-cast p2, Lcom/yandex/div2/DivPagerLayoutModeTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivPagerLayoutModeTemplate$c;->c()Lcom/yandex/div2/DivPageContentSizeTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lbn2;->b(Lex7;Lcom/yandex/div2/DivPageContentSizeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPageContentSize;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivPagerLayoutMode$c;-><init>(Lcom/yandex/div2/DivPageContentSize;)V

    :goto_0
    return-object v0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
