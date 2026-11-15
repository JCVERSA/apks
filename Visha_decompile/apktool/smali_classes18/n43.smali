.class public final synthetic Ln43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/FunctionWithThrowable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/g2;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/g2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln43;->a:Lio/appmetrica/analytics/impl/g2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln43;->a:Lio/appmetrica/analytics/impl/g2;

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/impl/E2;->b(Lio/appmetrica/analytics/impl/g2;Landroid/app/usage/UsageStatsManager;)Lio/appmetrica/analytics/impl/G2;

    move-result-object p0

    return-object p0
.end method
