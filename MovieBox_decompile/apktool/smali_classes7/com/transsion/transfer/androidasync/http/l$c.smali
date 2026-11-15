.class Lcom/transsion/transfer/androidasync/http/l$c;
.super Lst/d$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/l;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/l;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/l$c;->a:Lcom/transsion/transfer/androidasync/http/l;

    .line 2
    .line 3
    invoke-direct {p0}, Lst/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lst/d$a;->C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/l$c;->a:Lcom/transsion/transfer/androidasync/http/l;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/http/l;->O(Lcom/transsion/transfer/androidasync/http/l;)Lcom/transsion/transfer/androidasync/j;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
