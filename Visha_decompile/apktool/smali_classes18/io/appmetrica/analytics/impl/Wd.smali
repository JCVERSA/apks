.class public final Lio/appmetrica/analytics/impl/Wd;
.super Lio/appmetrica/analytics/impl/L2;
.source "SourceFile"


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/Vd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Vd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Vd;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Wd;->b:Lio/appmetrica/analytics/impl/Vd;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Q9;)V
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/Wd;->b:Lio/appmetrica/analytics/impl/Vd;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/impl/Vd;->a(Lio/appmetrica/analytics/impl/Vd;Lio/appmetrica/analytics/impl/Q9;)Lio/appmetrica/analytics/impl/H9;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/L2;-><init>(Lio/appmetrica/analytics/impl/H9;)V

    return-void
.end method
