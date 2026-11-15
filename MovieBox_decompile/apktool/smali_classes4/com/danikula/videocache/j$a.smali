.class Lcom/danikula/videocache/j$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danikula/videocache/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/danikula/videocache/j;


# direct methods
.method private constructor <init>(Lcom/danikula/videocache/j;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/danikula/videocache/j$a;->a:Lcom/danikula/videocache/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/danikula/videocache/j;Lcom/danikula/videocache/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/danikula/videocache/j$a;-><init>(Lcom/danikula/videocache/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/j$a;->a:Lcom/danikula/videocache/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/danikula/videocache/j;->a(Lcom/danikula/videocache/j;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/danikula/videocache/j$a;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
