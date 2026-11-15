.class public final Lio/appmetrica/analytics/impl/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/I1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/I1;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/G1;->a:Lio/appmetrica/analytics/impl/I1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final consume(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/G1;->a:Lio/appmetrica/analytics/impl/I1;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/I1;->a(Ljava/io/File;)V

    return-void
.end method
