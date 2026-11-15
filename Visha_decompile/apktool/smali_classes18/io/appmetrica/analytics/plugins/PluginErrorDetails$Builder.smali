.class public Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/plugins/PluginErrorDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/plugins/PluginErrorDetails;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v8, Lio/appmetrica/analytics/plugins/PluginErrorDetails;

    iget-object v1, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->a:Ljava/lang/String;

    iget-object v2, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->b:Ljava/lang/String;

    iget-object v0, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->c:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->d:Ljava/lang/String;

    iget-object v5, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->e:Ljava/lang/String;

    iget-object p0, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/util/Map;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/plugins/PluginErrorDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    return-object v8
.end method

.method public withExceptionClass(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public withMessage(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withPlatform(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public withPluginEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->f:Ljava/util/Map;

    return-object p0
.end method

.method public withStacktrace(Ljava/util/List;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/plugins/StackTraceItem;",
            ">;)",
            "Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->c:Ljava/util/List;

    return-object p0
.end method

.method public withVirtualMachineVersion(Ljava/lang/String;)Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/plugins/PluginErrorDetails$Builder;->e:Ljava/lang/String;

    return-object p0
.end method
