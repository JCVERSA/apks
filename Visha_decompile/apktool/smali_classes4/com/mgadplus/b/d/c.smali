.class public Lcom/mgadplus/b/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final e:Ljava/lang/String; = "c"


# instance fields
.field private a:I

.field private b:Lr5d;

.field private c:I

.field private d:Lx1d$b;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lr5d;IJLx1d$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgadplus/b/d/c;->a:I

    iput-object p1, p0, Lcom/mgadplus/b/d/c;->b:Lr5d;

    iput p2, p0, Lcom/mgadplus/b/d/c;->c:I

    iput-wide p3, p0, Lcom/mgadplus/b/d/c;->f:J

    iput-object p5, p0, Lcom/mgadplus/b/d/c;->d:Lx1d$b;

    return-void
.end method

.method private c()V
    .locals 8

    const-string v0, "onFree finnaly"

    const/4 v1, 0x2

    iput v1, p0, Lcom/mgadplus/b/d/c;->a:I

    sget-object v1, Lcom/mgadplus/b/d/c;->e:Ljava/lang/String;

    const-string v2, "start free"

    invoke-static {v1, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    :try_start_0
    iget-object v3, p0, Lcom/mgadplus/b/d/c;->b:Lr5d;

    if-eqz v3, :cond_4

    iget-wide v4, p0, Lcom/mgadplus/b/d/c;->f:J

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v3, v4, v5}, Lr5d;->a(J)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/db/dao3/c;

    iget-object v4, p0, Lcom/mgadplus/b/d/c;->b:Lr5d;

    invoke-interface {v4, v3}, Lr5d;->a(Lcom/mgmi/db/dao3/c;)V

    invoke-virtual {v3}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb2d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/mgmi/db/dao3/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lb2d;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/mgadplus/b/d/c;->d:Lx1d$b;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/mgadplus/b/d/c;->e:Ljava/lang/String;

    const-string v3, "onFreeSizeComplete"

    invoke-static {v1, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mgadplus/b/d/c;->d:Lx1d$b;

    invoke-interface {v1}, Lx1d$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    sget-object v1, Lcom/mgadplus/b/d/c;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/mgadplus/b/d/c;->a:I

    goto :goto_3

    :cond_4
    :goto_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "free error freeSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/mgadplus/b/d/c;->f:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mgadplus/b/d/c;->d:Lx1d$b;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Lx1d$b;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/mgadplus/b/d/c;->a:I

    return-void

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/mgadplus/b/d/c;->d:Lx1d$b;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lx1d$b;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    sget-object v3, Lcom/mgadplus/b/d/c;->e:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/mgadplus/b/d/c;->a:I

    throw v1
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget p0, p0, Lcom/mgadplus/b/d/c;->a:I

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/mgadplus/b/d/c;->e:Ljava/lang/String;

    const-string v0, "FreeSizeTask is running"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/mgadplus/b/d/c;->a:I

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/mgadplus/b/d/c;->c()V

    return-void
.end method
