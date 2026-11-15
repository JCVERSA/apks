.class Lvt/c$a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/w$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvt/c$a;->f([B)V
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
    iput-object p1, p0, Lvt/c$a$a;->a:Lvt/c$a;

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
    invoke-virtual {p0, p1}, Lvt/c$a$a;->b([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b([B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lvt/c$a$a;->a:Lvt/c$a;

    .line 2
    .line 3
    iget-boolean v1, v0, Lvt/c$a;->b:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lvt/c$a;->e:Lvt/c;

    .line 9
    .line 10
    iget-object v0, v0, Lvt/c;->j:Ljava/util/zip/CRC32;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    invoke-static {p1, v2, v0}, Lvt/c;->O([BILjava/nio/ByteOrder;)S

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const v0, 0xffff

    .line 23
    .line 24
    .line 25
    and-int/2addr p1, v0

    .line 26
    iget-object v0, p0, Lvt/c$a$a;->a:Lvt/c$a;

    .line 27
    .line 28
    iget-object v0, v0, Lvt/c$a;->d:Lcom/transsion/transfer/androidasync/w;

    .line 29
    .line 30
    new-instance v1, Lvt/c$a$a$a;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lvt/c$a$a$a;-><init>(Lvt/c$a$a;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/transsion/transfer/androidasync/w;->b(ILcom/transsion/transfer/androidasync/w$j;)Lcom/transsion/transfer/androidasync/w;

    .line 36
    .line 37
    .line 38
    return-void
.end method
