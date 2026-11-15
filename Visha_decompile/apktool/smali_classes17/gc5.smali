.class public final Lgc5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lgc5;

.field public static final b:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgc5;

    invoke-direct {v0}, Lgc5;-><init>()V

    sput-object v0, Lgc5;->a:Lgc5;

    new-instance v0, Lfc5;

    invoke-direct {v0}, Lfc5;-><init>()V

    sput-object v0, Lgc5;->b:Lpnb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lgc5;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final c(Lex7;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 10

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "keys"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    const-string v3, "key"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Lorg/json/JSONObject;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lgc5;->a:Lgc5;

    new-instance v6, Ljga;

    invoke-interface {p1}, Lex7;->getLogger()Llx7;

    move-result-object v3

    invoke-direct {v6, v3, v1}, Ljga;-><init>(Llx7;Ljava/lang/String;)V

    const/4 v8, 0x1

    move-object v5, p1

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Lgc5;->e(Lex7;Llx7;Lorg/json/JSONObject;ZLjava/util/List;)V

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/LinkedHashMap;)V
    .locals 9

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lgc5;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/LinkedHashMap;)V

    goto :goto_1

    :cond_5
    invoke-interface {p3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_7

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    :cond_7
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p5, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    check-cast p3, Ljava/lang/Iterable;

    invoke-static {p3}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lgc5;->i(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final e(Lex7;Llx7;Lorg/json/JSONObject;ZLjava/util/List;)V
    .locals 14

    move-object v0, p0

    move-object v6, p1

    move-object/from16 v7, p3

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, v7}, Lgc5;->g(Lex7;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v7}, Lgc5;->f(Lex7;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object/from16 v8, p5

    if-eqz v0, :cond_1

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    const-string v10, "keys"

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v11, "key"

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    invoke-static {v0, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lorg/json/JSONObject;

    sget-object v0, Lgc5;->a:Lgc5;

    const/4 v4, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lgc5;->e(Lex7;Llx7;Lorg/json/JSONObject;ZLjava/util/List;)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    invoke-static {v9, v10}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    invoke-static {v0, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v1

    check-cast v10, Lorg/json/JSONArray;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_2
    if-ge v13, v12, :cond_4

    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    sget-object v0, Lgc5;->a:Lgc5;

    const/4 v4, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lgc5;->e(Lex7;Llx7;Lorg/json/JSONObject;ZLjava/util/List;)V

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final f(Lex7;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string p0, "type"

    sget-object v0, Lgc5;->b:Lpnb;

    invoke-static {p1, p2, p0, v0}, Ltb5;->o(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lpnb;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final g(Lex7;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string p0, "type"

    sget-object v0, Lgc5;->b:Lpnb;

    invoke-static {p1, p2, p0, v0}, Ltb5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lpnb;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "read(context, json, \"type\", TYPE_VALIDATOR)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lex7;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lgc5;->c(Lex7;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lgc5;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/LinkedHashMap;)V

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method public final i(Ljava/util/List;Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge p0, v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/yandex/div/internal/parser/CyclicDependencyException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "output.toString()"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div/internal/parser/CyclicDependencyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
