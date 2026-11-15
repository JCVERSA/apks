.class public final Lio/appmetrica/analytics/impl/pl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/H6;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/StartupParamsCallback;

.field public final synthetic b:Lio/appmetrica/analytics/impl/ql;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/ql;Lio/appmetrica/analytics/StartupParamsCallback;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/pl;->b:Lio/appmetrica/analytics/impl/ql;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/pl;->a:Lio/appmetrica/analytics/StartupParamsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lio/appmetrica/analytics/impl/pl;->b:Lio/appmetrica/analytics/impl/ql;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/pl;->a:Lio/appmetrica/analytics/StartupParamsCallback;

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/impl/ql;->b(Landroid/os/Bundle;Lio/appmetrica/analytics/StartupParamsCallback;)V

    return-void
.end method
