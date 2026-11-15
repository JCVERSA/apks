.class public final Lio/appmetrica/analytics/impl/V9;
.super Lio/appmetrica/analytics/impl/X9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/X9;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/pm/FeatureInfo;)Lio/appmetrica/analytics/impl/Y9;
    .locals 3
    .param p1    # Landroid/content/pm/FeatureInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    new-instance p0, Lio/appmetrica/analytics/impl/Y9;

    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/FeatureInfo;->version:I

    iget p1, p1, Landroid/content/pm/FeatureInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/Y9;-><init>(Ljava/lang/String;IZ)V

    return-object p0
.end method
