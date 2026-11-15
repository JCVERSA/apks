.class public abstract Lqnb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqnb$a;,
        Lqnb$b;,
        Lqnb$c;,
        Lqnb$d;,
        Lqnb$e;,
        Lqnb$f;,
        Lqnb$g;,
        Lqnb$h;
    }
.end annotation


# instance fields
.field public final a:Lqd7;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lqd7;

    invoke-direct {v0}, Lqd7;-><init>()V

    iput-object v0, p0, Lqnb;->a:Lqd7;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le74;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lqnb;->a:Lqd7;

    invoke-virtual {p0, p1}, Lqd7;->j(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Lqnb$g;

    if-eqz v0, :cond_0

    check-cast p0, Lqnb$g;

    invoke-virtual {p0}, Lqnb$g;->s()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lqnb$f;

    if-eqz v0, :cond_1

    check-cast p0, Lqnb$f;

    invoke-virtual {p0}, Lqnb$f;->s()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lqnb$b;

    if-eqz v0, :cond_2

    check-cast p0, Lqnb$b;

    invoke-virtual {p0}, Lqnb$b;->s()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lqnb$e;

    if-eqz v0, :cond_3

    check-cast p0, Lqnb$e;

    invoke-virtual {p0}, Lqnb$e;->s()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lqnb$c;

    if-eqz v0, :cond_4

    check-cast p0, Lqnb$c;

    invoke-virtual {p0}, Lqnb$c;->s()I

    move-result p0

    invoke-static {p0}, Lk81;->c(I)Lk81;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lqnb$h;

    if-eqz v0, :cond_5

    check-cast p0, Lqnb$h;

    invoke-virtual {p0}, Lqnb$h;->s()Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lqnb$d;

    if-eqz v0, :cond_6

    check-cast p0, Lqnb$d;

    invoke-virtual {p0}, Lqnb$d;->s()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lqnb$a;

    if-eqz v0, :cond_7

    check-cast p0, Lqnb$a;

    invoke-virtual {p0}, Lqnb$a;->s()Lorg/json/JSONArray;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public d(Lqnb;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lxi;->c()V

    iget-object p0, p0, Lqnb;->a:Lqd7;

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

.method public final e(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lj1a;->h1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lqnb;->h(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lli1;->b(I)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Lcom/yandex/div/data/VariableMutationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to convert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to boolean"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final f(Ljava/lang/String;)I
    .locals 2

    sget-object p0, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lk81;->d(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Lcom/yandex/div/data/VariableMutationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong value format for color variable: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public final g(Ljava/lang/String;)D
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/data/VariableMutationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final h(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/data/VariableMutationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final i(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2

    :try_start_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/data/VariableMutationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final j(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/data/VariableMutationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final k(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/data/VariableMutationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public final l(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string p1, "{\n            Uri.parse(this)\n        }"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/yandex/div/data/VariableMutationException;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0, v0, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1
.end method

.method public m(Le74;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lqnb;->a:Lqd7;

    invoke-virtual {p0, p1}, Lqd7;->p(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lqnb$g;

    if-eqz v0, :cond_0

    check-cast p0, Lqnb$g;

    invoke-virtual {p0, p1}, Lqnb$g;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lqnb$f;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lqnb$f;

    invoke-virtual {p0, p1}, Lqnb;->k(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lqnb$f;->u(J)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lqnb$b;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lqnb$b;

    invoke-virtual {p0, p1}, Lqnb;->e(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lqnb$b;->u(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lqnb$e;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lqnb$e;

    invoke-virtual {p0, p1}, Lqnb;->g(Ljava/lang/String;)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lqnb$e;->u(D)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lqnb$c;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lqnb$c;

    invoke-virtual {p0, p1}, Lqnb;->f(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lqnb$c;->u(I)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lqnb$h;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lqnb$h;

    invoke-virtual {p0, p1}, Lqnb;->l(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lqnb$h;->u(Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lqnb$d;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lqnb$d;

    invoke-virtual {p0, p1}, Lqnb;->j(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lqnb$d;->u(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lqnb$a;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lqnb$a;

    invoke-virtual {p0, p1}, Lqnb;->i(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, p0}, Lqnb$a;->u(Lorg/json/JSONArray;)V

    :goto_0
    return-void

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public o(Lqnb;)V
    .locals 3

    const-string v0, "from"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lqnb$g;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lqnb$g;

    if-eqz v0, :cond_0

    check-cast p0, Lqnb$g;

    check-cast p1, Lqnb$g;

    invoke-virtual {p1}, Lqnb$g;->s()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqnb$g;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lqnb$f;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lqnb$f;

    if-eqz v0, :cond_1

    check-cast p0, Lqnb$f;

    check-cast p1, Lqnb$f;

    invoke-virtual {p1}, Lqnb$f;->s()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lqnb$f;->u(J)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lqnb$b;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lqnb$b;

    if-eqz v0, :cond_2

    check-cast p0, Lqnb$b;

    check-cast p1, Lqnb$b;

    invoke-virtual {p1}, Lqnb$b;->s()Z

    move-result p1

    invoke-virtual {p0, p1}, Lqnb$b;->u(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lqnb$e;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lqnb$e;

    if-eqz v0, :cond_3

    check-cast p0, Lqnb$e;

    check-cast p1, Lqnb$e;

    invoke-virtual {p1}, Lqnb$e;->s()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lqnb$e;->u(D)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lqnb$c;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lqnb$c;

    if-eqz v0, :cond_4

    check-cast p0, Lqnb$c;

    check-cast p1, Lqnb$c;

    invoke-virtual {p1}, Lqnb$c;->s()I

    move-result p1

    invoke-virtual {p0, p1}, Lqnb$c;->u(I)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lqnb$h;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lqnb$h;

    if-eqz v0, :cond_5

    check-cast p0, Lqnb$h;

    check-cast p1, Lqnb$h;

    invoke-virtual {p1}, Lqnb$h;->s()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqnb$h;->u(Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lqnb$d;

    if-eqz v0, :cond_6

    instance-of v0, p1, Lqnb$d;

    if-eqz v0, :cond_6

    check-cast p0, Lqnb$d;

    check-cast p1, Lqnb$d;

    invoke-virtual {p1}, Lqnb$d;->s()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqnb$d;->u(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lqnb$a;

    if-eqz v0, :cond_7

    instance-of v0, p1, Lqnb$a;

    if-eqz v0, :cond_7

    check-cast p0, Lqnb$a;

    check-cast p1, Lqnb$a;

    invoke-virtual {p1}, Lqnb$a;->s()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lqnb$a;->u(Lorg/json/JSONArray;)V

    :goto_0
    return-void

    :cond_7
    new-instance v0, Lcom/yandex/div/data/VariableMutationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting value to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " from "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not supported!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "newValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    instance-of v0, p0, Lqnb$g;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lqnb$g;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lqnb$g;->t(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lqnb$f;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lqnb$f;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lqnb$f;->u(J)V

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lqnb$b;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lqnb$b;

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lqnb$b;->u(Z)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lqnb$e;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lqnb$e;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lqnb$e;->u(D)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lqnb$c;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lqnb$c;

    move-object v1, p1

    check-cast v1, Lk81;

    invoke-virtual {v1}, Lk81;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lqnb$c;->u(I)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lqnb$h;

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lqnb$h;

    move-object v1, p1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lqnb$h;->u(Landroid/net/Uri;)V

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lqnb$d;

    if-eqz v0, :cond_6

    move-object v0, p0

    check-cast v0, Lqnb$d;

    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lqnb$d;->u(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lqnb$a;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Lqnb$a;

    move-object v1, p1

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lqnb$a;->u(Lorg/json/JSONArray;)V

    :goto_0
    return-void

    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/yandex/div/data/VariableMutationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set value with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/yandex/div/data/VariableMutationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public q()Lorg/json/JSONObject;
    .locals 4

    instance-of v0, p0, Lqnb$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/ArrayVariable;

    invoke-virtual {p0}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lqnb$a;

    invoke-virtual {p0}, Lqnb$a;->s()Lorg/json/JSONArray;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/ArrayVariable;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lqnb$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/BoolVariable;

    invoke-virtual {p0}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lqnb$b;

    invoke-virtual {p0}, Lqnb$b;->s()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/BoolVariable;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    instance-of v0, p0, Lqnb$c;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/yandex/div2/ColorVariable;

    invoke-virtual {p0}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lqnb$c;

    invoke-virtual {p0}, Lqnb$c;->s()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/ColorVariable;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lqnb$d;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/div2/DictVariable;

    invoke-virtual {p0}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lqnb$d;

    invoke-virtual {p0}, Lqnb$d;->s()Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/DictVariable;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lqnb$e;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/yandex/div2/NumberVariable;

    invoke-virtual {p0}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lqnb$e;

    invoke-virtual {p0}, Lqnb$e;->s()D

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/div2/NumberVariable;-><init>(Ljava/lang/String;D)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lqnb$f;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/yandex/div2/IntegerVariable;

    invoke-virtual {p0}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lqnb$f;

    invoke-virtual {p0}, Lqnb$f;->s()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/div2/IntegerVariable;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    instance-of v0, p0, Lqnb$g;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/yandex/div2/StrVariable;

    invoke-virtual {p0}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lqnb$g;

    invoke-virtual {p0}, Lqnb$g;->s()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/StrVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    instance-of v0, p0, Lqnb$h;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/yandex/div2/UrlVariable;

    invoke-virtual {p0}, Lqnb;->b()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Lqnb$h;

    invoke-virtual {p0}, Lqnb$h;->s()Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/UrlVariable;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    invoke-interface {v0}, Ld65;->s()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "serializable.writeToJSON()"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
