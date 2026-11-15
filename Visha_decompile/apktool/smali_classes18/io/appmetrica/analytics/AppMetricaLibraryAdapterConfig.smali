.class public Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;
    }
.end annotation


# instance fields
.field public final advIdentifiersTracking:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;->a(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;-><init>(Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;)V

    return-void
.end method

.method public static newConfigBuilder()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;

    invoke-direct {v0}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppMetricaLibraryAdapterConfig{advIdentifiersTracking="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->advIdentifiersTracking:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
