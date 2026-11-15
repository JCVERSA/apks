.class abstract Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;
.super Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/OverloadedNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IntegerOrSmallerInteger"
.end annotation


# instance fields
.field private final n:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;-><init>()V

    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;->n:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getSourceNumber()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public intValue()I
    .locals 0

    iget-object p0, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerOrSmallerInteger;->n:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
