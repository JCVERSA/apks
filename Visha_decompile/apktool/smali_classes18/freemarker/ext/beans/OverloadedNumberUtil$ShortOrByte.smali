.class Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortOrByte"
.end annotation


# instance fields
.field private final n:Ljava/lang/Short;

.field private final w:B


# direct methods
.method public constructor <init>(Ljava/lang/Short;B)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->n:Ljava/lang/Short;

    iput-byte p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->w:B

    return-void
.end method


# virtual methods
.method public byteValue()B
    .locals 0

    iget-byte p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->w:B

    return p0
.end method

.method public getSourceNumber()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->n:Ljava/lang/Short;

    return-object p0
.end method

.method public shortValue()S
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$ShortOrByte;->n:Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method
