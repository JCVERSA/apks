.class public final Lrmj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv9i;


# instance fields
.field public final a:Lv9i;

.field public final b:I

.field public final c:Lqmj;

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>(Lv9i;ILqmj;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ln7g;->d(Z)V

    iput-object p1, p0, Lrmj;->a:Lv9i;

    iput p2, p0, Lrmj;->b:I

    iput-object p3, p0, Lrmj;->c:Lqmj;

    new-array p1, v0, [B

    iput-object p1, p0, Lrmj;->d:[B

    iput p2, p0, Lrmj;->e:I

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 7

    iget v0, p0, Lrmj;->e:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lrmj;->a:Lv9i;

    iget-object v2, p0, Lrmj;->d:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Lk8j;->b([BII)I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_0
    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    new-array v3, v2, [B

    move v5, v2

    :goto_0
    if-lez v5, :cond_3

    invoke-interface {v0, v3, v4, v5}, Lk8j;->b([BII)I

    move-result v6

    if-eq v6, v1, :cond_2

    add-int/2addr v4, v6

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    :goto_2
    if-lez v2, :cond_4

    add-int/lit8 v0, v2, -0x1

    aget-byte v4, v3, v0

    if-nez v4, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    if-lez v2, :cond_5

    iget-object v0, p0, Lrmj;->c:Lqmj;

    new-instance v4, Lu4h;

    invoke-direct {v4, v3, v2}, Lu4h;-><init>([BI)V

    invoke-interface {v0, v4}, Lqmj;->a(Lu4h;)V

    :cond_5
    :goto_3
    iget v0, p0, Lrmj;->b:I

    iput v0, p0, Lrmj;->e:I

    :cond_6
    iget-object v2, p0, Lrmj;->a:Lv9i;

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v2, p1, p2, p3}, Lk8j;->b([BII)I

    move-result p1

    if-eq p1, v1, :cond_7

    iget p2, p0, Lrmj;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lrmj;->e:I

    :cond_7
    return p1
.end method

.method public final c(Lixi;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lrmj;->a:Lv9i;

    invoke-interface {p0, p1}, Lv9i;->c(Lixi;)V

    return-void
.end method

.method public final j(Lcfi;)J
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lrmj;->a:Lv9i;

    invoke-interface {p0}, Lv9i;->zzc()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final zzd()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final zze()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lrmj;->a:Lv9i;

    invoke-interface {p0}, Lv9i;->zze()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
