.class public final Lru/zdevs/zarchiver/ZArchiver$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZArchiver;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/b;

.field public final synthetic b:Lru/zdevs/zarchiver/ZArchiver;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZArchiver;Lru/zdevs/zarchiver/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lru/zdevs/zarchiver/ZArchiver$f;->b:Lru/zdevs/zarchiver/ZArchiver;

    iput-object p2, p0, Lru/zdevs/zarchiver/ZArchiver$f;->a:Lru/zdevs/zarchiver/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZArchiver$f;->a:Lru/zdevs/zarchiver/b;

    .line 2
    .line 3
    iput p1, v0, Lru/zdevs/zarchiver/b;->g:I

    .line 4
    .line 5
    iput-boolean p3, v0, Lru/zdevs/zarchiver/b;->i:Z

    .line 6
    .line 7
    iput p2, v0, Lru/zdevs/zarchiver/b;->h:I

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iget-object p2, p0, Lru/zdevs/zarchiver/ZArchiver$f;->b:Lru/zdevs/zarchiver/ZArchiver;

    .line 11
    .line 12
    iget p3, v0, Lru/zdevs/zarchiver/b;->b:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0, v0, p1}, Lru/zdevs/zarchiver/ZArchiver;->T(IZZZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
