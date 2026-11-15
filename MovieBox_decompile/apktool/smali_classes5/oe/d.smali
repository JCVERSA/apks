.class public Loe/d;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "Application Context cannot be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lre/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Loe/d;->c(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Loe/d;->d()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Loe/d;->b(Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/i;->d()Lcom/iab/omid/library/mmadbridge/internal/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/i;->b(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/b;->k()Lcom/iab/omid/library/mmadbridge/internal/b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/d;->a(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Lre/a;->b(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lre/c;->d(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lre/e;->c(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/g;->c()Lcom/iab/omid/library/mmadbridge/internal/g;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/g;->b(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/a;->a()Lcom/iab/omid/library/mmadbridge/internal/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/a;->b(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/j;->f()Lcom/iab/omid/library/mmadbridge/internal/j;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/j;->b(Landroid/content/Context;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Loe/d;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Loe/d;->a:Z

    .line 2
    .line 3
    return v0
.end method
