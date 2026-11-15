.class public final Lio/appmetrica/analytics/impl/K6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/J6;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Oe;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Oe;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/Oe;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/K6;->a:Lio/appmetrica/analytics/impl/Oe;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/K6;->a:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Oe;->d()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final a(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/K6;->a:Lio/appmetrica/analytics/impl/Oe;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Oe;->c(Z)Lio/appmetrica/analytics/impl/Oe;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Me;->b()V

    return-void
.end method
