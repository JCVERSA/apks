.class final Lorg/apache/commons/text/StrMatcher$TrimMatcher;
.super Lorg/apache/commons/text/StrMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrimMatcher"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/StrMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 0

    aget-char p0, p1, p2

    const/16 p1, 0x20

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
