.class public Lcom/alibaba/fastjson/util/g;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/g$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/alibaba/fastjson/util/g$a;

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x2000

    .line 1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, -0x1

    .line 3
    iput v0, p0, Lcom/alibaba/fastjson/util/g;->b:I

    .line 4
    new-array p1, p1, [Lcom/alibaba/fastjson/util/g$a;

    iput-object p1, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_3

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    move-object v2, v1

    .line 13
    :goto_1
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget-object v3, v1, Lcom/alibaba/fastjson/util/g$a;->b:Ljava/lang/Object;

    .line 16
    .line 17
    instance-of v4, v3, Ljava/lang/Class;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    check-cast v3, Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    return-object v3

    .line 34
    :cond_1
    iget-object v2, v2, Lcom/alibaba/fastjson/util/g$a;->d:Lcom/alibaba/fastjson/util/g$a;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/alibaba/fastjson/util/g;->b:I

    .line 6
    .line 7
    and-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    .line 9
    .line 10
    aget-object v0, v1, v0

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lcom/alibaba/fastjson/util/g$a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    iget-object p1, v0, Lcom/alibaba/fastjson/util/g$a;->c:Ljava/lang/Object;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    iget-object v0, v0, Lcom/alibaba/fastjson/util/g$a;->d:Lcom/alibaba/fastjson/util/g$a;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/alibaba/fastjson/util/g;->b:I

    .line 6
    .line 7
    and-int/2addr v1, v0

    .line 8
    iget-object v2, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    :goto_0
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v3, v2, Lcom/alibaba/fastjson/util/g$a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    if-ne p1, v3, :cond_0

    .line 17
    .line 18
    iput-object p2, v2, Lcom/alibaba/fastjson/util/g$a;->c:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    :cond_0
    iget-object v2, v2, Lcom/alibaba/fastjson/util/g$a;->d:Lcom/alibaba/fastjson/util/g$a;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/util/g$a;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    .line 28
    .line 29
    aget-object v3, v3, v1

    .line 30
    .line 31
    invoke-direct {v2, p1, p2, v0, v3}, Lcom/alibaba/fastjson/util/g$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/alibaba/fastjson/util/g$a;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/alibaba/fastjson/util/g;->a:[Lcom/alibaba/fastjson/util/g$a;

    .line 35
    .line 36
    aput-object v2, p1, v1

    .line 37
    .line 38
    const/4 p1, 0x0

    .line 39
    return p1
.end method
