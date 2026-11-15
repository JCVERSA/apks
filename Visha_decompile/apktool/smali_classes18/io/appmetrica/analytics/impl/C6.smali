.class public final Lio/appmetrica/analytics/impl/C6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/tg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/tg;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/tg;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/C6;-><init>(Lio/appmetrica/analytics/impl/tg;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/tg;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/C6;->a:Lio/appmetrica/analytics/impl/tg;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/i6;)Lio/appmetrica/analytics/impl/B6;
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/i6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/B6;)Lio/appmetrica/analytics/impl/i6;
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/B6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/C6;->a:Lio/appmetrica/analytics/impl/tg;

    iget-object v0, p1, Lio/appmetrica/analytics/impl/B6;->a:Lio/appmetrica/analytics/impl/sg;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/tg;->a(Lio/appmetrica/analytics/impl/sg;)Lio/appmetrica/analytics/impl/i6;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lio/appmetrica/analytics/impl/i6;->g:I

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/h6;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/h6;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/i6;->h:Lio/appmetrica/analytics/impl/h6;

    .line 4
    iget-object p1, p1, Lio/appmetrica/analytics/impl/B6;->b:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->correctIllFormedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/appmetrica/analytics/impl/h6;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p1, Lio/appmetrica/analytics/impl/B6;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C6;->a(Lio/appmetrica/analytics/impl/B6;)Lio/appmetrica/analytics/impl/i6;

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

    check-cast p1, Lio/appmetrica/analytics/impl/i6;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
