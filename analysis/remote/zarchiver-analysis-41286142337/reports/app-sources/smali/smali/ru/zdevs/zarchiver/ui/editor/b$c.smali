.class public final Lru/zdevs/zarchiver/ui/editor/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:[C

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->a:[C

    .line 5
    .line 6
    iput p2, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->b:I

    .line 7
    .line 8
    iput p3, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->c:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lru/zdevs/zarchiver/ui/editor/b;->a(II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->b:I

    .line 7
    .line 8
    add-int/2addr v0, p1

    .line 9
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->a:[C

    .line 10
    .line 11
    aget-char p1, p1, v0

    .line 12
    .line 13
    return p1
.end method

.method public final length()I
    .locals 1

    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->c:I

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget v0, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->c:I

    .line 2
    .line 3
    const-string v1, "subSequence"

    .line 4
    .line 5
    invoke-static {p1, p2, v0, v1}, Lru/zdevs/zarchiver/ui/editor/b;->b(IIILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lru/zdevs/zarchiver/ui/editor/b$c;

    .line 9
    .line 10
    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->b:I

    .line 11
    .line 12
    add-int/2addr v1, p1

    .line 13
    sub-int/2addr p2, p1

    .line 14
    iget-object p1, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->a:[C

    .line 15
    .line 16
    invoke-direct {v0, p1, v1, p2}, Lru/zdevs/zarchiver/ui/editor/b$c;-><init>([CII)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->b:I

    iget v2, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->c:I

    iget-object v3, p0, Lru/zdevs/zarchiver/ui/editor/b$c;->a:[C

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
