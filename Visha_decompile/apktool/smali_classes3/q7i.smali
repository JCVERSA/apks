.class public abstract Lq7i;
.super Ly7i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly7i;-><init>()V

    return-void
.end method

.method public static zzE(Lim5;)Lq7i;
    .locals 1

    instance-of v0, p0, Lq7i;

    if-eqz v0, :cond_0

    check-cast p0, Lq7i;

    goto :goto_0

    :cond_0
    new-instance v0, Lr7i;

    invoke-direct {v0, p0}, Lr7i;-><init>(Lim5;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
