.class public final Lio/appmetrica/analytics/impl/L1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Oj;


# static fields
.field public static final b:Lio/appmetrica/analytics/impl/K1;

.field public static final c:I = 0x1


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/K1;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/K1;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/L1;->b:Lio/appmetrica/analytics/impl/K1;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/L1;->a:Lio/appmetrica/analytics/impl/l0;

    return-void
.end method


# virtual methods
.method public final reportData(ILandroid/os/Bundle;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/L1;->a:Lio/appmetrica/analytics/impl/l0;

    check-cast p0, Lio/appmetrica/analytics/impl/I1;

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/impl/I1;->a(Landroid/os/Bundle;)V

    return-void
.end method
