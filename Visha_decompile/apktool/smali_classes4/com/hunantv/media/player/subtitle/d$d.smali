.class Lcom/hunantv/media/player/subtitle/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/subtitle/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field static final synthetic f:Z = true


# instance fields
.field public a:Lcom/hunantv/media/player/subtitle/d$a;

.field public b:Lcom/hunantv/media/player/subtitle/d$d;

.field public c:Lcom/hunantv/media/player/subtitle/d$d;

.field public d:J

.field public e:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/d$d;->d:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/hunantv/media/player/subtitle/d$d;->e:J

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/d$d;->g:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/hunantv/media/player/subtitle/d$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/d$d;->c:Lcom/hunantv/media/player/subtitle/d$d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/d$d;->b:Lcom/hunantv/media/player/subtitle/d$d;

    iput-object v2, v0, Lcom/hunantv/media/player/subtitle/d$d;->b:Lcom/hunantv/media/player/subtitle/d$d;

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/d$d;->c:Lcom/hunantv/media/player/subtitle/d$d;

    :cond_0
    iget-object v2, p0, Lcom/hunantv/media/player/subtitle/d$d;->b:Lcom/hunantv/media/player/subtitle/d$d;

    if-eqz v2, :cond_1

    iput-object v0, v2, Lcom/hunantv/media/player/subtitle/d$d;->c:Lcom/hunantv/media/player/subtitle/d$d;

    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/d$d;->b:Lcom/hunantv/media/player/subtitle/d$d;

    :cond_1
    return-void
.end method

.method public a(Landroidx/collection/LongSparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Lcom/hunantv/media/player/subtitle/d$d;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/d$d;->g:J

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$d;->c:Lcom/hunantv/media/player/subtitle/d$d;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/hunantv/media/player/subtitle/d$d;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/d$d;->b:Lcom/hunantv/media/player/subtitle/d$d;

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/d$d;->a()V

    :cond_4
    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/d$d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hunantv/media/player/subtitle/d$d;->c:Lcom/hunantv/media/player/subtitle/d$d;

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/subtitle/d$d;

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/d$d;->b:Lcom/hunantv/media/player/subtitle/d$d;

    if-eqz v0, :cond_5

    iput-object p0, v0, Lcom/hunantv/media/player/subtitle/d$d;->c:Lcom/hunantv/media/player/subtitle/d$d;

    :cond_5
    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/d$d;->d:J

    invoke-virtual {p1, v0, v1, p0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-wide v0, p0, Lcom/hunantv/media/player/subtitle/d$d;->d:J

    iput-wide v0, p0, Lcom/hunantv/media/player/subtitle/d$d;->g:J

    :cond_6
    return-void
.end method
