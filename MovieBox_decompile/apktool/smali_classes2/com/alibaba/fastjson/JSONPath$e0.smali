.class Lcom/alibaba/fastjson/JSONPath$e0;
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
    name = "e0"
.end annotation


# static fields
.field public static final a:Lcom/alibaba/fastjson/JSONPath$e0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$e0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$e0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/JSONPath$e0;->a:Lcom/alibaba/fastjson/JSONPath$e0;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$e0;->b(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p1, "null"

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    instance-of p1, p3, Ljava/util/Collection;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const-string p1, "array"

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_1
    instance-of p1, p3, Ljava/lang/Number;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    const-string p1, "number"

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_2
    instance-of p1, p3, Ljava/lang/Boolean;

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    const-string p1, "boolean"

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_3
    instance-of p1, p3, Ljava/lang/String;

    .line 28
    .line 29
    if-nez p1, :cond_5

    .line 30
    .line 31
    instance-of p1, p3, Ljava/util/UUID;

    .line 32
    .line 33
    if-nez p1, :cond_5

    .line 34
    .line 35
    instance-of p1, p3, Ljava/lang/Enum;

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    const-string p1, "object"

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_5
    :goto_0
    const-string p1, "string"

    .line 44
    .line 45
    return-object p1
.end method
