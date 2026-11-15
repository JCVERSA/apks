.class public final Lio/appmetrica/analytics/impl/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;Lio/appmetrica/analytics/impl/ab;)Lio/appmetrica/analytics/impl/Ma;
    .locals 2

    .line 2
    new-instance p0, Lio/appmetrica/analytics/impl/th;

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/kc;

    invoke-direct {v0, p3, p2}, Lio/appmetrica/analytics/impl/kc;-><init>(Lio/appmetrica/analytics/impl/ab;Lio/appmetrica/analytics/AppMetricaConfig;)V

    new-instance p3, Lvjd;

    invoke-direct {p3}, Lvjd;-><init>()V

    .line 4
    iget-object p2, p2, Lio/appmetrica/analytics/AppMetricaConfig;->crashTransformer:Lio/appmetrica/analytics/ICrashTransformer;

    .line 5
    new-instance v1, Lio/appmetrica/analytics/impl/T9;

    invoke-direct {v1, p1}, Lio/appmetrica/analytics/impl/T9;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p3, p2, v1}, Lio/appmetrica/analytics/impl/th;-><init>(Lio/appmetrica/analytics/impl/tn;Lio/appmetrica/analytics/impl/s6;Lio/appmetrica/analytics/ICrashTransformer;Lio/appmetrica/analytics/impl/T9;)V

    return-object p0
.end method
