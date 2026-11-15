.class public final Lhx3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhx3;->b(Li53;)Lgx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt43;

.field public final synthetic b:Li53;


# direct methods
.method public constructor <init>(Lt43;Li53;)V
    .locals 0

    iput-object p1, p0, Lhx3$a;->a:Lt43;

    iput-object p2, p0, Lhx3$a;->b:Li53;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqd8;)Lqd8;
    .locals 10

    instance-of v0, p1, Lgx3;

    if-eqz v0, :cond_0

    check-cast p1, Lgx3;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lhx3$a;->a:Lt43;

    invoke-static {v0}, Lhx3;->a(Lt43;)I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :cond_1
    const/4 v1, 0x5

    :goto_1
    const/4 v2, 0x1

    shl-int v3, v2, v1

    invoke-virtual {p0, p1, v3}, Lhx3$a;->b(Lgx3;I)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object p1

    :cond_2
    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    add-int/lit8 p1, v1, 0x1

    new-array p1, p1, [Li53;

    iget-object v4, p0, Lhx3$a;->b:Li53;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_3

    add-int/lit8 v6, v4, -0x1

    aget-object v6, p1, v6

    invoke-virtual {v6, v0}, Li53;->D(I)Li53;

    move-result-object v6

    aput-object v6, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    aget-object v0, p1, v5

    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Li53;->C(Li53;)Li53;

    move-result-object v0

    aput-object v0, p1, v1

    iget-object v0, p0, Lhx3$a;->a:Lt43;

    invoke-virtual {v0, p1}, Lt43;->w([Li53;)V

    new-array v0, v3, [Li53;

    aget-object v4, p1, v5

    aput-object v4, v0, v5

    add-int/lit8 v4, v1, -0x1

    :goto_3
    if-ltz v4, :cond_5

    aget-object v6, p1, v4

    shl-int v7, v2, v4

    move v8, v7

    :goto_4
    if-ge v8, v3, :cond_4

    sub-int v9, v8, v7

    aget-object v9, v0, v9

    invoke-virtual {v9, v6}, Li53;->a(Li53;)Li53;

    move-result-object v9

    aput-object v9, v0, v8

    shl-int/lit8 v9, v7, 0x1

    add-int/2addr v8, v9

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lhx3$a;->a:Lt43;

    invoke-virtual {v2, v0}, Lt43;->w([Li53;)V

    new-instance v2, Lgx3;

    invoke-direct {v2}, Lgx3;-><init>()V

    iget-object p0, p0, Lhx3$a;->a:Lt43;

    invoke-virtual {p0, v0, v5, v3}, Lt43;->f([Li53;II)Lb53;

    move-result-object p0

    invoke-virtual {v2, p0}, Lgx3;->d(Lb53;)V

    aget-object p0, p1, v1

    invoke-virtual {v2, p0}, Lgx3;->e(Li53;)V

    invoke-virtual {v2, v1}, Lgx3;->f(I)V

    return-object v2
.end method

.method public final b(Lgx3;I)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lgx3;->a()Lb53;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lhx3$a;->c(Lb53;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c(Lb53;I)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lb53;->getSize()I

    move-result p0

    if-lt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
