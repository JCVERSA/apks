.class Lcom/transsion/transfer/androidasync/http/HybiParser$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/HybiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/HybiParser;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/HybiParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->e()B

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-static {p1, p2}, Lcom/transsion/transfer/androidasync/http/HybiParser;->k(Lcom/transsion/transfer/androidasync/http/HybiParser;B)V
    :try_end_0
    .catch Lcom/transsion/transfer/androidasync/http/HybiParser$ProtocolError; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->H(Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/HybiParser$a;->a:Lcom/transsion/transfer/androidasync/http/HybiParser;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/HybiParser;->C()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
