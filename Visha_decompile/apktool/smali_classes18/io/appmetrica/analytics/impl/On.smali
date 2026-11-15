.class public final Lio/appmetrica/analytics/impl/On;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/On;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Nn;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Nn;",
            ">;)",
            "Lio/appmetrica/analytics/impl/Nn;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/impl/Nn;

    .line 4
    iget-boolean v5, v3, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-nez v5, :cond_0

    .line 5
    iget-object v2, v3, Lio/appmetrica/analytics/impl/Nn;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 7
    new-instance p1, Lio/appmetrica/analytics/impl/Nn;

    const-string v0, ""

    invoke-direct {p1, p0, v1, v0}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    const-string p1, ", "

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Lio/appmetrica/analytics/impl/Nn;

    invoke-direct {v0, p0, v4, p1}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method
