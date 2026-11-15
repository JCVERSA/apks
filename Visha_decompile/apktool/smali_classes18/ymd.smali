.class public final synthetic Lymd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/m1;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lio/appmetrica/analytics/AppMetricaConfig;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/m1;Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lymd;->b:Lio/appmetrica/analytics/impl/m1;

    iput-object p2, p0, Lymd;->c:Landroid/content/Context;

    iput-object p3, p0, Lymd;->d:Lio/appmetrica/analytics/AppMetricaConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lymd;->b:Lio/appmetrica/analytics/impl/m1;

    iget-object v1, p0, Lymd;->c:Landroid/content/Context;

    iget-object p0, p0, Lymd;->d:Lio/appmetrica/analytics/AppMetricaConfig;

    invoke-virtual {v0, v1, p0}, Lio/appmetrica/analytics/impl/m1;->b(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaConfig;)V

    return-void
.end method
