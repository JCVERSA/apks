.class public final Lcom/squareup/moshi/LinkedHashTreeMap$d;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lcom/squareup/moshi/LinkedHashTreeMap;


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/LinkedHashTreeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$d;->b:Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$d;->b:Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-virtual {p0}, Lcom/squareup/moshi/LinkedHashTreeMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$d;->b:Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/LinkedHashTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap$d$a;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/LinkedHashTreeMap$d$a;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap$d;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$d;->b:Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/squareup/moshi/LinkedHashTreeMap$f;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$d;->b:Lcom/squareup/moshi/LinkedHashTreeMap;

    iget p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->size:I

    return p0
.end method
