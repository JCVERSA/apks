.class public final Lru/zdevs/zarchiver/ZImageViewer$e;
.super Lf/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ZImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lh0/c;

.field public c:I

.field public final synthetic d:Lru/zdevs/zarchiver/ZImageViewer;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZImageViewer;Landroid/content/Context;Lh0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer$e;->d:Lru/zdevs/zarchiver/ZImageViewer;

    .line 2
    .line 3
    invoke-direct {p0}, Lf/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lru/zdevs/zarchiver/ZImageViewer$e;->a:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lh0/c;

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lru/zdevs/zarchiver/ZImageViewer$e;->c:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    instance-of v1, v0, Lg/d;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lg/d;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lg/d;->t(Z)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lg/d;->i0:Landroid/graphics/Paint;

    .line 18
    .line 19
    iput-object v1, v0, Lg/d;->j0:Landroid/graphics/Paint;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lh0/c;

    invoke-interface {v0}, Lh0/c;->getCount()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ZImageViewer$e;->c:I

    .line 2
    .line 3
    if-ltz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lh0/c;

    .line 6
    .line 7
    invoke-interface {v1}, Lh0/c;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lt v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lru/zdevs/zarchiver/ZImageViewer$e;->c:I

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lh0/c;->getName(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    :goto_0
    const-string v0, ""

    .line 22
    .line 23
    return-object v0
.end method

.method public final e(I)Lg/a;
    .locals 8

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lh0/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lh0/c;->d(I)Lg/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, p1}, Lh0/c;->getName(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, ".gif"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, ".ico"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_3

    .line 37
    .line 38
    iget-wide v4, v1, Lg/a;->e:J

    .line 39
    .line 40
    const-wide/16 v6, 0x0

    .line 41
    .line 42
    cmp-long p1, v4, v6

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const-wide/16 v6, 0x5000

    .line 47
    .line 48
    cmp-long p1, v4, v6

    .line 49
    .line 50
    if-lez p1, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v2, 0x0

    .line 54
    :cond_2
    :goto_1
    move p1, v2

    .line 55
    :cond_3
    iput-boolean p1, v1, Lg/a;->f:Z

    .line 56
    .line 57
    return-object v1
.end method
