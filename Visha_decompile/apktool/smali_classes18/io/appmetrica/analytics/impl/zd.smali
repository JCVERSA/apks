.class public abstract Lio/appmetrica/analytics/impl/zd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Bn;
.implements Lio/appmetrica/analytics/impl/m2;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lio/appmetrica/analytics/impl/Pn;

.field public final d:Lio/appmetrica/analytics/impl/U2;

.field public e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lio/appmetrica/analytics/impl/Pn;Lio/appmetrica/analytics/impl/U2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/appmetrica/analytics/impl/zd;->b:I

    iput-object p2, p0, Lio/appmetrica/analytics/impl/zd;->a:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Pn;

    iput-object p4, p0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/impl/U2;

    invoke-static {}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/zd;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Cn;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Cn;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Cn;-><init>()V

    .line 2
    iget v1, p0, Lio/appmetrica/analytics/impl/zd;->b:I

    .line 3
    iput v1, v0, Lio/appmetrica/analytics/impl/Cn;->b:I

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/zd;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Cn;->a:[B

    .line 6
    new-instance p0, Lio/appmetrica/analytics/impl/En;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/En;-><init>()V

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Cn;->d:Lio/appmetrica/analytics/impl/En;

    .line 7
    new-instance p0, Lio/appmetrica/analytics/impl/Dn;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Dn;-><init>()V

    iput-object p0, v0, Lio/appmetrica/analytics/impl/Cn;->c:Lio/appmetrica/analytics/impl/Dn;

    return-object v0
.end method

.method public abstract synthetic a(Lio/appmetrica/analytics/impl/An;)V
    .param p1    # Lio/appmetrica/analytics/impl/An;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final a(Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iput-object p1, p0, Lio/appmetrica/analytics/impl/zd;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/U2;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zd;->d:Lio/appmetrica/analytics/impl/U2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zd;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/impl/Pn;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/Pn;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Pn;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/impl/zd;->b:I

    return p0
.end method

.method public final f()Z
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/zd;->c:Lio/appmetrica/analytics/impl/Pn;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/zd;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/impl/Pn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Nn;

    move-result-object v0

    iget-boolean v1, v0, Lio/appmetrica/analytics/impl/Nn;->a:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/zd;->e:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/appmetrica/analytics/impl/zd;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lio/appmetrica/analytics/impl/zd;->b:I

    sget-object v3, Lio/appmetrica/analytics/impl/ln;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is skipped because "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lio/appmetrica/analytics/impl/Nn;->b:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
