.class public final Lru/zdevs/zarchiver/ZTextEditor$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZTextEditor$h;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZTextEditor$h;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor$h;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$h$a;->a:Lru/zdevs/zarchiver/ZTextEditor$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$h$a;->a:Lru/zdevs/zarchiver/ZTextEditor$h;

    iget-object v0, v0, Lru/zdevs/zarchiver/ZTextEditor$h;->a:Lru/zdevs/zarchiver/ZTextEditor;

    invoke-virtual {v0, p1}, Lru/zdevs/zarchiver/ZTextEditor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
