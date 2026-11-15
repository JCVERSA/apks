.class public Lio/appmetrica/analytics/ReporterConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/ReporterConfig$Builder;
    }
.end annotation


# instance fields
.field public final additionalConfig:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final apiKey:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final appEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final dataSendingEnabled:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final dispatchPeriodSeconds:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final logs:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final maxReportsCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final maxReportsInDatabaseCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final sessionTimeout:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final userProfileID:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/appmetrica/analytics/ReporterConfig$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->a(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/ReporterConfig;->apiKey:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->b(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 5
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->c(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/ReporterConfig;->logs:Ljava/lang/Boolean;

    .line 6
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->d(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/ReporterConfig;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 7
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->e(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 8
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->f(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/ReporterConfig;->userProfileID:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->g(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/ReporterConfig;->dispatchPeriodSeconds:Ljava/lang/Integer;

    .line 10
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->h(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/ReporterConfig;->maxReportsCount:Ljava/lang/Integer;

    .line 11
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->i(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableSameOrderMapCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/ReporterConfig;->appEnvironment:Ljava/util/Map;

    .line 12
    invoke-static {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->j(Lio/appmetrica/analytics/ReporterConfig$Builder;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->unmodifiableSameOrderMapCopy(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/ReporterConfig;->additionalConfig:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/ReporterConfig$Builder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/ReporterConfig;-><init>(Lio/appmetrica/analytics/ReporterConfig$Builder;)V

    return-void
.end method

.method public static newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lio/appmetrica/analytics/ReporterConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/appmetrica/analytics/ReporterConfig$Builder;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
