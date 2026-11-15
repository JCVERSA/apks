.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FloatOrWholeNumber"
.end annotation


# instance fields
.field private final n:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;->n:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public floatValue()F
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;->n:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getSourceNumber()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$FloatOrWholeNumber;->n:Ljava/lang/Float;

    return-object p0
.end method
