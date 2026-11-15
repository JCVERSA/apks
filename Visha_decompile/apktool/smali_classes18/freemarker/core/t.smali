.class public Lfreemarker/core/t;
.super Lfreemarker/core/o;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/o;-><init>()V

    return-void
.end method


# virtual methods
.method public j0(Lfreemarker/core/z0$a;Lfreemarker/core/Environment;)Z
    .locals 0

    invoke-virtual {p1}, Lfreemarker/core/z0$a;->f()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
