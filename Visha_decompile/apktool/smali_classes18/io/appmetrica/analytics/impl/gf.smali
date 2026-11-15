.class public final Lio/appmetrica/analytics/impl/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ef;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/ef;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ef;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/gf;->a:Lio/appmetrica/analytics/impl/ef;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/ff;)Lio/appmetrica/analytics/impl/af;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/ff;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/af;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/af;-><init>()V

    .line 2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/ff;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/ff;->a:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/af;->a:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/ff;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/af;->b:Ljava/lang/String;

    .line 5
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/ff;->c:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/af;->c:Z

    .line 6
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/ff;->d:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/af;->d:Z

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/gf;->a:Lio/appmetrica/analytics/impl/ef;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/ff;->e:Lio/appmetrica/analytics/impl/X7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ef;->a(Lio/appmetrica/analytics/impl/X7;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/af;->e:I

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/af;)Lio/appmetrica/analytics/impl/ff;
    .locals 7
    .param p1    # Lio/appmetrica/analytics/impl/af;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    new-instance v6, Lio/appmetrica/analytics/impl/ff;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/af;->a:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/af;->b:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :catchall_0
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 12
    :goto_0
    iget-boolean v3, p1, Lio/appmetrica/analytics/impl/af;->c:Z

    iget-boolean v4, p1, Lio/appmetrica/analytics/impl/af;->d:Z

    iget-object p0, p0, Lio/appmetrica/analytics/impl/gf;->a:Lio/appmetrica/analytics/impl/ef;

    iget p1, p1, Lio/appmetrica/analytics/impl/af;->e:I

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ef;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/X7;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/ff;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZZLio/appmetrica/analytics/impl/X7;)V

    return-object v6
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/ff;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/gf;->a(Lio/appmetrica/analytics/impl/ff;)Lio/appmetrica/analytics/impl/af;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/af;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/gf;->a(Lio/appmetrica/analytics/impl/af;)Lio/appmetrica/analytics/impl/ff;

    move-result-object p0

    return-object p0
.end method
