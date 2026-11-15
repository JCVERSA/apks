.class public Lcom/doman/core/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doman/core/a$a;,
        Lcom/doman/core/a$b;
    }
.end annotation


# static fields
.field private static c:Lcom/doman/core/a;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/doman/core/a$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doman/core/a;->a:Ljava/util/List;

    new-instance v0, Lcom/doman/core/a$a;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/doman/core/a$a;-><init>(Landroid/os/Looper;Lcom/doman/core/a;)V

    iput-object v0, p0, Lcom/doman/core/a;->b:Lcom/doman/core/a$a;

    return-void
.end method

.method public static a()Lcom/doman/core/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/doman/core/a;->c:Lcom/doman/core/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/doman/core/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/doman/core/a;->c:Lcom/doman/core/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/doman/core/a;

    invoke-direct {v1}, Lcom/doman/core/a;-><init>()V

    sput-object v1, Lcom/doman/core/a;->c:Lcom/doman/core/a;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/doman/core/a;->c:Lcom/doman/core/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/doman/core/a;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/doman/core/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/doman/core/a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
