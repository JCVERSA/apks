.class public final Lya/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lya/c$b;,
        Lya/c$c;,
        Lya/c$d;
    }
.end annotation


# instance fields
.field private final a:Lya/c$d;

.field private final b:Lya/b;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lya/b;

    invoke-direct {p0, v0, p1}, Lya/c;-><init>(Lya/b;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lya/b;Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lya/c;->a()Lya/c$d;

    move-result-object v0

    iput-object v0, p0, Lya/c;->a:Lya/c$d;

    .line 4
    iput-object p1, p0, Lya/c;->b:Lya/b;

    .line 5
    iput-object p2, p0, Lya/c;->c:Landroid/view/View;

    return-void
.end method

.method private static a()Lya/c$d;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lya/c$c;

    .line 9
    .line 10
    invoke-direct {v0, v2}, Lya/c$c;-><init>(Lya/c$a;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/16 v1, 0x21

    .line 15
    .line 16
    if-lt v0, v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Lya/c$b;

    .line 19
    .line 20
    invoke-direct {v0, v2}, Lya/c$b;-><init>(Lya/c$a;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    return-object v2
.end method

.method private d(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lya/c;->a:Lya/c$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lya/c;->b:Lya/b;

    .line 6
    .line 7
    iget-object v2, p0, Lya/c;->c:Landroid/view/View;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, p1}, Lya/c$d;->b(Lya/b;Landroid/view/View;Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lya/c;->a:Lya/c$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lya/c;->d(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lya/c;->d(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lya/c;->a:Lya/c$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lya/c;->c:Landroid/view/View;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lya/c$d;->a(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
