.class public final Ld9j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsnj;
.implements Lkjj;


# instance fields
.field public final a:Lh9j;

.field public final synthetic b:Lm9j;


# direct methods
.method public constructor <init>(Lm9j;Lh9j;)V
    .locals 0

    iput-object p1, p0, Ld9j;->b:Lm9j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld9j;->a:Lh9j;

    return-void
.end method


# virtual methods
.method public final G(ILbnj;Lsmj;Lxmj;I)V
    .locals 6

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ld9j;->a(ILbnj;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Ld9j;->b:Lm9j;

    invoke-static {p1}, Lm9j;->d(Lm9j;)Lolg;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzlc;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzlc;-><init>(Ld9j;Landroid/util/Pair;Lsmj;Lxmj;I)V

    invoke-interface {p1, p2}, Lolg;->f(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final L(ILbnj;Lsmj;Lxmj;)V
    .locals 1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ld9j;->a(ILbnj;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Ld9j;->b:Lm9j;

    invoke-static {p2}, Lm9j;->d(Lm9j;)Lolg;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlg;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzlg;-><init>(Ld9j;Landroid/util/Pair;Lsmj;Lxmj;)V

    invoke-interface {p2, v0}, Lolg;->f(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final O(ILbnj;Lxmj;)V
    .locals 1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ld9j;->a(ILbnj;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Ld9j;->b:Lm9j;

    invoke-static {p2}, Lm9j;->d(Lm9j;)Lolg;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlf;

    invoke-direct {v0, p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzlf;-><init>(Ld9j;Landroid/util/Pair;Lxmj;)V

    invoke-interface {p2, v0}, Lolg;->f(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final Q(ILbnj;Lsmj;Lxmj;)V
    .locals 1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ld9j;->a(ILbnj;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Ld9j;->b:Lm9j;

    invoke-static {p2}, Lm9j;->d(Lm9j;)Lolg;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzle;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzle;-><init>(Ld9j;Landroid/util/Pair;Lsmj;Lxmj;)V

    invoke-interface {p2, v0}, Lolg;->f(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final a(ILbnj;)Landroid/util/Pair;
    .locals 6

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    iget-object v0, p0, Ld9j;->a:Lh9j;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lh9j;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbnj;

    iget-wide v2, v2, Lbnj;->d:J

    iget-wide v4, p2, Lbnj;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v1, p2, Lbnj;->a:Ljava/lang/Object;

    iget-object v0, v0, Lh9j;->b:Ljava/lang/Object;

    sget v2, Lv9j;->k:I

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbnj;->a(Ljava/lang/Object;)Lbnj;

    move-result-object p2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_1
    if-nez p2, :cond_2

    return-object p1

    :cond_2
    move-object p1, p2

    :cond_3
    iget-object p0, p0, Ld9j;->a:Lh9j;

    iget p0, p0, Lh9j;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final t(ILbnj;Lsmj;Lxmj;Ljava/io/IOException;Z)V
    .locals 7

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ld9j;->a(ILbnj;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Ld9j;->b:Lm9j;

    invoke-static {p1}, Lm9j;->d(Lm9j;)Lolg;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzld;

    move-object v0, p2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzld;-><init>(Ld9j;Landroid/util/Pair;Lsmj;Lxmj;Ljava/io/IOException;Z)V

    invoke-interface {p1, p2}, Lolg;->f(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
