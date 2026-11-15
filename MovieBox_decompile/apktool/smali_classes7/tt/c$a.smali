.class Ltt/c$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltt/c;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/http/Headers;

.field final synthetic b:Ltt/c;


# direct methods
.method constructor <init>(Ltt/c;Lcom/transsion/transfer/androidasync/http/Headers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltt/c$a;->b:Ltt/c;

    .line 2
    .line 3
    iput-object p2, p0, Ltt/c$a;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "\r"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ltt/c$a;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->b(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Headers;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Ltt/c$a;->b:Ltt/c;

    .line 16
    .line 17
    invoke-virtual {p1}, Ltt/c;->W()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Ltt/c$a;->b:Ltt/c;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p1, Ltt/c;->i:Lcom/transsion/transfer/androidasync/v;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/q;->F(Lst/d;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Ltt/d;

    .line 29
    .line 30
    iget-object v0, p0, Ltt/c$a;->a:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ltt/d;-><init>(Lcom/transsion/transfer/androidasync/http/Headers;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ltt/c$a;->b:Ltt/c;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Ltt/c$a;->b:Ltt/c;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/q;->G()Lst/d;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Ltt/c$a;->b:Ltt/c;

    .line 49
    .line 50
    iput-object p1, v0, Ltt/c;->l:Ltt/d;

    .line 51
    .line 52
    new-instance p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, v0, Ltt/c;->k:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 58
    .line 59
    iget-object p1, p0, Ltt/c$a;->b:Ltt/c;

    .line 60
    .line 61
    new-instance v0, Ltt/c$a$a;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Ltt/c$a$a;-><init>(Ltt/c$a;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/q;->F(Lst/d;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method
