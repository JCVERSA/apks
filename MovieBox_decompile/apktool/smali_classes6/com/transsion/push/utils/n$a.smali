.class Lcom/transsion/push/utils/n$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/push/utils/n$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/n;->b(ILjava/util/List;Lcom/transsion/push/utils/n$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/transsion/push/utils/n$d;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/transsion/push/utils/n$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/push/utils/n$a;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/push/utils/n$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/push/utils/n$a;->c:Lcom/transsion/push/utils/n$d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/utils/n$a;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/push/utils/n$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/transsion/push/utils/n$a;->c:Lcom/transsion/push/utils/n$d;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/transsion/push/utils/n$a;->a:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-interface {p1, p2}, Lcom/transsion/push/utils/n$d;->a(Ljava/util/HashMap;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
