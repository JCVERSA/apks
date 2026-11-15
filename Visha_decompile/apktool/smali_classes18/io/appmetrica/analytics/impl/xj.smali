.class public final Lio/appmetrica/analytics/impl/xj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Xa;


# instance fields
.field public final synthetic a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/xj;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ya;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/xj;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/IReporter;->reportAnr(Ljava/util/Map;)V

    return-void
.end method
