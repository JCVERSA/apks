.class Lcom/alibaba/fastjson/JSONPath$TypeSegment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeSegment"
.end annotation


# static fields
.field public static final instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONPath$TypeSegment;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p3, :cond_0

    .line 2
    const-string p0, "null"

    return-object p0

    .line 3
    :cond_0
    instance-of p0, p3, Ljava/util/Collection;

    if-eqz p0, :cond_1

    .line 4
    const-string p0, "array"

    return-object p0

    .line 5
    :cond_1
    instance-of p0, p3, Ljava/lang/Number;

    if-eqz p0, :cond_2

    .line 6
    const-string p0, "number"

    return-object p0

    .line 7
    :cond_2
    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_3

    .line 8
    const-string p0, "boolean"

    return-object p0

    .line 9
    :cond_3
    instance-of p0, p3, Ljava/lang/String;

    if-nez p0, :cond_5

    instance-of p0, p3, Ljava/util/UUID;

    if-nez p0, :cond_5

    instance-of p0, p3, Ljava/lang/Enum;

    if-eqz p0, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    const-string p0, "object"

    return-object p0

    .line 11
    :cond_5
    :goto_0
    const-string/jumbo p0, "string"

    return-object p0
.end method

.method public extract(Lcom/alibaba/fastjson/JSONPath;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Lcom/alibaba/fastjson/JSONPath$Context;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
