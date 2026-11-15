.class public final Lio/appmetrica/analytics/impl/T1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/Sd;

.field public final synthetic b:Lio/appmetrica/analytics/impl/G7;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/V1;Lio/appmetrica/analytics/impl/G7;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/T1;->a:Lio/appmetrica/analytics/impl/Sd;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/T1;->b:Lio/appmetrica/analytics/impl/G7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/T1;->a:Lio/appmetrica/analytics/impl/Sd;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/T1;->b:Lio/appmetrica/analytics/impl/G7;

    invoke-interface {v0, p0}, Lio/appmetrica/analytics/impl/Sd;->consume(Ljava/lang/Object;)V

    return-void
.end method
