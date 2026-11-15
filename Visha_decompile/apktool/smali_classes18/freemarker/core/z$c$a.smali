.class public Lfreemarker/core/z$c$a;
.super Lfreemarker/core/z$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/z$a;-><init>()V

    return-void
.end method


# virtual methods
.method public h0(Lfreemarker/core/Environment;Lzfa;)Lzfa;
    .locals 0

    check-cast p2, Lhga;

    iget-object p0, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-static {p2, p0}, Lfreemarker/core/q0;->g(Lhga;Lfreemarker/core/t0;)Ljava/lang/Number;

    move-result-object p0

    instance-of p2, p0, Ljava/lang/Integer;

    if-nez p2, :cond_1

    instance-of p2, p0, Ljava/lang/Long;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->u0()Ljava/text/NumberFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_1
    :goto_0
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
