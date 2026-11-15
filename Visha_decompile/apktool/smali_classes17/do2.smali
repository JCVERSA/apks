.class public final Ldo2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lcom/yandex/div/json/expressions/Expression;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivPatch;)V
    .locals 3

    const-string v0, "divPatch"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lw71;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ldo2;->a:Ljava/util/Map;

    iget-object v0, p1, Lcom/yandex/div2/DivPatch;->b:Lcom/yandex/div/json/expressions/Expression;

    iput-object v0, p0, Ldo2;->b:Lcom/yandex/div/json/expressions/Expression;

    iget-object p1, p1, Lcom/yandex/div2/DivPatch;->a:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivPatch$Change;

    iget-object v1, p0, Ldo2;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/yandex/div2/DivPatch$Change;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/yandex/div2/DivPatch$Change;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/div/json/expressions/Expression;
    .locals 0

    iget-object p0, p0, Ldo2;->b:Lcom/yandex/div/json/expressions/Expression;

    return-object p0
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Ldo2;->a:Ljava/util/Map;

    return-object p0
.end method
