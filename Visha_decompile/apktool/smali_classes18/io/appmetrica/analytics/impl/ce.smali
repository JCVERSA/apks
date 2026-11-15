.class public final Lio/appmetrica/analytics/impl/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ua;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Ta;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Ta;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/Ta;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/ce;->a:Lio/appmetrica/analytics/impl/Ta;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/cg;)Z
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/cg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/ce;->a:Lio/appmetrica/analytics/impl/Ta;

    check-cast p0, Lio/appmetrica/analytics/impl/vc;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/vc;->C()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
