.class public final Lru/zdevs/zarchiver/ZTextEditor$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZTextEditor;->b(Lw0/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZTextEditor$p;

.field public final synthetic b:Lru/zdevs/zarchiver/ZTextEditor;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor;Lru/zdevs/zarchiver/ZTextEditor$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$a;->b:Lru/zdevs/zarchiver/ZTextEditor;

    iput-object p2, p0, Lru/zdevs/zarchiver/ZTextEditor$a;->a:Lru/zdevs/zarchiver/ZTextEditor$p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$a;->b:Lru/zdevs/zarchiver/ZTextEditor;

    .line 2
    .line 3
    iget-object v1, p0, Lru/zdevs/zarchiver/ZTextEditor$a;->a:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 4
    .line 5
    iput-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor;->f:Lru/zdevs/zarchiver/ZTextEditor$p;

    .line 6
    .line 7
    iget-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 8
    .line 9
    invoke-virtual {v1}, Lru/zdevs/zarchiver/ui/editor/EditableView;->l()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lru/zdevs/zarchiver/ZTextEditor;->c(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
