.class public Lcom/transsion/json/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:[Ljava/util/Iterator;

.field b:I


# direct methods
.method public varargs constructor <init>([Ljava/util/Set;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/transsion/json/e;->b:I

    .line 6
    .line 7
    array-length v1, p1

    .line 8
    new-array v1, v1, [Ljava/util/Iterator;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/transsion/json/e;->a:[Ljava/util/Iterator;

    .line 11
    .line 12
    :goto_0
    array-length v1, p1

    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsion/json/e;->a:[Ljava/util/Iterator;

    .line 16
    .line 17
    aget-object v2, p1, v0

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v1, v0

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/json/e;->a:[Ljava/util/Iterator;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/json/e;->b:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget v0, p0, Lcom/transsion/json/e;->b:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/transsion/json/e;->b:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/json/e;->a:[Ljava/util/Iterator;

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-ge v0, v3, :cond_1

    .line 24
    .line 25
    aget-object v0, v2, v0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/json/e;->a:[Ljava/util/Iterator;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/json/e;->b:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/json/e;->a:[Ljava/util/Iterator;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/json/e;->b:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
