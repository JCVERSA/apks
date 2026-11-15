.class public final Lio/appmetrica/analytics/impl/T9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/xm;

.field public final c:Lio/appmetrica/analytics/impl/q3;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 6
    new-instance v0, Lio/appmetrica/analytics/impl/xm;

    const-string v1, "io.appmetrica.analytics.build_id"

    invoke-direct {v0, p1, v1}, Lio/appmetrica/analytics/impl/xm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lio/appmetrica/analytics/impl/q3;

    const-string v2, "io.appmetrica.analytics.is_offline"

    invoke-direct {v1, p1, v2}, Lio/appmetrica/analytics/impl/q3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    new-instance v2, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {v2}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    .line 9
    invoke-direct {p0, p1, v0, v1, v2}, Lio/appmetrica/analytics/impl/T9;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/xm;Lio/appmetrica/analytics/impl/q3;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/xm;Lio/appmetrica/analytics/impl/q3;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/T9;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/T9;->b:Lio/appmetrica/analytics/impl/xm;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/impl/T9;->c:Lio/appmetrica/analytics/impl/q3;

    .line 5
    iput-object p4, p0, Lio/appmetrica/analytics/impl/T9;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    return-void
.end method
