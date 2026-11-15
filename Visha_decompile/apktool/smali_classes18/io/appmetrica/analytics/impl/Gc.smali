.class public final Lio/appmetrica/analytics/impl/Gc;
.super Lio/appmetrica/analytics/impl/L2;
.source "SourceFile"


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/Fc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Fc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Fc;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Gc;->b:Lio/appmetrica/analytics/impl/Fc;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Q9;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Q9;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/impl/Gc;->b:Lio/appmetrica/analytics/impl/Fc;

    invoke-static {v0, p1, p2}, Lio/appmetrica/analytics/impl/Fc;->a(Lio/appmetrica/analytics/impl/Fc;Lio/appmetrica/analytics/impl/Q9;Ljava/util/Map;)Lio/appmetrica/analytics/impl/H9;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/L2;-><init>(Lio/appmetrica/analytics/impl/H9;)V

    return-void
.end method
