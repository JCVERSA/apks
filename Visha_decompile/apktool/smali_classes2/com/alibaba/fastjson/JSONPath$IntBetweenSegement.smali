.class Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntBetweenSegement"
.end annotation


# instance fields
.field private final endValue:J

.field private final not:Z

.field private final startValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZJJZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    iput-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    iput-wide p5, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    iput-boolean p7, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    cmp-long p3, p1, p3

    if-ltz p3, :cond_1

    iget-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1

    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    iget-boolean p0, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    return p0
.end method
