.class public abstract Lio/appmetrica/analytics/impl/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lio/appmetrica/analytics/impl/ee;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lio/appmetrica/analytics/impl/ee;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lio/appmetrica/analytics/impl/ee;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p0, p0, Lio/appmetrica/analytics/impl/ee;->a:I

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lio/appmetrica/analytics/impl/ee;->b:I

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p0, p0, Lio/appmetrica/analytics/impl/ee;->c:I

    :goto_0
    return p0

    .line 4
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final a(I)Ljava/lang/Boolean;
    .locals 1

    .line 5
    iget v0, p0, Lio/appmetrica/analytics/impl/ee;->b:I

    if-ne p1, v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 6
    :cond_0
    iget p0, p0, Lio/appmetrica/analytics/impl/ee;->c:I

    if-ne p1, p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
