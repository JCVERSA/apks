.class public final Lio/appmetrica/analytics/impl/Nf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Jf;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Rf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Rf;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Nf;->a:Lio/appmetrica/analytics/impl/Rf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Nf;->a:Lio/appmetrica/analytics/impl/Rf;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Rf;->g:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/appmetrica/analytics/impl/cg;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Rf;->c:Lio/appmetrica/analytics/impl/lg;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lio/appmetrica/analytics/impl/cg;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v1}, Li81;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Rf;->c:Lio/appmetrica/analytics/impl/lg;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/lg;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/cg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Rf;->a(Lio/appmetrica/analytics/impl/cg;)V

    return-void
.end method
