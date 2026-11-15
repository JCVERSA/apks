.class public Lu2d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lyc8;

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lht4;->b()Lht4;

    move-result-object v0

    iput-object v0, p0, Lu2d;->a:Lyc8;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lu2d;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lct8;Ldv4;)V
    .locals 1

    new-instance v0, Lcom/transsion/http/HttpRequestTask;

    invoke-direct {v0, p1, p2}, Lcom/transsion/http/HttpRequestTask;-><init>(Lct8;Ldv4;)V

    invoke-virtual {p1}, Lct8;->c()Lhnd;

    move-result-object p1

    invoke-virtual {p1}, Lhnd;->m()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lu2d;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lu2d;->a:Lyc8;

    invoke-interface {p0, v0}, Lyc8;->a(Ljava/lang/Runnable;)V

    return-void
.end method
