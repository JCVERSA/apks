.class public final Lio/appmetrica/analytics/identifiers/impl/p;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# static fields
.field public static final a:Lio/appmetrica/analytics/identifiers/impl/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/identifiers/impl/p;

    invoke-direct {v0}, Lio/appmetrica/analytics/identifiers/impl/p;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/identifiers/impl/p;->a:Lio/appmetrica/analytics/identifiers/impl/p;

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
    .locals 1

    check-cast p1, Landroid/os/IBinder;

    sget p0, Lio/appmetrica/analytics/identifiers/impl/t;->a:I

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "com.yandex.android.advid.service.YandexAdvIdInterface"

    invoke-interface {p1, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lio/appmetrica/analytics/identifiers/impl/u;

    if-eqz v0, :cond_1

    check-cast p0, Lio/appmetrica/analytics/identifiers/impl/u;

    goto :goto_0

    :cond_1
    new-instance p0, Lio/appmetrica/analytics/identifiers/impl/s;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/identifiers/impl/s;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object p0
.end method
