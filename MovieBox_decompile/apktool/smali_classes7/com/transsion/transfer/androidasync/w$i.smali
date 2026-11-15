.class Lcom/transsion/transfer/androidasync/w$i;
.super Lcom/transsion/transfer/androidasync/w$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# instance fields
.field b:Lcom/transsion/transfer/androidasync/w$j;


# direct methods
.method public constructor <init>(ILcom/transsion/transfer/androidasync/w$j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/androidasync/w$l;-><init>(I)V

    .line 2
    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/w$i;->b:Lcom/transsion/transfer/androidasync/w$j;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p2, "length should be > 0"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/w$l;
    .locals 0

    .line 1
    iget p1, p0, Lcom/transsion/transfer/androidasync/w$l;->a:I

    .line 2
    .line 3
    new-array p1, p1, [B

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->h([B)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/transsion/transfer/androidasync/w$i;->b:Lcom/transsion/transfer/androidasync/w$j;

    .line 9
    .line 10
    invoke-interface {p2, p1}, Lcom/transsion/transfer/androidasync/w$j;->a(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1
.end method
