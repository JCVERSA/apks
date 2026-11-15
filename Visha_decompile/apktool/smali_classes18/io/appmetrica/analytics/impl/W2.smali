.class public final Lio/appmetrica/analytics/impl/W2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Nm;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Om;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Om;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Om;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/W2;->a:Lio/appmetrica/analytics/impl/Om;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Mm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Mm;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/W2;->a:Lio/appmetrica/analytics/impl/Om;

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/Om;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/appmetrica/analytics/impl/Mm;->a(Ljava/lang/Object;)V

    return-void
.end method
