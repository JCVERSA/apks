.class public final Lio/appmetrica/analytics/impl/I8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Lc;

.field public final b:Lio/appmetrica/analytics/impl/Tk;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Tk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Lc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Lc;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/I8;->a:Lio/appmetrica/analytics/impl/Lc;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/I8;->b:Lio/appmetrica/analytics/impl/Tk;

    return-void
.end method
