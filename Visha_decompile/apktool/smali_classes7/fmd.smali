.class public Lfmd;
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
    .locals 7

    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object v0

    invoke-virtual {v0}, Lkhd;->x()Lprd;

    move-result-object v1

    invoke-virtual {v0}, Lkhd;->z()Lbbd;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p1}, Lbbd;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Lbbd;

    invoke-direct {v3, v2}, Lbbd;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v3}, Lkhd;->g(Lbbd;)V

    invoke-virtual {v0}, Lkhd;->z()Lbbd;

    move-result-object v2

    invoke-virtual {v2, p1}, Lbbd;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lfmd;->c(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ll6d;->a(Ljava/lang/Class;)Ll6d;

    move-result-object p0

    invoke-virtual {v0}, Lkhd;->H()Lixd;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ll6d;->c()Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :catch_1
    move-exception p0

    goto/16 :goto_3

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La8d;

    invoke-virtual {v3}, La8d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lprd;->b(Ljava/lang/String;)Lprd;

    invoke-virtual {v0, v3}, Lkhd;->n(La8d;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, La8d;->n()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, p1}, La8d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lkhd;->z()Lbbd;

    move-result-object v5

    invoke-virtual {v5, v4}, Lbbd;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v3, v4}, Lkhd;->a(La8d;Ljava/lang/Object;)Lmod;

    move-result-object v5

    instance-of v6, v5, Lrfd;

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lrfd;

    invoke-interface {v6}, Lrfd;->a()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    invoke-virtual {v2}, Lixd;->e()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lkhd;->E()V

    :cond_2
    invoke-virtual {v2}, Lixd;->d()V

    invoke-virtual {v3}, La8d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lkhd;->u(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, La8d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lixd;->b(Ljava/lang/String;)V

    invoke-interface {v5, v4}, Lmod;->a(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1}, Lprd;->d()Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lkhd;->D()V

    invoke-virtual {v0}, Lkhd;->z()Lbbd;

    move-result-object p0

    invoke-virtual {p0}, Lbbd;->a()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Lbbd;

    invoke-virtual {v0, p0}, Lkhd;->g(Lbbd;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lw2d;->b()Lkhd;

    move-result-object p0

    invoke-virtual {p0}, Lkhd;->A()Lixd;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lixd;->a()V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
