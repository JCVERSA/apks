.class public final Lcom/yandex/div/core/view2/errors/ErrorModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxc3;

.field public final b:Lcom/yandex/div/core/view2/Div2View;

.field public final c:Z

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public g:Lqc2;

.field public final h:Ls74;

.field public i:Lmd3;


# direct methods
.method public constructor <init>(Lxc3;Lcom/yandex/div/core/view2/Div2View;Z)V
    .locals 8

    const-string v0, "errorCollectors"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div2View"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->a:Lxc3;

    iput-object p2, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->b:Lcom/yandex/div/core/view2/Div2View;

    iput-boolean p3, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->c:Z

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->d:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->e:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->f:Ljava/util/List;

    new-instance p1, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/errors/ErrorModel$updateOnErrors$1;-><init>(Lcom/yandex/div/core/view2/errors/ErrorModel;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->h:Ls74;

    new-instance p1, Lmd3;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lmd3;-><init>(ZIILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->i:Lmd3;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/errors/ErrorModel;Le74;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/errors/ErrorModel;->s(Lcom/yandex/div/core/view2/errors/ErrorModel;Le74;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/errors/ErrorModel;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/ErrorModel;->l(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/div/core/view2/errors/ErrorModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->e:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/view2/errors/ErrorModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->f:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/core/view2/errors/ErrorModel;)Lmd3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->i:Lmd3;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/errors/ErrorModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->c:Z

    return p0
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/errors/ErrorModel;Lmd3;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/ErrorModel;->t(Lmd3;)V

    return-void
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/errors/ErrorModel;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/ErrorModel;->v(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/yandex/div/core/view2/errors/ErrorModel;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/ErrorModel;->m(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final s(Lcom/yandex/div/core/view2/errors/ErrorModel;Le74;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->d:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final i(Lte0;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->g:Lqc2;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lqc2;->close()V

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->a:Lxc3;

    invoke-virtual {p1}, Lte0;->b()Lei2;

    move-result-object v1

    invoke-virtual {p1}, Lte0;->a()Lcom/yandex/div2/DivData;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->h:Ls74;

    invoke-virtual {p1, v0}, Lwc3;->h(Ls74;)Lqc2;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->g:Lqc2;

    return-void
.end method

.method public final j()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "templates"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div2/DivData;->s()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "card"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "variables"

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->k()Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final k()Lorg/json/JSONArray;
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object p0

    invoke-interface {p0}, Lcom/yandex/div/core/dagger/Div2Component;->y()Lcom/yandex/div/core/expression/variables/DivVariableController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/variables/DivVariableController;->d()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqnb;

    invoke-virtual {v1}, Lqnb;->q()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final l(Ljava/util/List;)Ljava/lang/String;
    .locals 9

    check-cast p1, Ljava/lang/Iterable;

    const/16 p0, 0x19

    invoke-static {p1, p0}, Li81;->U0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v6, Lcom/yandex/div/core/view2/errors/ErrorModel$errorsToDetails$errorsList$1;->INSTANCE:Lcom/yandex/div/core/view2/errors/ErrorModel$errorsToDetails$errorsList$1;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v1, "\n"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Last 25 errors:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m(Z)Ljava/lang/String;
    .locals 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "stacktrace"

    if-lez v1, :cond_3

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->e:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "message"

    invoke-static {v4}, Lnd3;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4}, Lue3;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    instance-of v6, v4, Lcom/yandex/div/json/ParsingException;

    if-eqz v6, :cond_1

    check-cast v4, Lcom/yandex/div/json/ParsingException;

    invoke-virtual {v4}, Lcom/yandex/div/json/ParsingException;->getReason()Lcom/yandex/div/json/ParsingExceptionReason;

    move-result-object v6

    const-string v7, "reason"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lcom/yandex/div/json/ParsingException;->getSource()Lbb5;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lbb5;->a()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    const-string v7, "json_source"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "json_summary"

    invoke-virtual {v4}, Lcom/yandex/div/json/ParsingException;->getJsonSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string v3, "errors"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->f:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "warning_message"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v4}, Lue3;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_4
    const-string v2, "warnings"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    if-eqz p1, :cond_6

    const-string p1, "card"

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->j()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "results.toString(/*indentSpaces*/ 4)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o()Ljava/util/Map;
    .locals 3

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/Div2View;->getRuntimeStore$div_release()Lcom/yandex/div/core/expression/local/RuntimeStore;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/a;->l()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/core/expression/local/RuntimeStore;->l()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/local/RuntimeStore;->g()Lvj3;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v2, ""

    invoke-virtual {p0}, Lvj3;->g()Lsnb;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvj3;

    invoke-virtual {v0}, Lvj3;->g()Lsnb;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final p()Le74;
    .locals 1

    new-instance v0, Lcom/yandex/div/core/view2/errors/ErrorModel$getErrorHandler$1;

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-direct {v0, p0}, Lcom/yandex/div/core/view2/errors/ErrorModel$getErrorHandler$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final q()V
    .locals 8

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->i:Lmd3;

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lmd3;->b(Lmd3;ZIILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lmd3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->t(Lmd3;)V

    return-void
.end method

.method public final r(Le74;)Lqc2;
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->i:Lmd3;

    invoke-interface {p1, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lzc3;

    invoke-direct {v0, p0, p1}, Lzc3;-><init>(Lcom/yandex/div/core/view2/errors/ErrorModel;Le74;)V

    return-object v0
.end method

.method public final t(Lmd3;)V
    .locals 1

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->i:Lmd3;

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->d:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le74;

    invoke-interface {v0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 8

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorModel;->i:Lmd3;

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lmd3;->b(Lmd3;ZIILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lmd3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->t(Lmd3;)V

    return-void
.end method

.method public final v(Ljava/util/List;)Ljava/lang/String;
    .locals 9

    check-cast p1, Ljava/lang/Iterable;

    const/16 p0, 0x19

    invoke-static {p1, p0}, Li81;->U0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    sget-object v6, Lcom/yandex/div/core/view2/errors/ErrorModel$warningsToDetails$warningsList$1;->INSTANCE:Lcom/yandex/div/core/view2/errors/ErrorModel$warningsToDetails$warningsList$1;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v1, "\n"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Last 25 warnings:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
