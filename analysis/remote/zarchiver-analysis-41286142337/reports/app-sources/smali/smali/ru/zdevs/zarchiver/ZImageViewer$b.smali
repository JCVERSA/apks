.class public final Lru/zdevs/zarchiver/ZImageViewer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZImageViewer;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh0/h;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Lru/zdevs/zarchiver/ZImageViewer;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZImageViewer;Lh0/h;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer$b;->d:Lru/zdevs/zarchiver/ZImageViewer;

    iput-object p2, p0, Lru/zdevs/zarchiver/ZImageViewer$b;->a:Lh0/h;

    iput-object p3, p0, Lru/zdevs/zarchiver/ZImageViewer$b;->b:Ljava/lang/String;

    iput p4, p0, Lru/zdevs/zarchiver/ZImageViewer$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg0/i;)Z
    .locals 4

    .line 1
    iget p1, p0, Lru/zdevs/zarchiver/ZImageViewer$b;->c:I

    .line 2
    .line 3
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer$b;->d:Lru/zdevs/zarchiver/ZImageViewer;

    .line 4
    .line 5
    :try_start_0
    new-instance v1, Lh0/h;

    .line 6
    .line 7
    iget-object v2, p0, Lru/zdevs/zarchiver/ZImageViewer$b;->a:Lh0/h;

    .line 8
    .line 9
    iget-object v3, p0, Lru/zdevs/zarchiver/ZImageViewer$b;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v1, v3, v2}, Lh0/h;-><init>(Ljava/lang/String;Lh0/h;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lh0/f;->u(Lh0/h;)Lh0/f;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lh0/f;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 25
    .line 26
    iget-object v1, v1, Lru/zdevs/zarchiver/ZImageViewer$e;->b:Lh0/c;

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lh0/c;->remove(I)Z

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lru/zdevs/zarchiver/ZImageViewer;->a:Lru/zdevs/zarchiver/ui/layout/b;

    .line 32
    .line 33
    iget-object v2, v0, Lru/zdevs/zarchiver/ZImageViewer;->b:Lru/zdevs/zarchiver/ZImageViewer$e;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lf/b;->setAdapter(Lf/a;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lru/zdevs/zarchiver/ZImageViewer;->a:Lru/zdevs/zarchiver/ui/layout/b;

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, p1}, Lf/b;->setCurrentItem(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const p1, 0x7f0c00e7

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lru/zdevs/zarchiver/ZApp;->i(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    :goto_1
    const/4 p1, 0x1

    .line 56
    return p1
.end method
