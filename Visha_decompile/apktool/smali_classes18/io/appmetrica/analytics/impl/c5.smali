.class public final Lio/appmetrica/analytics/impl/c5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/S6;

.field public final b:Lio/appmetrica/analytics/impl/Fg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/c5;->a:Lio/appmetrica/analytics/impl/S6;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/c5;->b:Lio/appmetrica/analytics/impl/Fg;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/J8;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/impl/K5;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/c5;->a:Lio/appmetrica/analytics/impl/S6;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/K5;-><init>(Lio/appmetrica/analytics/impl/S6;)V

    new-instance v1, Lio/appmetrica/analytics/impl/Kc;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/c5;->a:Lio/appmetrica/analytics/impl/S6;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/c5;->b:Lio/appmetrica/analytics/impl/Fg;

    invoke-direct {v1, v2, p0}, Lio/appmetrica/analytics/impl/Kc;-><init>(Lio/appmetrica/analytics/impl/S6;Lio/appmetrica/analytics/impl/Fg;)V

    const/4 p0, 0x2

    new-array p0, p0, [Lio/appmetrica/analytics/impl/J8;

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const/4 v0, 0x1

    aput-object v1, p0, v0

    invoke-static {p0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/J8;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
