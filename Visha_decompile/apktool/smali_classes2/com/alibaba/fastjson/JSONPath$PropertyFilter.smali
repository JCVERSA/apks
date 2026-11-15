.class abstract Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyFilter"
.end annotation


# static fields
.field static TYPE:J


# instance fields
.field protected final function:Z

.field protected functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

.field protected final propertyName:Ljava/lang/String;

.field protected final propertyNameHash:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->TYPE:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyName:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyNameHash:J

    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->function:Z

    if-eqz p2, :cond_2

    sget-wide v2, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->TYPE:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    sget-object p1, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

    goto :goto_0

    :cond_0
    const-wide v2, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    sget-object p1, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unsupported funciton : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyName:Ljava/lang/String;

    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyNameHash:J

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
