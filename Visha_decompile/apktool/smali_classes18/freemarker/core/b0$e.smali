.class public Lfreemarker/core/b0$e;
.super Ljl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljl0;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Ljava/lang/Number;Lzfa;)Lzfa;
    .locals 0

    instance-of p0, p1, Ljava/lang/Double;

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    new-instance p0, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lfreemarker/template/SimpleNumber;-><init>(D)V

    return-object p0
.end method
