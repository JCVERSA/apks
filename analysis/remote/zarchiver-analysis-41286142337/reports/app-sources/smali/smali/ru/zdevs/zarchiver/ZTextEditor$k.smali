.class public final Lru/zdevs/zarchiver/ZTextEditor$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZTextEditor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lru/zdevs/zarchiver/ZTextEditor;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$k;->b:Lru/zdevs/zarchiver/ZTextEditor;

    iput-boolean p2, p0, Lru/zdevs/zarchiver/ZTextEditor$k;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$k;->b:Lru/zdevs/zarchiver/ZTextEditor;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 4
    .line 5
    iget-boolean v2, p0, Lru/zdevs/zarchiver/ZTextEditor$k;->a:Z

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->setWordWrap(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lru/zdevs/zarchiver/ZTextEditor;->c(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
