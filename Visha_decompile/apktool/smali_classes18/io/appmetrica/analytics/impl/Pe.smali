.class public final Lio/appmetrica/analytics/impl/Pe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ef;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/ef;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ef;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Pe;-><init>(Lio/appmetrica/analytics/impl/ef;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ef;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Pe;->a:Lio/appmetrica/analytics/impl/ef;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/bf;)Lio/appmetrica/analytics/impl/Re;
    .locals 4
    .param p1    # Lio/appmetrica/analytics/impl/bf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    new-instance v0, Lio/appmetrica/analytics/impl/Re;

    iget-object v1, p1, Lio/appmetrica/analytics/impl/bf;->a:Ljava/lang/String;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/bf;->b:Ljava/lang/String;

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 9
    :catchall_0
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pe;->a:Lio/appmetrica/analytics/impl/ef;

    iget p1, p1, Lio/appmetrica/analytics/impl/bf;->c:I

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ef;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/X7;

    move-result-object p0

    invoke-direct {v0, v1, v3, p0}, Lio/appmetrica/analytics/impl/Re;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lio/appmetrica/analytics/impl/X7;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Re;)Lio/appmetrica/analytics/impl/bf;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/Re;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/bf;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/bf;-><init>()V

    .line 2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Re;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Re;->a:Ljava/lang/String;

    iput-object v1, v0, Lio/appmetrica/analytics/impl/bf;->a:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/Re;->b:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/bf;->b:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Pe;->a:Lio/appmetrica/analytics/impl/ef;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/Re;->c:Lio/appmetrica/analytics/impl/X7;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ef;->a(Lio/appmetrica/analytics/impl/X7;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/bf;->c:I

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/Re;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Pe;->a(Lio/appmetrica/analytics/impl/Re;)Lio/appmetrica/analytics/impl/bf;

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

    check-cast p1, Lio/appmetrica/analytics/impl/bf;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Pe;->a(Lio/appmetrica/analytics/impl/bf;)Lio/appmetrica/analytics/impl/Re;

    move-result-object p0

    return-object p0
.end method
