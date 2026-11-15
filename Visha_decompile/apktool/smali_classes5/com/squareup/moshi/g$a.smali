.class public final Lcom/squareup/moshi/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lcom/squareup/moshi/JsonReader$Token;

.field public final c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/squareup/moshi/JsonReader$Token;[Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/moshi/g$a;->b:Lcom/squareup/moshi/JsonReader$Token;

    iput-object p2, p0, Lcom/squareup/moshi/g$a;->c:[Ljava/lang/Object;

    iput p3, p0, Lcom/squareup/moshi/g$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/moshi/g$a;
    .locals 3

    new-instance v0, Lcom/squareup/moshi/g$a;

    iget-object v1, p0, Lcom/squareup/moshi/g$a;->b:Lcom/squareup/moshi/JsonReader$Token;

    iget-object v2, p0, Lcom/squareup/moshi/g$a;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/squareup/moshi/g$a;->d:I

    invoke-direct {v0, v1, v2, p0}, Lcom/squareup/moshi/g$a;-><init>(Lcom/squareup/moshi/JsonReader$Token;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/squareup/moshi/g$a;->a()Lcom/squareup/moshi/g$a;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/squareup/moshi/g$a;->d:I

    iget-object p0, p0, Lcom/squareup/moshi/g$a;->c:[Ljava/lang/Object;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/squareup/moshi/g$a;->c:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/moshi/g$a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/moshi/g$a;->d:I

    aget-object p0, v0, v1

    return-object p0
.end method

.method public remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
