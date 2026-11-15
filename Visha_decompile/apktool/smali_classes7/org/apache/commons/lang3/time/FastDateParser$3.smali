.class final Lorg/apache/commons/lang3/time/FastDateParser$3;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method public modify(Lorg/apache/commons/lang3/time/FastDateParser;I)I
    .locals 0

    const/4 p0, 0x7

    const/4 p1, 0x1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, p2

    :goto_0
    return p1
.end method
