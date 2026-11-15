.class public Lio/appmetrica/analytics/impl/eg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ua;

.field public final b:Lio/appmetrica/analytics/impl/Zf;

.field public final c:Lio/appmetrica/analytics/impl/Sa;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ua;Lio/appmetrica/analytics/impl/Zf;Lio/appmetrica/analytics/impl/Sa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/eg;->a:Lio/appmetrica/analytics/impl/Ua;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/eg;->b:Lio/appmetrica/analytics/impl/Zf;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/eg;->c:Lio/appmetrica/analytics/impl/Sa;

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Ua;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/eg;->a:Lio/appmetrica/analytics/impl/Ua;

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/cg;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/cg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/eg;->a:Lio/appmetrica/analytics/impl/Ua;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Ua;->a(Lio/appmetrica/analytics/impl/cg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/eg;->b:Lio/appmetrica/analytics/impl/Zf;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Zf;->a(Lio/appmetrica/analytics/impl/cg;)V

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/eg;->c:Lio/appmetrica/analytics/impl/Sa;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Sa;->a()V

    :cond_0
    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/Zf;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/eg;->b:Lio/appmetrica/analytics/impl/Zf;

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/Sa;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/eg;->c:Lio/appmetrica/analytics/impl/Sa;

    return-object p0
.end method
