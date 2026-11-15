.class public final Lio/appmetrica/analytics/impl/X3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/lm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/L3;Ljava/util/List;)Lio/appmetrica/analytics/impl/M3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/L3;",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/L3;",
            ">;)",
            "Lio/appmetrica/analytics/impl/M3;"
        }
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/M3;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/M3;-><init>(Lio/appmetrica/analytics/impl/L3;Ljava/util/List;)V

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/L3;

    check-cast p2, Ljava/util/List;

    new-instance p0, Lio/appmetrica/analytics/impl/M3;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/M3;-><init>(Lio/appmetrica/analytics/impl/L3;Ljava/util/List;)V

    return-object p0
.end method
