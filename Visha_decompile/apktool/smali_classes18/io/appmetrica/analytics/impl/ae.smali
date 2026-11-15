.class public final Lio/appmetrica/analytics/impl/ae;
.super Lio/appmetrica/analytics/impl/L2;
.source "SourceFile"


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/Zd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Zd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Zd;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/ae;->b:Lio/appmetrica/analytics/impl/Zd;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Q9;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/ae;->b:Lio/appmetrica/analytics/impl/Zd;

    invoke-static {v0, p1, p2}, Lio/appmetrica/analytics/impl/Zd;->a(Lio/appmetrica/analytics/impl/Zd;Lio/appmetrica/analytics/impl/Q9;Ljava/lang/Object;)Lio/appmetrica/analytics/impl/H9;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/L2;-><init>(Lio/appmetrica/analytics/impl/H9;)V

    return-void
.end method
