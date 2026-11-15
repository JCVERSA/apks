.class public final Lio/appmetrica/analytics/impl/Di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pn;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/On;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/On;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/On;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Di;->a:Lio/appmetrica/analytics/impl/On;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/Revenue;)Lio/appmetrica/analytics/impl/Nn;
    .locals 3
    .param p1    # Lio/appmetrica/analytics/Revenue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Di;->a:Lio/appmetrica/analytics/impl/On;

    new-instance v0, Lio/appmetrica/analytics/impl/Ff;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ff;-><init>()V

    iget-object p1, p1, Lio/appmetrica/analytics/Revenue;->quantity:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid quantity value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Lio/appmetrica/analytics/impl/Nn;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v1, Lio/appmetrica/analytics/impl/Nn;

    const/4 p1, 0x1

    const-string v2, ""

    invoke-direct {v1, v0, p1, v2}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    .line 7
    :goto_1
    filled-new-array {v1}, [Lio/appmetrica/analytics/impl/Nn;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/On;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/appmetrica/analytics/Revenue;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Di;->a(Lio/appmetrica/analytics/Revenue;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object p0

    return-object p0
.end method
