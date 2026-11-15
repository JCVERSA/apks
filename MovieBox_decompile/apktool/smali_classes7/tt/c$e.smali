.class Ltt/c$e;
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
    iput-object p1, p0, Ltt/c$e;->c:Ltt/c;

    .line 2
    .line 3
    iput-object p2, p0, Ltt/c$e;->a:Ltt/d;

    .line 4
    .line 5
    iput-object p3, p0, Ltt/c$e;->b:Lcom/transsion/transfer/androidasync/s;

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
    .locals 1

    .line 1
    iget-object p1, p0, Ltt/c$e;->a:Ltt/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Ltt/d;->b()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Ltt/c$e;->c:Ltt/c;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/server/p;->Q()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Ltt/c$e;->b:Lcom/transsion/transfer/androidasync/s;

    .line 22
    .line 23
    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLst/a;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Ltt/c$e;->c:Ltt/c;

    .line 27
    .line 28
    iget v0, p2, Ltt/c;->n:I

    .line 29
    .line 30
    array-length p1, p1

    .line 31
    add-int/2addr v0, p1

    .line 32
    iput v0, p2, Ltt/c;->n:I

    .line 33
    .line 34
    return-void
.end method
