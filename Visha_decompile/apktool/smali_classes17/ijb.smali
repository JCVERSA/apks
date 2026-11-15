.class public final Lijb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lijb;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lijb;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlVariable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/UrlVariable;

    invoke-virtual {p0, p1, p2}, Lijb;->e(Lex7;Lcom/yandex/div2/UrlVariable;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlVariable;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/UrlVariable;

    const-string v0, "name"

    invoke-static {p1, p2, v0}, Ltb5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "read(context, data, \"name\")"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const-string v1, "value"

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    invoke-static {p1, p2, v1, v2}, Ltb5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "read(context, data, \"value\", ANY_TO_URI)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/yandex/div2/UrlVariable;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/UrlVariable;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/UrlVariable;->a:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {p1, v0, v2, v1}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "type"

    const-string v2, "url"

    invoke-static {p1, v0, v1, v2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/yandex/div2/UrlVariable;->b:Landroid/net/Uri;

    sget-object v1, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    invoke-static {p1, v0, p0, p2, v1}, Ltb5;->w(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Le74;)V

    return-object v0
.end method
