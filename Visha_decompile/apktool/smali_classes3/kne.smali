.class public abstract Lkne;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lpme;)Lhme;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lqme;

    new-instance v0, Lene;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lene;-><init>(Ldne;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-direct {p1, v0}, Lqme;-><init>(Lpme;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lqme;

    invoke-direct {v0, p1}, Lqme;-><init>(Lpme;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljne;

    invoke-direct {v0, p0}, Ljne;-><init>(Landroid/content/Context;)V

    new-instance p0, Lhme;

    new-instance v1, Lzme;

    const/high16 v2, 0x500000

    invoke-direct {v1, v0, v2}, Lzme;-><init>(Lyme;I)V

    const/4 v0, 0x4

    invoke-direct {p0, v1, p1, v0}, Lhme;-><init>(Lyle;Leme;I)V

    invoke-virtual {p0}, Lhme;->d()V

    return-object p0
.end method
