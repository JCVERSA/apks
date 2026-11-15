.class public final Lio/appmetrica/analytics/impl/Z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    const-class p0, Lio/appmetrica/analytics/impl/I6;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "CounterReport.Source"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lio/appmetrica/analytics/impl/s9;->values()[Lio/appmetrica/analytics/impl/s9;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    iget v6, v5, Lio/appmetrica/analytics/impl/s9;->a:I

    if-ne v6, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lio/appmetrica/analytics/impl/s9;->b:Lio/appmetrica/analytics/impl/s9;

    goto :goto_1

    :cond_2
    move-object v5, v2

    :goto_1
    new-instance p1, Lio/appmetrica/analytics/impl/a6;

    const-string v0, ""

    invoke-direct {p1, v0, v0, v1}, Lio/appmetrica/analytics/impl/a6;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->c:Lio/appmetrica/analytics/impl/hb;

    const/4 v1, -0x1

    const-string v3, "CounterReport.Type"

    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lio/appmetrica/analytics/impl/a6;->d:I

    const-string v1, "CounterReport.CustomType"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lio/appmetrica/analytics/impl/a6;->e:I

    const-string v1, "CounterReport.Value"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->ifIsNullToDef(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/appmetrica/analytics/impl/a6;->b:Ljava/lang/String;

    const-string v0, "CounterReport.Environment"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/appmetrica/analytics/impl/a6;->c:Ljava/lang/String;

    const-string v0, "CounterReport.Event"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/appmetrica/analytics/impl/a6;->a:Ljava/lang/String;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/a6;->a(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p1, Lio/appmetrica/analytics/impl/a6;->f:Landroid/util/Pair;

    const-string v0, "CounterReport.TRUNCATED"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lio/appmetrica/analytics/impl/a6;->g:I

    const-string v0, "CounterReport.ProfileID"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/appmetrica/analytics/impl/a6;->h:Ljava/lang/String;

    const-string v0, "CounterReport.CreationElapsedRealtime"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lio/appmetrica/analytics/impl/a6;->i:J

    const-string v0, "CounterReport.CreationTimestamp"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Lio/appmetrica/analytics/impl/a6;->j:J

    const-string v0, "CounterReport.UniquenessStatus"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/impl/ka;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/ka;

    move-result-object v0

    iput-object v0, p1, Lio/appmetrica/analytics/impl/a6;->k:Lio/appmetrica/analytics/impl/ka;

    iput-object v5, p1, Lio/appmetrica/analytics/impl/a6;->l:Lio/appmetrica/analytics/impl/s9;

    const-string v0, "CounterReport.Payload"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Lio/appmetrica/analytics/impl/a6;->m:Landroid/os/Bundle;

    const-string v0, "CounterReport.AttributionIdChanged"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    iput-object v0, p1, Lio/appmetrica/analytics/impl/a6;->n:Ljava/lang/Boolean;

    const-string v0, "CounterReport.OpenId"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_4
    iput-object v2, p1, Lio/appmetrica/analytics/impl/a6;->o:Ljava/lang/Integer;

    const-string v0, "CounterReport.Extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->bundleToMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, p1, Lio/appmetrica/analytics/impl/a6;->p:Ljava/util/Map;

    return-object p1
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lio/appmetrica/analytics/impl/a6;

    return-object p0
.end method
