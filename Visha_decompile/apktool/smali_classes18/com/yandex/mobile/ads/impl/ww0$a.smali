.class public final Lcom/yandex/mobile/ads/impl/ww0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ww0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ww0$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/yandex/mobile/ads/impl/vw0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/mobile/ads/impl/ww0$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/ww0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/yandex/mobile/ads/impl/vw0$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/yandex/mobile/ads/impl/vw0$b;)V
    .locals 0
    .param p3    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->a:I

    .line 5
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->d:J

    return-void
.end method

.method private a(J)J
    .locals 3

    .line 4
    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/f92;->b(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->d:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method public static synthetic a(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ww0$a;->c(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method private synthetic a(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 1

    .line 13
    iget v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->a:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-interface {p1, v0, p0, p2, p3}, Lcom/yandex/mobile/ads/impl/ww0;->a(ILcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method private synthetic a(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V
    .locals 7

    .line 14
    iget v1, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->a:I

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ww0;->a(ILcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V

    return-void
.end method

.method private synthetic a(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 1

    .line 12
    iget v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->a:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-interface {p1, v0, p0, p2}, Lcom/yandex/mobile/ads/impl/ww0;->a(ILcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ww0$a;->b(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method private synthetic b(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->a:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-interface {p1, v0, p0, p2, p3}, Lcom/yandex/mobile/ads/impl/ww0;->b(ILcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method private synthetic c(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->a:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->b:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-interface {p1, v0, p0, p2, p3}, Lcom/yandex/mobile/ads/impl/ww0;->c(ILcom/yandex/mobile/ads/impl/vw0$b;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/yandex/mobile/ads/impl/vw0$b;)Lcom/yandex/mobile/ads/impl/ww0$a;
    .locals 1
    .param p2    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 36
    new-instance v0, Lcom/yandex/mobile/ads/impl/ww0$a;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/ww0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/yandex/mobile/ads/impl/vw0$b;)V

    return-object v0
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/jc0;J)V
    .locals 11
    .param p2    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    new-instance v10, Lcom/yandex/mobile/ads/impl/lw0;

    .line 7
    invoke-direct {p0, p3, p4}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(J)J

    move-result-wide v6

    const/4 v5, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/yandex/mobile/ads/impl/lw0;-><init>(IILcom/yandex/mobile/ads/impl/jc0;ILjava/lang/Object;JJ)V

    .line 8
    invoke-virtual {p0, v10}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/ww0;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/yandex/mobile/ads/impl/ww0$a$a;

    invoke-direct {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/ww0$a$a;-><init>(Landroid/os/Handler;Lcom/yandex/mobile/ads/impl/ww0;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/es0;ILcom/yandex/mobile/ads/impl/jc0;JJLjava/io/IOException;Z)V
    .locals 12
    .param p3    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 26
    new-instance v11, Lcom/yandex/mobile/ads/impl/lw0;

    move-wide/from16 v1, p4

    .line 27
    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p6

    .line 28
    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(J)J

    move-result-wide v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    move-object v1, v11

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/lw0;-><init>(IILcom/yandex/mobile/ads/impl/jc0;ILjava/lang/Object;JJ)V

    move-object v1, p1

    move-object/from16 v2, p8

    move/from16 v3, p9

    .line 29
    invoke-virtual {p0, p1, v11, v2, v3}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/es0;JJ)V
    .locals 12

    move-object v0, p0

    .line 15
    new-instance v11, Lcom/yandex/mobile/ads/impl/lw0;

    move-wide v1, p2

    .line 16
    invoke-direct {p0, p2, p3}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p4

    .line 17
    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(J)J

    move-result-wide v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/lw0;-><init>(IILcom/yandex/mobile/ads/impl/jc0;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 18
    invoke-virtual {p0, p1, v11}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/jc0;JJ)V
    .locals 12
    .param p2    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 22
    new-instance v11, Lcom/yandex/mobile/ads/impl/lw0;

    move-wide v1, p3

    .line 23
    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p5

    .line 24
    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(J)J

    move-result-wide v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    move-object v1, v11

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/lw0;-><init>(IILcom/yandex/mobile/ads/impl/jc0;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 25
    invoke-virtual {p0, p1, v11}, Lcom/yandex/mobile/ads/impl/ww0$a;->b(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;

    .line 20
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->b:Lcom/yandex/mobile/ads/impl/ww0;

    .line 21
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lzwd;

    invoke-direct {v3, p0, v2, p1, p2}, Lzwd;-><init>(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V
    .locals 10

    .line 30
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;

    .line 31
    iget-object v4, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->b:Lcom/yandex/mobile/ads/impl/ww0;

    .line 32
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lxwd;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lxwd;-><init>(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;

    .line 10
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->b:Lcom/yandex/mobile/ads/impl/ww0;

    .line 11
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lwwd;

    invoke-direct {v3, p0, v2, p1}, Lwwd;-><init>(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/lw0;)V

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ww0;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;

    .line 34
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->b:Lcom/yandex/mobile/ads/impl/ww0;

    if-ne v2, p1, :cond_0

    .line 35
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/jc0;JJ)V
    .locals 12
    .param p2    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    .line 6
    new-instance v11, Lcom/yandex/mobile/ads/impl/lw0;

    move-wide v1, p3

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p5

    .line 8
    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/ww0$a;->a(J)J

    move-result-wide v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    move-object v1, v11

    move-object v4, p2

    invoke-direct/range {v1 .. v10}, Lcom/yandex/mobile/ads/impl/lw0;-><init>(IILcom/yandex/mobile/ads/impl/jc0;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 9
    invoke-virtual {p0, p1, v11}, Lcom/yandex/mobile/ads/impl/ww0$a;->c(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;

    .line 4
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->b:Lcom/yandex/mobile/ads/impl/ww0;

    .line 5
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lywd;

    invoke-direct {v3, p0, v2, p1, p2}, Lywd;-><init>(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ww0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;

    .line 4
    iget-object v2, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->b:Lcom/yandex/mobile/ads/impl/ww0;

    .line 5
    iget-object v1, v1, Lcom/yandex/mobile/ads/impl/ww0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lvwd;

    invoke-direct {v3, p0, v2, p1, p2}, Lvwd;-><init>(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
