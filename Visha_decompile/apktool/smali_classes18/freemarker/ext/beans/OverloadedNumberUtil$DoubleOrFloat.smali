.class final Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleOrFloat"
.end annotation


# instance fields
.field private final n:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;->n:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;->n:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;->n:Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result p0

    return p0
.end method

.method public getSourceNumber()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$DoubleOrFloat;->n:Ljava/lang/Double;

    return-object p0
.end method
