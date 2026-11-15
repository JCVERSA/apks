.class public Lfreemarker/core/w;
.super Lfreemarker/core/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/w$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/l;-><init>()V

    return-void
.end method


# virtual methods
.method public i0(Lfreemarker/core/z0$a;Lfreemarker/core/Environment;)Lzfa;
    .locals 1

    new-instance p2, Lfreemarker/core/w$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lfreemarker/core/w$a;-><init>(Lfreemarker/core/w;Lfreemarker/core/z0$a;Lrl0;)V

    return-object p2
.end method
