.class Lcom/alibaba/fastjson/JSONPath$c0;
.super Lcom/alibaba/fastjson/JSONPath$u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c0"
.end annotation


# instance fields
.field private final f:[Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$u;-><init>(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$c0;->f:[Ljava/lang/String;

    .line 5
    .line 6
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$c0;->g:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$u;->b(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$c0;->f:[Ljava/lang/String;

    .line 6
    .line 7
    array-length p3, p2

    .line 8
    const/4 p4, 0x0

    .line 9
    :goto_0
    if-ge p4, p3, :cond_2

    .line 10
    .line 11
    aget-object v0, p2, p4

    .line 12
    .line 13
    if-ne v0, p1, :cond_0

    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$c0;->g:Z

    .line 16
    .line 17
    xor-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    return p1

    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$c0;->g:Z

    .line 29
    .line 30
    xor-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    return p1

    .line 33
    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$c0;->g:Z

    .line 37
    .line 38
    return p1
.end method
