.class public Lio/appmetrica/analytics/impl/b4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/pf;

.field public final b:Lio/appmetrica/analytics/internal/CounterConfiguration;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/b4;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/pf;->c:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/pf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-object v1, v0

    .line 3
    :goto_0
    invoke-static {p1}, Lio/appmetrica/analytics/internal/CounterConfiguration;->fromBundle(Landroid/os/Bundle;)Lio/appmetrica/analytics/internal/CounterConfiguration;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 5
    iget-object v2, v1, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    const-string v3, "PROCESS_CFG_PACKAGE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    iget-object p0, v1, Lio/appmetrica/analytics/impl/pf;->a:Landroid/content/ContentValues;

    const-string v2, "PROCESS_CFG_SDK_API_LEVEL"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 8
    invoke-static {}, Lio/appmetrica/analytics/AppMetrica;->getLibraryApiLevel()I

    move-result v2

    if-ne p0, v2, :cond_1

    .line 9
    new-instance p0, Lio/appmetrica/analytics/impl/b4;

    invoke-direct {p0, v1, p1}, Lio/appmetrica/analytics/impl/b4;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    return-object p0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/pf;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 10
    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/internal/CounterConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientConfiguration{mProcessConfiguration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCounterConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
