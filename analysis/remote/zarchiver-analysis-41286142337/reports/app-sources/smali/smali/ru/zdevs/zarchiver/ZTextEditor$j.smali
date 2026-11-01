.class public final Lru/zdevs/zarchiver/ZTextEditor$j;
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
.field public final synthetic a:Lru/zdevs/zarchiver/ZTextEditor;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$j;->a:Lru/zdevs/zarchiver/ZTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$j;->a:Lru/zdevs/zarchiver/ZTextEditor;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 4
    .line 5
    sget v2, Lt0/b;->o:I

    .line 6
    .line 7
    int-to-float v2, v2

    .line 8
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->setFontSize(F)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lru/zdevs/zarchiver/ZTextEditor;->c(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
