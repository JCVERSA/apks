.class public final Lru/zdevs/zarchiver/ui/editor/a$a;
.super Lru/zdevs/zarchiver/ui/editor/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/ui/editor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/icu/text/BreakIterator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lru/zdevs/zarchiver/ui/editor/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/icu/text/BreakIterator;->getWordInstance()Landroid/icu/text/BreakIterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lru/zdevs/zarchiver/ui/editor/a$a;->b:Landroid/icu/text/BreakIterator;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/a$a;->b:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/a$a;->b:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v0

    return v0
.end method

.method public final c(Lru/zdevs/zarchiver/ui/editor/b$b;)V
    .locals 1

    iget-object v0, p0, Lru/zdevs/zarchiver/ui/editor/a$a;->b:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    return-void
.end method
