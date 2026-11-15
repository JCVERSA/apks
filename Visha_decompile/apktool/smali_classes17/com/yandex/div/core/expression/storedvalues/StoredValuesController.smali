.class public Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/expression/storedvalues/StoredValuesController$a;
    }
.end annotation


# instance fields
.field public final a:Lyi5;


# direct methods
.method public constructor <init>(Lxi5;)V
    .locals 1

    const-string v0, "divStorageComponentLazy"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController$rawJsonRepository$2;

    invoke-direct {v0, p1}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController$rawJsonRepository$2;-><init>(Lxi5;)V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->a:Lyi5;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lcom/yandex/div/storage/c;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->a:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/storage/c;

    return-object p0
.end method

.method public c(Ljava/lang/String;Lwc3;)Lcom/yandex/div/data/StoredValue;
    .locals 7

    const-string v0, "name"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stored_value_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->b()Lcom/yandex/div/storage/c;

    move-result-object v1

    invoke-static {v0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/yandex/div/storage/c;->b(Ljava/util/List;)Lcom/yandex/div/storage/e;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/yandex/div/storage/e;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->e(Lwc3;Ljava/util/List;)V

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/div/storage/e;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzn8;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lzn8;->getData()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "expiration_time"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->a()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-ltz v3, :cond_2

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->b()Lcom/yandex/div/storage/c;

    move-result-object p0

    new-instance p1, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController$getStoredValue$1;

    invoke-direct {p1, v0}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController$getStoredValue$1;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/yandex/div/storage/c;->a(Le74;)Lao8;

    return-object v2

    :cond_2
    :try_start_0
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/yandex/div/data/StoredValue$Type;->Converter:Lcom/yandex/div/data/StoredValue$Type$a;

    const-string v4, "typeStrValue"

    invoke-static {v0, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/yandex/div/data/StoredValue$Type$a;->a(Ljava/lang/String;)Lcom/yandex/div/data/StoredValue$Type;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p2, p1, v0}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->f(Lwc3;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, v3, p1}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->i(Lorg/json/JSONObject;Lcom/yandex/div/data/StoredValue$Type;Ljava/lang/String;)Lcom/yandex/div/data/StoredValue;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->d(Lwc3;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-object v2
.end method

.method public final d(Lwc3;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance p0, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stored value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' declaration failed: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lwc3;->e(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final e(Lwc3;Ljava/util/List;)V
    .locals 0

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div/storage/RawJsonRepositoryException;

    invoke-virtual {p1, p2}, Lwc3;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Lwc3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance p0, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stored value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' declaration failed because of unknown type \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0, p3}, Lcom/yandex/div/core/expression/storedvalues/StoredValueDeclarationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lwc3;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public g(Lcom/yandex/div/data/StoredValue;JLwc3;)Z
    .locals 4

    const-string v0, "storedValue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div/storage/c$a;

    sget-object v1, Lzn8;->V4:Lzn8$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stored_value_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yandex/div/data/StoredValue;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->h(Lcom/yandex/div/data/StoredValue;J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lzn8$a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lzn8;

    move-result-object p1

    invoke-static {p1}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-direct {v0, p1, p2, p3, p2}, Lcom/yandex/div/storage/c$a;-><init>(Ljava/util/List;Lcom/yandex/div/storage/DivDataRepository$ActionOnError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->b()Lcom/yandex/div/storage/c;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/yandex/div/storage/c;->c(Lcom/yandex/div/storage/c$a;)Lcom/yandex/div/storage/e;

    move-result-object p1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/storage/e;->e()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->e(Lwc3;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/storage/e;->e()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final h(Lcom/yandex/div/data/StoredValue;J)Lorg/json/JSONObject;
    .locals 6

    instance-of v0, p1, Lcom/yandex/div/data/StoredValue$g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/yandex/div/data/StoredValue$f;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/yandex/div/data/StoredValue$b;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    instance-of v0, p1, Lcom/yandex/div/data/StoredValue$a;

    :goto_2
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    instance-of v0, p1, Lcom/yandex/div/data/StoredValue$d;

    :goto_3
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    instance-of v0, p1, Lcom/yandex/div/data/StoredValue$e;

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/yandex/div/data/StoredValue;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_6

    :cond_5
    instance-of v0, p1, Lcom/yandex/div/data/StoredValue$h;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    instance-of v1, p1, Lcom/yandex/div/data/StoredValue$c;

    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/yandex/div/data/StoredValue;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController;->a()J

    move-result-wide v2

    const/16 p0, 0x3e8

    int-to-long v4, p0

    mul-long/2addr p2, v4

    add-long/2addr v2, p2

    const-string p0, "expiration_time"

    invoke-virtual {v1, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object p0, Lcom/yandex/div/data/StoredValue$Type;->Converter:Lcom/yandex/div/data/StoredValue$Type$a;

    invoke-virtual {p1}, Lcom/yandex/div/data/StoredValue;->b()Lcom/yandex/div/data/StoredValue$Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/div/data/StoredValue$Type$a;->b(Lcom/yandex/div/data/StoredValue$Type;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "value"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final i(Lorg/json/JSONObject;Lcom/yandex/div/data/StoredValue$Type;Ljava/lang/String;)Lcom/yandex/div/data/StoredValue;
    .locals 3

    sget-object p0, Lcom/yandex/div/core/expression/storedvalues/StoredValuesController$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x0

    const-string v0, "getString(KEY_VALUE)"

    const-string v1, "value"

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/yandex/div/data/StoredValue$d;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "getJSONObject(KEY_VALUE)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/yandex/div/data/StoredValue$d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/yandex/div/data/StoredValue$a;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "getJSONArray(KEY_VALUE)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/yandex/div/data/StoredValue$a;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/yandex/div/data/StoredValue$h;

    sget-object v2, Lvib;->b:Lvib$a;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lvib$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1, p2}, Lcom/yandex/div/data/StoredValue$h;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/yandex/div/data/StoredValue$c;

    sget-object v2, Lk81;->b:Lk81$a;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lk81$a;->b(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p3, p1, p2}, Lcom/yandex/div/data/StoredValue$c;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/yandex/div/data/StoredValue$e;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-direct {p0, p3, p1, p2}, Lcom/yandex/div/data/StoredValue$e;-><init>(Ljava/lang/String;D)V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lcom/yandex/div/data/StoredValue$b;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p3, p1}, Lcom/yandex/div/data/StoredValue$b;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_6
    new-instance p0, Lcom/yandex/div/data/StoredValue$f;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {p0, p3, p1, p2}, Lcom/yandex/div/data/StoredValue$f;-><init>(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_7
    new-instance p0, Lcom/yandex/div/data/StoredValue$g;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Lcom/yandex/div/data/StoredValue$g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
