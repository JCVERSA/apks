.class public final Lio/appmetrica/analytics/impl/Em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/in;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/in;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/in;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/in;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/in;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Em;->a:Lio/appmetrica/analytics/impl/in;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Em;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Em;->a:Lio/appmetrica/analytics/impl/in;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/in;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Em;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object p1
.end method
