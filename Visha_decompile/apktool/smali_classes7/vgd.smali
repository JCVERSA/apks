.class public Lvgd;
.super Lw2d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v0

    invoke-virtual {v0}, Lkhd;->G()Lixd;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lixd;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v2

    invoke-virtual {v2}, Lkhd;->E()V

    :cond_0
    invoke-virtual {v0}, Lixd;->d()V

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v2

    invoke-virtual {v2, v1}, Lkhd;->h(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object p0

    invoke-virtual {p0}, Lkhd;->C()V

    return-void
.end method
