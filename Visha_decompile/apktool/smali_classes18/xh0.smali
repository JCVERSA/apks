.class public abstract Lxh0;
.super Lfreemarker/core/t0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t0;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 0

    invoke-virtual {p0, p1}, Lfreemarker/core/t0;->O(Lfreemarker/core/Environment;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    goto :goto_0

    :cond_0
    sget-object p0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    :goto_0
    return-object p0
.end method
