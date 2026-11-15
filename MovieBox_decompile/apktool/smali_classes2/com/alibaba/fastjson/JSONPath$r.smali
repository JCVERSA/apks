.class Lcom/alibaba/fastjson/JSONPath$r;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "r"
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[J


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$r;->a:[Ljava/lang/String;

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    new-array v0, v0, [J

    .line 8
    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/JSONPath$r;->b:[J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$r;->b:[J

    .line 13
    .line 14
    array-length v2, v1

    .line 15
    if-ge v0, v2, :cond_0

    .line 16
    .line 17
    aget-object v2, p1, v0

    .line 18
    .line 19
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->J(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    aput-wide v2, v1, v0

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
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$r;->a:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$r;->a:[Ljava/lang/String;

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    aget-object v1, v1, v0

    .line 16
    .line 17
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$r;->b:[J

    .line 18
    .line 19
    aget-wide v3, v2, v0

    .line 20
    .line 21
    invoke-virtual {p1, p3, v1, v3, v4}, Lcom/alibaba/fastjson/JSONPath;->j(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object p2
.end method
