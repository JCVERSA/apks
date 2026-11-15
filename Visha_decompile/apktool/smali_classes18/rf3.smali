.class public Lrf3;
.super Lpf3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpf3;-><init>(Lof3;)V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    invoke-virtual {p0, p1}, Lpf3;->h0(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    goto :goto_0

    :cond_0
    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    :goto_0
    return-object p0
.end method

.method public O(Lfreemarker/core/Environment;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lrf3;->F(Lfreemarker/core/Environment;)Lzfa;

    move-result-object p0

    sget-object p1, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
