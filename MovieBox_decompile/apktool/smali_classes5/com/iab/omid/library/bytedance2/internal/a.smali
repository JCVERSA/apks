.class public Lcom/iab/omid/library/bytedance2/internal/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/iab/omid/library/bytedance2/internal/d$a;


# static fields
.field private static f:Lcom/iab/omid/library/bytedance2/internal/a;


# instance fields
.field protected a:Lcom/iab/omid/library/bytedance2/utils/f;

.field private b:Ljava/util/Date;

.field private c:Z

.field private d:Lcom/iab/omid/library/bytedance2/internal/d;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/iab/omid/library/bytedance2/internal/a;

    .line 2
    .line 3
    new-instance v1, Lcom/iab/omid/library/bytedance2/internal/d;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/iab/omid/library/bytedance2/internal/d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/iab/omid/library/bytedance2/internal/a;-><init>(Lcom/iab/omid/library/bytedance2/internal/d;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/iab/omid/library/bytedance2/internal/a;->f:Lcom/iab/omid/library/bytedance2/internal/a;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>(Lcom/iab/omid/library/bytedance2/internal/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/iab/omid/library/bytedance2/utils/f;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/iab/omid/library/bytedance2/utils/f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/iab/omid/library/bytedance2/internal/a;->a:Lcom/iab/omid/library/bytedance2/utils/f;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/iab/omid/library/bytedance2/internal/a;->d:Lcom/iab/omid/library/bytedance2/internal/d;

    .line 12
    .line 13
    return-void
.end method

.method public static a()Lcom/iab/omid/library/bytedance2/internal/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/iab/omid/library/bytedance2/internal/a;->f:Lcom/iab/omid/library/bytedance2/internal/a;

    return-object v0
.end method

.method private c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/iab/omid/library/bytedance2/internal/a;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/internal/a;->b:Ljava/util/Date;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/iab/omid/library/bytedance2/internal/c;->c()Lcom/iab/omid/library/bytedance2/internal/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/internal/c;->a()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/iab/omid/library/bytedance2/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/bytedance2/publisher/AdSessionStatePublisher;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p0}, Lcom/iab/omid/library/bytedance2/internal/a;->b()Ljava/util/Date;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/iab/omid/library/bytedance2/publisher/AdSessionStatePublisher;->a(Ljava/util/Date;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-boolean v0, p0, Lcom/iab/omid/library/bytedance2/internal/a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/internal/a;->d:Lcom/iab/omid/library/bytedance2/internal/d;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/bytedance2/internal/d;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/iab/omid/library/bytedance2/internal/a;->d:Lcom/iab/omid/library/bytedance2/internal/d;

    invoke-virtual {p1, p0}, Lcom/iab/omid/library/bytedance2/internal/d;->a(Lcom/iab/omid/library/bytedance2/internal/d$a;)V

    iget-object p1, p0, Lcom/iab/omid/library/bytedance2/internal/a;->d:Lcom/iab/omid/library/bytedance2/internal/d;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/internal/d;->e()V

    iget-object p1, p0, Lcom/iab/omid/library/bytedance2/internal/a;->d:Lcom/iab/omid/library/bytedance2/internal/d;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/internal/d;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/iab/omid/library/bytedance2/internal/a;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/iab/omid/library/bytedance2/internal/a;->c:Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/iab/omid/library/bytedance2/internal/a;->e:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/iab/omid/library/bytedance2/internal/a;->d()V

    :cond_0
    iput-boolean p1, p0, Lcom/iab/omid/library/bytedance2/internal/a;->e:Z

    return-void
.end method

.method public b()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/internal/a;->b:Ljava/util/Date;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/Date;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/internal/a;->a:Lcom/iab/omid/library/bytedance2/utils/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/utils/f;->a()Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/iab/omid/library/bytedance2/internal/a;->b:Ljava/util/Date;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    iput-object v0, p0, Lcom/iab/omid/library/bytedance2/internal/a;->b:Ljava/util/Date;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/iab/omid/library/bytedance2/internal/a;->c()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
