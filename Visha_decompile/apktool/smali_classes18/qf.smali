.class public Lqf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqf$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:[Ljava/lang/Object;

.field public c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lqf;->a:I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lqf;->b:[Ljava/lang/Object;

    iput-object p1, p0, Lqf;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lpd7;)Z
    .locals 3

    iget-object v0, p0, Lqf;->b:[Ljava/lang/Object;

    iget p0, p0, Lqf;->a:I

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v2, p1}, Lio/reactivex/internal/util/NotificationLite;->acceptFull(Ljava/lang/Object;Lpd7;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    aget-object v0, v0, p0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return v1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lqf;->a:I

    iget v1, p0, Lqf;->d:I

    if-ne v1, v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lqf;->c:[Ljava/lang/Object;

    aput-object v1, v2, v0

    iput-object v1, p0, Lqf;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lqf;->c:[Ljava/lang/Object;

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lqf;->d:I

    return-void
.end method

.method public c(Lqf$a;)V
    .locals 3

    iget-object v0, p0, Lqf;->b:[Ljava/lang/Object;

    iget p0, p0, Lqf;->a:I

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1, v2}, Lqf$a;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    aget-object v0, v0, p0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lqf;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    return-void
.end method
