.class public final Lru/zdevs/zarchiver/ZTextEditor$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZTextEditor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg0/v;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lru/zdevs/zarchiver/ZTextEditor;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor;Lg0/v;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$m;->c:Lru/zdevs/zarchiver/ZTextEditor;

    iput-object p2, p0, Lru/zdevs/zarchiver/ZTextEditor$m;->a:Lg0/v;

    iput-object p3, p0, Lru/zdevs/zarchiver/ZTextEditor$m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg0/i;)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$m;->a:Lg0/v;

    .line 2
    .line 3
    iget p1, p1, Lg0/v;->j:I

    .line 4
    .line 5
    if-gez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lru/zdevs/zarchiver/ZTextEditor;->k:[Ljava/lang/String;

    .line 10
    .line 11
    aget-object p1, v0, p1

    .line 12
    .line 13
    :goto_0
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$m;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :cond_1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$m;->c:Lru/zdevs/zarchiver/ZTextEditor;

    .line 24
    .line 25
    iget-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor;->f:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lru/zdevs/zarchiver/ZTextEditor;->g(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lru/zdevs/zarchiver/ZTextEditor$q;

    .line 34
    .line 35
    iget-object v4, v0, Lru/zdevs/zarchiver/ZTextEditor;->f:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 36
    .line 37
    iget-object v4, v4, Lru/zdevs/zarchiver/ZTextEditor$p;->d:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v5, v0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 40
    .line 41
    invoke-virtual {v5}, Lru/zdevs/zarchiver/ui/editor/EditableView;->getEditable()Lru/zdevs/zarchiver/ui/editor/b;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v1, v1, Lru/zdevs/zarchiver/ZTextEditor$p;->c:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-direct {v3, v1, v4, p1, v5}, Lru/zdevs/zarchiver/ZTextEditor$q;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lru/zdevs/zarchiver/ui/editor/b;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, v0, Lru/zdevs/zarchiver/ZTextEditor;->g:Lw0/a;

    .line 51
    .line 52
    invoke-virtual {v3, v0, p1}, Lw0/c;->g(Landroid/content/Context;Lw0/a;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return v2
.end method
