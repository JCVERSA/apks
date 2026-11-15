.class final Landroidx/core/view/ContentInfoCompat$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/core/view/ContentInfoCompat$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field a:Landroid/content/ClipData;

.field b:I

.field c:I

.field d:Landroid/net/Uri;

.field e:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$d;->a:Landroid/content/ClipData;

    .line 3
    iput p2, p0, Landroidx/core/view/ContentInfoCompat$d;->b:I

    return-void
.end method

.method constructor <init>(Landroidx/core/view/ContentInfoCompat;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getClip()Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$d;->a:Landroid/content/ClipData;

    .line 6
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getSource()I

    move-result v0

    iput v0, p0, Landroidx/core/view/ContentInfoCompat$d;->b:I

    .line 7
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getFlags()I

    move-result v0

    iput v0, p0, Landroidx/core/view/ContentInfoCompat$d;->c:I

    .line 8
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$d;->d:Landroid/net/Uri;

    .line 9
    invoke-virtual {p1}, Landroidx/core/view/ContentInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$d;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/ContentInfoCompat$d;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$d;->d:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method

.method public build()Landroidx/core/view/ContentInfoCompat;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/ContentInfoCompat;

    .line 2
    .line 3
    new-instance v1, Landroidx/core/view/ContentInfoCompat$g;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/core/view/ContentInfoCompat$g;-><init>(Landroidx/core/view/ContentInfoCompat$d;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/core/view/ContentInfoCompat;-><init>(Landroidx/core/view/ContentInfoCompat$f;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public c(Landroid/content/ClipData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$d;->a:Landroid/content/ClipData;

    .line 2
    .line 3
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/ContentInfoCompat$d;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$d;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method
