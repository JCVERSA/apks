.class public final Lio/appmetrica/analytics/impl/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/n2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/An;Lio/appmetrica/analytics/impl/Cn;)Lio/appmetrica/analytics/impl/Cn;
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/An;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/impl/Cn;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p1, Lio/appmetrica/analytics/impl/An;->a:Landroid/util/SparseArray;

    iget p1, p2, Lio/appmetrica/analytics/impl/Cn;->b:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    new-instance p1, Ljava/lang/String;

    iget-object v0, p2, Lio/appmetrica/analytics/impl/Cn;->a:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
