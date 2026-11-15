.class Lvt/c$a$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvt/c$a;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvt/c$a;


# direct methods
.method constructor <init>(Lvt/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvt/c$a$b;->a:Lvt/c$a;

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
    .locals 4

    .line 1
    iget-object p1, p0, Lvt/c$a$b;->a:Lvt/c$a;

    .line 2
    .line 3
    iget-boolean p1, p1, Lvt/c$a;->b:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->E()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->D()Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lvt/c$a$b;->a:Lvt/c$a;

    .line 18
    .line 19
    iget-object v0, v0, Lvt/c$a;->e:Lvt/c;

    .line 20
    .line 21
    iget-object v0, v0, Lvt/c;->j:Ljava/util/zip/CRC32;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/2addr v2, v3

    .line 36
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->A(Ljava/nio/ByteBuffer;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lvt/c$a$b;->a:Lvt/c$a;

    .line 51
    .line 52
    invoke-static {p1}, Lvt/c$a;->b(Lvt/c$a;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
