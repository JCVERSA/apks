.class public final Lio/appmetrica/analytics/impl/d9;
.super Lio/appmetrica/analytics/impl/qf;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ii;

.field public final b:Ljava/util/HashMap;

.field public final c:Lio/appmetrica/analytics/impl/H4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 1

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/qf;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/ii;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    new-instance p1, Lio/appmetrica/analytics/impl/H4;

    invoke-direct {p1, v0}, Lio/appmetrica/analytics/impl/H4;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/d9;->c:Lio/appmetrica/analytics/impl/H4;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/d9;->a()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/d9;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(I)Lio/appmetrica/analytics/impl/c9;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/appmetrica/analytics/impl/c9;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 44
    invoke-static {p1}, Lio/appmetrica/analytics/impl/hb;->a(I)Lio/appmetrica/analytics/impl/hb;

    move-result-object p1

    .line 45
    iget-object v1, p0, Lio/appmetrica/analytics/impl/d9;->c:Lio/appmetrica/analytics/impl/H4;

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1, p1, v0}, Lio/appmetrica/analytics/impl/H4;->a(Lio/appmetrica/analytics/impl/hb;Ljava/util/List;)V

    .line 47
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/d9;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/va;

    if-eqz p0, :cond_1

    .line 48
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/va;->a(Ljava/util/List;)V

    .line 49
    :cond_1
    new-instance p0, Lio/appmetrica/analytics/impl/b9;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/b9;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/hb;)Lio/appmetrica/analytics/impl/va;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 50
    iget-object p0, p0, Lio/appmetrica/analytics/impl/d9;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/va;

    return-object p0
.end method

.method public final a()Ljava/util/HashMap;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lio/appmetrica/analytics/impl/hb;->z:Lio/appmetrica/analytics/impl/hb;

    new-instance v2, Lio/appmetrica/analytics/impl/h;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/h;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lio/appmetrica/analytics/impl/hb;->B:Lio/appmetrica/analytics/impl/hb;

    new-instance v2, Lio/appmetrica/analytics/impl/gl;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/gl;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lio/appmetrica/analytics/impl/hb;->e:Lio/appmetrica/analytics/impl/hb;

    new-instance v2, Lio/appmetrica/analytics/impl/vg;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/vg;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lio/appmetrica/analytics/impl/ob;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/ob;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    .line 6
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->u:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->v:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->o:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->C:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->D:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/bl;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    .line 11
    iget-object v5, v4, Lio/appmetrica/analytics/impl/ii;->t:Lio/appmetrica/analytics/impl/Ni;

    .line 12
    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/ii;Lio/appmetrica/analytics/impl/Gg;)V

    .line 13
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->E:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/Cg;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Cg;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->n:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/Ef;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/Ef;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->w:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/z6;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/z6;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->x:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/kf;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/kf;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->r:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/sn;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/sn;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v2, Lio/appmetrica/analytics/impl/rn;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/rn;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    .line 20
    sget-object v3, Lio/appmetrica/analytics/impl/hb;->t:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v3, Lio/appmetrica/analytics/impl/hb;->s:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->y:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->p:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/bl;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    .line 24
    iget-object v5, v4, Lio/appmetrica/analytics/impl/ii;->e:Lio/appmetrica/analytics/impl/Bg;

    .line 25
    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/ii;Lio/appmetrica/analytics/impl/Gg;)V

    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->q:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/bl;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    .line 28
    iget-object v5, v4, Lio/appmetrica/analytics/impl/ii;->f:Lio/appmetrica/analytics/impl/Ag;

    .line 29
    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/ii;Lio/appmetrica/analytics/impl/Gg;)V

    .line 30
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->i:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->j:Lio/appmetrica/analytics/impl/hb;

    new-instance v3, Lio/appmetrica/analytics/impl/bl;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    .line 33
    iget-object v5, v4, Lio/appmetrica/analytics/impl/ii;->k:Lio/appmetrica/analytics/impl/xn;

    .line 34
    invoke-direct {v3, v4, v5}, Lio/appmetrica/analytics/impl/bl;-><init>(Lio/appmetrica/analytics/impl/ii;Lio/appmetrica/analytics/impl/Gg;)V

    .line 35
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->k:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->l:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->I:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->m:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v2, Lio/appmetrica/analytics/impl/hb;->J:Lio/appmetrica/analytics/impl/hb;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lio/appmetrica/analytics/impl/hb;->h:Lio/appmetrica/analytics/impl/hb;

    new-instance v2, Lio/appmetrica/analytics/impl/L9;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    invoke-direct {v2, p0}, Lio/appmetrica/analytics/impl/L9;-><init>(Lio/appmetrica/analytics/impl/ii;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/hb;Lio/appmetrica/analytics/impl/va;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/hb;",
            "Lio/appmetrica/analytics/impl/va;",
            ")V"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lio/appmetrica/analytics/impl/d9;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/ii;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/d9;->a:Lio/appmetrica/analytics/impl/ii;

    return-object p0
.end method
