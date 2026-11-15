.class public Lfreemarker/core/p;
.super Lfreemarker/core/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/l;-><init>()V

    return-void
.end method


# virtual methods
.method public i0(Lfreemarker/core/z0$a;Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    new-instance p0, Lfreemarker/template/SimpleNumber;

    invoke-virtual {p1}, Lfreemarker/core/z0$a;->f()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    return-object p0
.end method
