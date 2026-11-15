.class Lcom/alibaba/fastjson/JSONPath$f0;
.super Lcom/alibaba/fastjson/JSONPath$u;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f0"
.end annotation


# instance fields
.field private final f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$u;-><init>(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/alibaba/fastjson/JSONPath$f0;->g:Z

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$f0;->f:Ljava/lang/Object;

    .line 10
    .line 11
    iput-boolean p4, p0, Lcom/alibaba/fastjson/JSONPath$f0;->g:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p2, "value is null"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$u;->b(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$f0;->f:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$f0;->g:Z

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    :cond_0
    return p1
.end method
