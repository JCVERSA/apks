.class public final Lio/appmetrica/analytics/impl/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/T;

.field public final b:Lio/appmetrica/analytics/impl/r6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/T;

    new-instance v1, Lio/appmetrica/analytics/impl/Um;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/Um;-><init>()V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/T;-><init>(Lio/appmetrica/analytics/impl/Um;)V

    new-instance v1, Lio/appmetrica/analytics/impl/r6;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/r6;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/X;-><init>(Lio/appmetrica/analytics/impl/T;Lio/appmetrica/analytics/impl/r6;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/T;Lio/appmetrica/analytics/impl/r6;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/X;->a:Lio/appmetrica/analytics/impl/T;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/X;->b:Lio/appmetrica/analytics/impl/r6;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/d6;)Lio/appmetrica/analytics/impl/W;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/d6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/W;)Lio/appmetrica/analytics/impl/d6;
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/W;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/d6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/d6;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/X;->a:Lio/appmetrica/analytics/impl/T;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/W;->a:Lio/appmetrica/analytics/impl/S;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/T;->a(Lio/appmetrica/analytics/impl/S;)Lio/appmetrica/analytics/impl/c6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/d6;->a:Lio/appmetrica/analytics/impl/c6;

    .line 3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/W;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iput-object v1, v0, Lio/appmetrica/analytics/impl/d6;->b:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/X;->b:Lio/appmetrica/analytics/impl/r6;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/W;->c:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ee;->a(Ljava/lang/Boolean;)I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/d6;->c:I

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

    check-cast p1, Lio/appmetrica/analytics/impl/W;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/X;->a(Lio/appmetrica/analytics/impl/W;)Lio/appmetrica/analytics/impl/d6;

    move-result-object p0

    return-object p0
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/d6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
