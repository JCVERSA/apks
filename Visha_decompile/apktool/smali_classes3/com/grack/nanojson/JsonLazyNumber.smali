.class Lcom/grack/nanojson/JsonLazyNumber;
.super Ljava/lang/Number;
.source "SourceFile"


# instance fields
.field private isDouble:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-object p1, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/grack/nanojson/JsonLazyNumber;->isDouble:Z

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    iget-object p0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 0

    iget-object p0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public intValue()I
    .locals 2

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->isDouble:Z

    iget-object p0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public longValue()J
    .locals 2

    iget-boolean v0, p0, Lcom/grack/nanojson/JsonLazyNumber;->isDouble:Z

    iget-object p0, p0, Lcom/grack/nanojson/JsonLazyNumber;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
