.class public final Lio/appmetrica/analytics/impl/Lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/n2;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/D4;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/D4;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/D4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Lb;->a:Lio/appmetrica/analytics/impl/D4;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/An;Lio/appmetrica/analytics/impl/Cn;)Lio/appmetrica/analytics/impl/Cn;
    .locals 2
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

    iget v0, p1, Lio/appmetrica/analytics/impl/An;->b:I

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Lb;->a:Lio/appmetrica/analytics/impl/D4;

    iget p0, p0, Lio/appmetrica/analytics/impl/D4;->a:I

    if-ne v0, p0, :cond_0

    iget p0, p2, Lio/appmetrica/analytics/impl/Cn;->b:I

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/Cn;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p1, Lio/appmetrica/analytics/impl/An;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/Cn;

    if-eqz p0, :cond_1

    iget-object p0, p1, Lio/appmetrica/analytics/impl/An;->a:Landroid/util/SparseArray;

    iget p1, p2, Lio/appmetrica/analytics/impl/Cn;->b:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    new-instance p1, Ljava/lang/String;

    iget-object v0, p2, Lio/appmetrica/analytics/impl/Cn;->a:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-ge v0, p0, :cond_1

    iget-object p0, p1, Lio/appmetrica/analytics/impl/An;->a:Landroid/util/SparseArray;

    iget v0, p2, Lio/appmetrica/analytics/impl/Cn;->b:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p2, Lio/appmetrica/analytics/impl/Cn;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p0, p1, Lio/appmetrica/analytics/impl/An;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lio/appmetrica/analytics/impl/An;->b:I

    :cond_1
    :goto_0
    return-object p2
.end method
