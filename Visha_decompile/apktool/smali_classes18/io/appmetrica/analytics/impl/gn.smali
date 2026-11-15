.class public Lio/appmetrica/analytics/impl/gn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/wi;


# instance fields
.field public final a:I

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/appmetrica/analytics/impl/gn;->c:I

    iput p1, p0, Lio/appmetrica/analytics/impl/gn;->a:I

    iput p2, p0, Lio/appmetrica/analytics/impl/gn;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lio/appmetrica/analytics/impl/gn;->b:I

    return p0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lio/appmetrica/analytics/impl/gn;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/appmetrica/analytics/impl/gn;->c:I

    iget p0, p0, Lio/appmetrica/analytics/impl/gn;->a:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lio/appmetrica/analytics/impl/gn;->c:I

    return-void
.end method
