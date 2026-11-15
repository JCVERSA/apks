.class public abstract Lfreemarker/core/o;
.super Lfreemarker/core/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final i0(Lfreemarker/core/z0$a;Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/o;->j0(Lfreemarker/core/z0$a;Lfreemarker/core/Environment;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_0

    :cond_0
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_0
    return-object p0
.end method

.method public abstract j0(Lfreemarker/core/z0$a;Lfreemarker/core/Environment;)Z
.end method
