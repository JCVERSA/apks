.class public final Lio/appmetrica/analytics/impl/on;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/cn;

.field public final b:Lio/appmetrica/analytics/impl/T;

.field public final c:Lio/appmetrica/analytics/impl/r6;

.field public final d:Lio/appmetrica/analytics/impl/dl;

.field public final e:Lio/appmetrica/analytics/impl/we;

.field public final f:Lio/appmetrica/analytics/impl/xe;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    new-instance v1, Lio/appmetrica/analytics/impl/cn;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/cn;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/T;

    new-instance v0, Lio/appmetrica/analytics/impl/Um;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Um;-><init>()V

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/impl/T;-><init>(Lio/appmetrica/analytics/impl/Um;)V

    new-instance v3, Lio/appmetrica/analytics/impl/r6;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/r6;-><init>()V

    new-instance v4, Lio/appmetrica/analytics/impl/dl;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/dl;-><init>()V

    new-instance v5, Lio/appmetrica/analytics/impl/we;

    invoke-direct {v5}, Lio/appmetrica/analytics/impl/we;-><init>()V

    new-instance v6, Lio/appmetrica/analytics/impl/xe;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/xe;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/appmetrica/analytics/impl/on;-><init>(Lio/appmetrica/analytics/impl/cn;Lio/appmetrica/analytics/impl/T;Lio/appmetrica/analytics/impl/r6;Lio/appmetrica/analytics/impl/dl;Lio/appmetrica/analytics/impl/we;Lio/appmetrica/analytics/impl/xe;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/cn;Lio/appmetrica/analytics/impl/T;Lio/appmetrica/analytics/impl/r6;Lio/appmetrica/analytics/impl/dl;Lio/appmetrica/analytics/impl/we;Lio/appmetrica/analytics/impl/xe;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/on;->b:Lio/appmetrica/analytics/impl/T;

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/on;->a:Lio/appmetrica/analytics/impl/cn;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/on;->c:Lio/appmetrica/analytics/impl/r6;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/on;->d:Lio/appmetrica/analytics/impl/dl;

    .line 7
    iput-object p5, p0, Lio/appmetrica/analytics/impl/on;->e:Lio/appmetrica/analytics/impl/we;

    .line 8
    iput-object p6, p0, Lio/appmetrica/analytics/impl/on;->f:Lio/appmetrica/analytics/impl/xe;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/nn;)Lio/appmetrica/analytics/impl/g6;
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/nn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/g6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/g6;-><init>()V

    .line 2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/nn;->a:Lio/appmetrica/analytics/impl/dn;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lio/appmetrica/analytics/impl/on;->a:Lio/appmetrica/analytics/impl/cn;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/cn;->a(Lio/appmetrica/analytics/impl/dn;)Lio/appmetrica/analytics/impl/m6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/g6;->a:Lio/appmetrica/analytics/impl/m6;

    .line 4
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/nn;->b:Lio/appmetrica/analytics/impl/S;

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/on;->b:Lio/appmetrica/analytics/impl/T;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/T;->a(Lio/appmetrica/analytics/impl/S;)Lio/appmetrica/analytics/impl/c6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/g6;->b:Lio/appmetrica/analytics/impl/c6;

    .line 6
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/nn;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Lio/appmetrica/analytics/impl/on;->d:Lio/appmetrica/analytics/impl/dl;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/dl;->a(Ljava/util/List;)[Lio/appmetrica/analytics/impl/k6;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/g6;->e:[Lio/appmetrica/analytics/impl/k6;

    .line 8
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/nn;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 9
    iput-object v1, v0, Lio/appmetrica/analytics/impl/g6;->c:Ljava/lang/String;

    .line 10
    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/on;->c:Lio/appmetrica/analytics/impl/r6;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/nn;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/ee;->a(Ljava/lang/Boolean;)I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/g6;->d:I

    .line 11
    iget-object v1, p1, Lio/appmetrica/analytics/impl/nn;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/impl/on;->e:Lio/appmetrica/analytics/impl/we;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/nn;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/we;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/g6;->h:[B

    .line 13
    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/nn;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 14
    iget-object v1, p1, Lio/appmetrica/analytics/impl/nn;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/g6;->i:[B

    .line 15
    :cond_5
    iget-object v1, p1, Lio/appmetrica/analytics/impl/nn;->f:Ljava/util/Map;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/In;->a(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 16
    iget-object p0, p0, Lio/appmetrica/analytics/impl/on;->f:Lio/appmetrica/analytics/impl/xe;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/nn;->f:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/xe;->a(Ljava/util/Map;)[Lio/appmetrica/analytics/impl/e6;

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/g6;->j:[Lio/appmetrica/analytics/impl/e6;

    :cond_6
    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/g6;)Lio/appmetrica/analytics/impl/nn;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/g6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/nn;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/on;->a(Lio/appmetrica/analytics/impl/nn;)Lio/appmetrica/analytics/impl/g6;

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

    check-cast p1, Lio/appmetrica/analytics/impl/g6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
