.class Ltt/c$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltt/c;->J(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/s;Lst/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltt/d;

.field final synthetic b:Lcom/transsion/transfer/androidasync/s;

.field final synthetic c:Ltt/c;


# direct methods
.method constructor <init>(Ltt/c;Ltt/d;Lcom/transsion/transfer/androidasync/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltt/c$d;->c:Ltt/c;

    .line 2
    .line 3
    iput-object p2, p0, Ltt/c$d;->a:Ltt/d;

    .line 4
    .line 5
    iput-object p3, p0, Ltt/c$d;->b:Lcom/transsion/transfer/androidasync/s;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onContinue(Lcom/transsion/transfer/androidasync/future/Continuation;Lst/a;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ltt/c$d;->a:Ltt/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Ltt/d;->c()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long p1, v0, v2

    .line 10
    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Ltt/c$d;->c:Ltt/c;

    .line 14
    .line 15
    iget v2, p1, Ltt/c;->n:I

    .line 16
    .line 17
    int-to-long v2, v2

    .line 18
    add-long/2addr v2, v0

    .line 19
    long-to-int v0, v2

    .line 20
    iput v0, p1, Ltt/c;->n:I

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Ltt/c$d;->a:Ltt/d;

    .line 23
    .line 24
    iget-object v0, p0, Ltt/c$d;->b:Lcom/transsion/transfer/androidasync/s;

    .line 25
    .line 26
    invoke-virtual {p1, v0, p2}, Ltt/d;->d(Lcom/transsion/transfer/androidasync/s;Lst/a;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
