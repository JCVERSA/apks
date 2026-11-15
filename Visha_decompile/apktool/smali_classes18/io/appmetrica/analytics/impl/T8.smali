.class public final Lio/appmetrica/analytics/impl/T8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/S8;)Lio/appmetrica/analytics/impl/A9;
    .locals 5

    new-instance v0, Lio/appmetrica/analytics/impl/A9;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A9;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/S8;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lio/appmetrica/analytics/impl/A9;->d:[I

    iget-object v1, p0, Lio/appmetrica/analytics/impl/S8;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, v0, Lio/appmetrica/analytics/impl/A9;->d:[I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lio/appmetrica/analytics/impl/S8;->d:I

    iput v1, v0, Lio/appmetrica/analytics/impl/A9;->c:I

    iget v1, p0, Lio/appmetrica/analytics/impl/S8;->c:I

    iput v1, v0, Lio/appmetrica/analytics/impl/A9;->b:I

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/S8;->a:Z

    iput-boolean p0, v0, Lio/appmetrica/analytics/impl/A9;->a:Z

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/impl/S8;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/T8;->a(Lio/appmetrica/analytics/impl/S8;)Lio/appmetrica/analytics/impl/A9;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lio/appmetrica/analytics/impl/A9;

    new-instance p0, Lio/appmetrica/analytics/impl/S8;

    iget-boolean v0, p1, Lio/appmetrica/analytics/impl/A9;->a:Z

    iget v1, p1, Lio/appmetrica/analytics/impl/A9;->b:I

    iget v2, p1, Lio/appmetrica/analytics/impl/A9;->c:I

    iget-object p1, p1, Lio/appmetrica/analytics/impl/A9;->d:[I

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->hashSetFromIntArray([I)Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lio/appmetrica/analytics/impl/S8;-><init>(ZIILjava/util/Set;)V

    return-object p0
.end method
