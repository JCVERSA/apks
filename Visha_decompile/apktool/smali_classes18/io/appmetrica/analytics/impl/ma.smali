.class public final Lio/appmetrica/analytics/impl/ma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ee;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/ul;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ul;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/ma;-><init>(Lio/appmetrica/analytics/impl/ul;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ul;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ma;->a:Lio/appmetrica/analytics/impl/ee;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ul;)Lio/appmetrica/analytics/impl/C4;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/Ul;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    new-instance v0, Lio/appmetrica/analytics/impl/A4;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/A4;-><init>()V

    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ul;->d:Z

    .line 9
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/A4;->d:Z

    .line 10
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ul;->c:Z

    .line 11
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/A4;->c:Z

    .line 12
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ul;->b:Z

    .line 13
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/A4;->b:Z

    .line 14
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ul;->a:Z

    .line 15
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/A4;->a:Z

    .line 16
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/Ul;->e:Z

    .line 17
    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/A4;->e:Z

    .line 18
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ma;->a:Lio/appmetrica/analytics/impl/ee;

    iget p1, p1, Lio/appmetrica/analytics/impl/Ul;->f:I

    .line 19
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ee;->a(I)Ljava/lang/Boolean;

    move-result-object p0

    .line 20
    iput-object p0, v0, Lio/appmetrica/analytics/impl/A4;->f:Ljava/lang/Boolean;

    .line 21
    new-instance p0, Lio/appmetrica/analytics/impl/C4;

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/C4;-><init>(Lio/appmetrica/analytics/impl/A4;)V

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Ul;
    .locals 2
    .param p1    # Lio/appmetrica/analytics/impl/C4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Ul;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ul;-><init>()V

    .line 2
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/C4;->b:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Ul;->b:Z

    .line 3
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/C4;->a:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Ul;->a:Z

    .line 4
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/C4;->c:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Ul;->c:Z

    .line 5
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/C4;->d:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Ul;->d:Z

    .line 6
    iget-boolean v1, p1, Lio/appmetrica/analytics/impl/C4;->e:Z

    iput-boolean v1, v0, Lio/appmetrica/analytics/impl/Ul;->e:Z

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/ma;->a:Lio/appmetrica/analytics/impl/ee;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/C4;->f:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ee;->a(Ljava/lang/Boolean;)I

    move-result p0

    iput p0, v0, Lio/appmetrica/analytics/impl/Ul;->f:I

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

    check-cast p1, Lio/appmetrica/analytics/impl/C4;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ma;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Ul;

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

    check-cast p1, Lio/appmetrica/analytics/impl/Ul;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ma;->a(Lio/appmetrica/analytics/impl/Ul;)Lio/appmetrica/analytics/impl/C4;

    move-result-object p0

    return-object p0
.end method
