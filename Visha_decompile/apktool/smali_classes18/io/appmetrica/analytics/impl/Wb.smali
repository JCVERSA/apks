.class public final Lio/appmetrica/analytics/impl/Wb;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/Wb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/Wb;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Wb;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/Wb;->a:Lio/appmetrica/analytics/impl/Wb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;

    invoke-interface {p1}, Lio/appmetrica/analytics/locationapi/internal/LocationControllerObserver;->stopLocationTracking()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
