.class public Lcom/squareup/moshi/d$b;
.super Lcom/squareup/moshi/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/d;->b(Ljava/lang/reflect/Type;Lcom/squareup/moshi/j;)Lcom/squareup/moshi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/moshi/d;-><init>(Lcom/squareup/moshi/e;Lcom/squareup/moshi/d$a;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Collection;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic fromJson(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/squareup/moshi/d;->a(Lcom/squareup/moshi/JsonReader;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toJson(Lrc5;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-super {p0, p1, p2}, Lcom/squareup/moshi/d;->e(Lrc5;Ljava/util/Collection;)V

    return-void
.end method
