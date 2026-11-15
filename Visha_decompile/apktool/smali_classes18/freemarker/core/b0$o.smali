.class public Lfreemarker/core/b0$o;
.super Ljl0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
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

    instance-of p0, p1, Ljava/lang/Short;

    if-eqz p0, :cond_0

    return-object p2

    :cond_0
    new-instance p0, Lfreemarker/template/SimpleNumber;

    new-instance p2, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-direct {p2, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-direct {p0, p2}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object p0
.end method
