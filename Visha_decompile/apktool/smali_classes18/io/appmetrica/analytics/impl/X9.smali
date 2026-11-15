.class public abstract Lio/appmetrica/analytics/impl/X9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/pm/FeatureInfo;)Lio/appmetrica/analytics/impl/Y9;
    .locals 2
    .param p1    # Landroid/content/pm/FeatureInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    iget v0, p1, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/X9;->b(Landroid/content/pm/FeatureInfo;)Lio/appmetrica/analytics/impl/Y9;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/impl/Y9;

    iget p1, p1, Landroid/content/pm/FeatureInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string p1, "openGlFeature"

    invoke-direct {p0, p1, v0, v1}, Lio/appmetrica/analytics/impl/Y9;-><init>(Ljava/lang/String;IZ)V

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/X9;->b(Landroid/content/pm/FeatureInfo;)Lio/appmetrica/analytics/impl/Y9;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Landroid/content/pm/FeatureInfo;)Lio/appmetrica/analytics/impl/Y9;
.end method
