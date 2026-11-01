.class public final Lru/zdevs/zarchiver/ZTextEditor$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZTextEditor$n;->a(Lg0/i;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lru/zdevs/zarchiver/ZTextEditor$n;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZTextEditor$n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ZTextEditor$n$a;->b:Lru/zdevs/zarchiver/ZTextEditor$n;

    iput p2, p0, Lru/zdevs/zarchiver/ZTextEditor$n$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZTextEditor$n$a;->b:Lru/zdevs/zarchiver/ZTextEditor$n;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZTextEditor$n;->b:Lru/zdevs/zarchiver/ZTextEditor;

    .line 4
    .line 5
    iget-object v1, v1, Lru/zdevs/zarchiver/ZTextEditor;->a:Lru/zdevs/zarchiver/ui/editor/EditableView;

    .line 6
    .line 7
    iget v2, p0, Lru/zdevs/zarchiver/ZTextEditor$n$a;->a:I

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lru/zdevs/zarchiver/ui/editor/EditableView;->setSyntax(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lru/zdevs/zarchiver/ZTextEditor$n;->b:Lru/zdevs/zarchiver/ZTextEditor;

    .line 13
    .line 14
    invoke-static {v0}, Lru/zdevs/zarchiver/ZTextEditor;->c(Lru/zdevs/zarchiver/ZTextEditor;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
