.class public final Lcom/doman/core/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/doman/core/d/a/a$b;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/doman/core/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/doman/core/a/g;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Lcom/doman/core/d/a/a;

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/doman/core/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field private l:I


# direct methods
.method public constructor <init>(Lcom/doman/core/a/g;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WS_MIT"

    iput-object v0, p0, Lcom/doman/core/c/c;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doman/core/c/c;->h:Z

    iput v0, p0, Lcom/doman/core/c/c;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doman/core/c/c;->j:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    iput-object p4, p0, Lcom/doman/core/c/c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/doman/core/c/c;->d:Ljava/lang/String;

    iget-object p4, p1, Lcom/doman/core/a/a;->I:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/doman/core/c/c;->a:Ljava/util/ArrayList;

    iput-wide p2, p0, Lcom/doman/core/c/c;->k:J

    iget-object p2, p1, Lcom/doman/core/a/g;->Q:Ljava/lang/String;

    iput-object p2, p0, Lcom/doman/core/c/c;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/doman/core/a/g;->R:Ljava/lang/String;

    iput-object p1, p0, Lcom/doman/core/c/c;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(J)V
    .locals 2

    .line 2
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/doman/core/c/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/doman/core/c/c;->l:I

    iget-object v1, p0, Lcom/doman/core/c/c;->b:Lcom/doman/core/a/g;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/doman/core/a/a;->F:I

    if-lez v1, :cond_1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/doman/core/c/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/doman/core/c/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "21212121212121ImpressionTask trackingRequestWait thread currentThread"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc9

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/doman/core/c/c;->a(Ljava/util/ArrayList;IILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/doman/core/c/c;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/doman/core/c/c;->i:Lcom/doman/core/d/a/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/doman/core/d/a/a;->b(Lcom/doman/core/d/a/a$b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/ArrayList;IILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/doman/core/a/e;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v6, Lcom/doman/core/c/c$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/doman/core/c/c$1;-><init>(Lcom/doman/core/c/c;ILjava/util/ArrayList;ILjava/lang/String;)V

    invoke-static {v6}, Lcom/doman/core/d/n;->a(Ljava/lang/Runnable;)V

    return-void
.end method
