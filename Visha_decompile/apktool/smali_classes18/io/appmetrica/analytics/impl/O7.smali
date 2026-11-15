.class public abstract Lio/appmetrica/analytics/impl/O7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Long;

.field public static final b:Lio/appmetrica/analytics/impl/Xl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/impl/O7;->a:Ljava/lang/Long;

    new-instance v0, Lio/appmetrica/analytics/impl/Xl;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Xl;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/O7;->b:Lio/appmetrica/analytics/impl/Xl;

    return-void
.end method
