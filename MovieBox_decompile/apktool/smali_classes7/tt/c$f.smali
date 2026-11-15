.class Ltt/c$f;
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
.field final synthetic a:Lcom/transsion/transfer/androidasync/s;

.field final synthetic b:Ltt/c;


# direct methods
.method constructor <init>(Ltt/c;Lcom/transsion/transfer/androidasync/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltt/c$f;->b:Ltt/c;

    .line 2
    .line 3
    iput-object p2, p0, Ltt/c$f;->a:Lcom/transsion/transfer/androidasync/s;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onContinue(Lcom/transsion/transfer/androidasync/future/Continuation;Lst/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltt/c$f;->b:Ltt/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/server/p;->P()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Ltt/c$f;->a:Lcom/transsion/transfer/androidasync/s;

    .line 12
    .line 13
    invoke-static {v0, p1, p2}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLst/a;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Ltt/c$f;->b:Ltt/c;

    .line 17
    .line 18
    iget v0, p2, Ltt/c;->n:I

    .line 19
    .line 20
    array-length p1, p1

    .line 21
    add-int/2addr v0, p1

    .line 22
    iput v0, p2, Ltt/c;->n:I

    .line 23
    .line 24
    return-void
.end method
