.class public final Lio/appmetrica/analytics/impl/n4;
.super Lio/appmetrica/analytics/impl/Pc;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ke;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Ke;

    .line 2
    invoke-static {p1}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/g7;->b()Lio/appmetrica/analytics/impl/Oa;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/Ke;-><init>(Lio/appmetrica/analytics/impl/Oa;)V

    .line 3
    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/n4;-><init>(Lio/appmetrica/analytics/impl/Ke;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Ke;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Pc;-><init>()V

    .line 5
    iput-object p1, p0, Lio/appmetrica/analytics/impl/n4;->a:Lio/appmetrica/analytics/impl/Ke;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n4;->a:Lio/appmetrica/analytics/impl/Ke;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Ke;->c(J)Lio/appmetrica/analytics/impl/Ke;

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/n4;->a:Lio/appmetrica/analytics/impl/Ke;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/Ke;->a(J)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final c()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lio/appmetrica/analytics/impl/Oc;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method
