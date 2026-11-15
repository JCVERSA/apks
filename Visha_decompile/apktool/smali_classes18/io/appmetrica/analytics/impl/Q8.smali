.class public final Lio/appmetrica/analytics/impl/Q8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lio/appmetrica/analytics/impl/V8;

.field public c:Lio/appmetrica/analytics/impl/S8;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/V8;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/appmetrica/analytics/impl/Q8;->a:I

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q8;->b:Lio/appmetrica/analytics/impl/V8;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const-string v0, "event_hashes"

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Q8;->b:Lio/appmetrica/analytics/impl/V8;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v2, v1, Lio/appmetrica/analytics/impl/V8;->c:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    invoke-interface {v2, v0}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->get(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lio/appmetrica/analytics/impl/V8;->a:Lio/appmetrica/analytics/impl/T8;

    iget-object v4, v1, Lio/appmetrica/analytics/impl/V8;->b:Lio/appmetrica/analytics/impl/U8;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/impl/U8;->a([B)Lio/appmetrica/analytics/impl/A9;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/appmetrica/analytics/impl/S8;

    iget-boolean v4, v2, Lio/appmetrica/analytics/impl/A9;->a:Z

    iget v5, v2, Lio/appmetrica/analytics/impl/A9;->b:I

    iget v6, v2, Lio/appmetrica/analytics/impl/A9;->c:I

    iget-object v2, v2, Lio/appmetrica/analytics/impl/A9;->d:[I

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->hashSetFromIntArray([I)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v4, v5, v6, v2}, Lio/appmetrica/analytics/impl/S8;-><init>(ZIILjava/util/Set;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, v1, Lio/appmetrica/analytics/impl/V8;->a:Lio/appmetrica/analytics/impl/T8;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/V8;->b:Lio/appmetrica/analytics/impl/U8;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/appmetrica/analytics/impl/A9;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/A9;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/impl/S8;

    iget-boolean v4, v3, Lio/appmetrica/analytics/impl/A9;->a:Z

    iget v5, v3, Lio/appmetrica/analytics/impl/A9;->b:I

    iget v6, v3, Lio/appmetrica/analytics/impl/A9;->c:I

    iget-object v3, v3, Lio/appmetrica/analytics/impl/A9;->d:[I

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->hashSetFromIntArray([I)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v4, v5, v6, v3}, Lio/appmetrica/analytics/impl/S8;-><init>(ZIILjava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    goto :goto_1

    :catchall_0
    iget-object v2, v1, Lio/appmetrica/analytics/impl/V8;->a:Lio/appmetrica/analytics/impl/T8;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/V8;->b:Lio/appmetrica/analytics/impl/U8;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/A9;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/A9;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/appmetrica/analytics/impl/S8;

    iget-boolean v2, v1, Lio/appmetrica/analytics/impl/A9;->a:Z

    iget v4, v1, Lio/appmetrica/analytics/impl/A9;->b:I

    iget v5, v1, Lio/appmetrica/analytics/impl/A9;->c:I

    iget-object v1, v1, Lio/appmetrica/analytics/impl/A9;->d:[I

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->hashSetFromIntArray([I)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v3, v2, v4, v5, v1}, Lio/appmetrica/analytics/impl/S8;-><init>(ZIILjava/util/Set;)V

    :goto_1
    iput-object v3, p0, Lio/appmetrica/analytics/impl/Q8;->c:Lio/appmetrica/analytics/impl/S8;

    iget v1, v3, Lio/appmetrica/analytics/impl/S8;->c:I

    iget v2, p0, Lio/appmetrica/analytics/impl/Q8;->a:I

    if-eq v1, v2, :cond_2

    iput v2, v3, Lio/appmetrica/analytics/impl/S8;->c:I

    const/4 v1, 0x0

    iput v1, v3, Lio/appmetrica/analytics/impl/S8;->d:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q8;->b:Lio/appmetrica/analytics/impl/V8;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/V8;->c:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/V8;->b:Lio/appmetrica/analytics/impl/U8;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/V8;->a:Lio/appmetrica/analytics/impl/T8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/T8;->a(Lio/appmetrica/analytics/impl/S8;)Lio/appmetrica/analytics/impl/A9;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->toByteArray(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)[B

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->insert(Ljava/lang/String;[B)V

    :cond_2
    return-void
.end method
