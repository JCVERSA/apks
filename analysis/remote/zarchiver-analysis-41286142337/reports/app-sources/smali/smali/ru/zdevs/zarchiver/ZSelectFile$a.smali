.class public final Lru/zdevs/zarchiver/ZSelectFile$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZSelectFile;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZSelectFile;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZSelectFile;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZSelectFile$a;->a:Lru/zdevs/zarchiver/ZSelectFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZSelectFile$a;->a:Lru/zdevs/zarchiver/ZSelectFile;

    .line 2
    .line 3
    iget-object v1, v0, Lru/zdevs/zarchiver/ZSelectFile;->f:Lru/zdevs/zarchiver/b;

    .line 4
    .line 5
    iput p1, v1, Lru/zdevs/zarchiver/b;->g:I

    .line 6
    .line 7
    iput-boolean p3, v1, Lru/zdevs/zarchiver/b;->i:Z

    .line 8
    .line 9
    iput p2, v1, Lru/zdevs/zarchiver/b;->h:I

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {v0, p1, p1, p2}, Lru/zdevs/zarchiver/ZSelectFile;->y(Ljava/lang/String;Lh0/h;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
