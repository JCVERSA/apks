.class public final Lio/appmetrica/analytics/impl/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Pn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/b0;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/Nn;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lio/appmetrica/analytics/impl/Nn;

    const-string v0, "ApiKey is empty. Please, read official documentation how to obtain one: https://appmetrica.io/docs/mobile-sdk-dg/android/about/android-initialize.html"

    invoke-direct {p1, p0, v1, v0}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 5
    new-instance v0, Lio/appmetrica/analytics/impl/Nn;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3, v2}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 6
    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ApiKey="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please, read official documentation how to obtain one: https://appmetrica.io/docs/mobile-sdk-dg/android/about/android-initialize.html"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Lio/appmetrica/analytics/impl/Nn;

    invoke-direct {v0, p0, v1, p1}, Lio/appmetrica/analytics/impl/Nn;-><init>(Lio/appmetrica/analytics/impl/Pn;ZLjava/lang/String;)V

    return-object v0
.end method
