.class public final Lio/appmetrica/analytics/impl/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Savable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/G;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/G;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/impl/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/impl/G;

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/G;->a:Lio/appmetrica/analytics/impl/Oe;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Oe;->a(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final a(Z)V
    .locals 0

    .line 4
    iget-object p0, p0, Lio/appmetrica/analytics/impl/F;->a:Lio/appmetrica/analytics/impl/G;

    .line 5
    iget-object p0, p0, Lio/appmetrica/analytics/impl/G;->a:Lio/appmetrica/analytics/impl/Oe;

    .line 6
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Oe;->e(Z)V

    return-void
.end method

.method public final bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/F;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/F;->a(Z)V

    return-void
.end method
