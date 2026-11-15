.class Lvt/c$a$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/w$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvt/c$a;->d()V
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
    iput-object p1, p0, Lvt/c$a$c;->a:Lvt/c$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [B

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvt/c$a$c;->b([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b([B)V
    .locals 4

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, v0}, Lvt/c;->O([BILjava/nio/ByteOrder;)S

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lvt/c$a$c;->a:Lvt/c$a;

    .line 9
    .line 10
    iget-object v0, v0, Lvt/c$a;->e:Lvt/c;

    .line 11
    .line 12
    iget-object v0, v0, Lvt/c;->j:Ljava/util/zip/CRC32;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    long-to-int v0, v2

    .line 19
    int-to-short v0, v0

    .line 20
    if-eq v0, p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lvt/c$a$c;->a:Lvt/c$a;

    .line 23
    .line 24
    iget-object p1, p1, Lvt/c$a;->e:Lvt/c;

    .line 25
    .line 26
    new-instance v0, Ljava/io/IOException;

    .line 27
    .line 28
    const-string v1, "CRC mismatch"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lvt/d;->M(Ljava/lang/Exception;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Lvt/c$a$c;->a:Lvt/c$a;

    .line 38
    .line 39
    iget-object p1, p1, Lvt/c$a;->e:Lvt/c;

    .line 40
    .line 41
    iget-object p1, p1, Lvt/c;->j:Ljava/util/zip/CRC32;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lvt/c$a$c;->a:Lvt/c$a;

    .line 47
    .line 48
    iget-object v0, p1, Lvt/c$a;->e:Lvt/c;

    .line 49
    .line 50
    iput-boolean v1, v0, Lvt/c;->i:Z

    .line 51
    .line 52
    iget-object p1, p1, Lvt/c$a;->c:Lcom/transsion/transfer/androidasync/p;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
