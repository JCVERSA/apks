.class public final Lcom/squareup/moshi/l$m;
.super Lcom/squareup/moshi/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# instance fields
.field public final a:Lcom/squareup/moshi/j;

.field public final b:Lcom/squareup/moshi/e;

.field public final c:Lcom/squareup/moshi/e;

.field public final d:Lcom/squareup/moshi/e;

.field public final e:Lcom/squareup/moshi/e;

.field public final f:Lcom/squareup/moshi/e;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/j;)V
    .locals 1

    invoke-direct {p0}, Lcom/squareup/moshi/e;-><init>()V

    iput-object p1, p0, Lcom/squareup/moshi/l$m;->a:Lcom/squareup/moshi/j;

    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/j;->c(Ljava/lang/Class;)Lcom/squareup/moshi/e;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/l$m;->b:Lcom/squareup/moshi/e;

    const-class v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/j;->c(Ljava/lang/Class;)Lcom/squareup/moshi/e;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/l$m;->c:Lcom/squareup/moshi/e;

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/j;->c(Ljava/lang/Class;)Lcom/squareup/moshi/e;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/l$m;->d:Lcom/squareup/moshi/e;

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/j;->c(Ljava/lang/Class;)Lcom/squareup/moshi/e;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/l$m;->e:Lcom/squareup/moshi/e;

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/squareup/moshi/j;->c(Ljava/lang/Class;)Lcom/squareup/moshi/e;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/moshi/l$m;->f:Lcom/squareup/moshi/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    const-class p0, Ljava/util/Map;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-class p0, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method public fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/squareup/moshi/l$b;->a:[I

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->K()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected a value but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->K()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonReader;->H()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/squareup/moshi/l$m;->f:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/squareup/moshi/l$m;->e:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/squareup/moshi/l$m;->d:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/squareup/moshi/l$m;->c:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/squareup/moshi/l$m;->b:Lcom/squareup/moshi/e;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/e;->fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toJson(Lrc5;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lrc5;->d()Lrc5;

    invoke-virtual {p1}, Lrc5;->h()Lrc5;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/squareup/moshi/l$m;->a:Lcom/squareup/moshi/j;

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/l$m;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Lwkb;->a:Ljava/util/Set;

    invoke-virtual {v1, p0, v0}, Lcom/squareup/moshi/j;->e(Ljava/lang/reflect/Type;Ljava/util/Set;)Lcom/squareup/moshi/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/e;->toJson(Lrc5;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "JsonAdapter(Object)"

    return-object p0
.end method
