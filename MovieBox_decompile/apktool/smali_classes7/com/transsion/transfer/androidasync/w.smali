.class public Lcom/transsion/transfer/androidasync/w;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/w$l;,
        Lcom/transsion/transfer/androidasync/w$j;,
        Lcom/transsion/transfer/androidasync/w$i;,
        Lcom/transsion/transfer/androidasync/w$k;
    }
.end annotation


# static fields
.field static n:Ljava/util/Hashtable;


# instance fields
.field private a:Lcom/transsion/transfer/androidasync/w$l;

.field private b:Lcom/transsion/transfer/androidasync/w$l;

.field private c:Lcom/transsion/transfer/androidasync/w$l;

.field private d:Lcom/transsion/transfer/androidasync/w$l;

.field private e:Lcom/transsion/transfer/androidasync/w$l;

.field private f:Lcom/transsion/transfer/androidasync/w$j;

.field private g:Lcom/transsion/transfer/androidasync/w$j;

.field private h:Lcom/transsion/transfer/androidasync/w$j;

.field i:Lcom/transsion/transfer/androidasync/p;

.field private j:Ljava/util/LinkedList;

.field private k:Ljava/util/ArrayList;

.field l:Ljava/nio/ByteOrder;

.field m:Lcom/transsion/transfer/androidasync/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/transfer/androidasync/w;->n:Ljava/util/Hashtable;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/transsion/transfer/androidasync/p;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/transfer/androidasync/w$a;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$a;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->a:Lcom/transsion/transfer/androidasync/w$l;

    .line 11
    .line 12
    new-instance v0, Lcom/transsion/transfer/androidasync/w$b;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$b;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->b:Lcom/transsion/transfer/androidasync/w$l;

    .line 19
    .line 20
    new-instance v0, Lcom/transsion/transfer/androidasync/w$c;

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$c;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->c:Lcom/transsion/transfer/androidasync/w$l;

    .line 27
    .line 28
    new-instance v0, Lcom/transsion/transfer/androidasync/w$d;

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$d;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->d:Lcom/transsion/transfer/androidasync/w$l;

    .line 35
    .line 36
    new-instance v0, Lcom/transsion/transfer/androidasync/w$e;

    .line 37
    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Lcom/transsion/transfer/androidasync/w$e;-><init>(Lcom/transsion/transfer/androidasync/w;I)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->e:Lcom/transsion/transfer/androidasync/w$l;

    .line 44
    .line 45
    new-instance v0, Lcom/transsion/transfer/androidasync/w$f;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/w$f;-><init>(Lcom/transsion/transfer/androidasync/w;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->f:Lcom/transsion/transfer/androidasync/w$j;

    .line 51
    .line 52
    new-instance v0, Lcom/transsion/transfer/androidasync/w$g;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/w$g;-><init>(Lcom/transsion/transfer/androidasync/w;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->g:Lcom/transsion/transfer/androidasync/w$j;

    .line 58
    .line 59
    new-instance v0, Lcom/transsion/transfer/androidasync/w$h;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/w$h;-><init>(Lcom/transsion/transfer/androidasync/w;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->h:Lcom/transsion/transfer/androidasync/w$j;

    .line 65
    .line 66
    new-instance v0, Ljava/util/LinkedList;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->k:Ljava/util/ArrayList;

    .line 79
    .line 80
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->l:Ljava/nio/ByteOrder;

    .line 83
    .line 84
    new-instance v0, Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 85
    .line 86
    invoke-direct {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/w;->i:Lcom/transsion/transfer/androidasync/p;

    .line 92
    .line 93
    invoke-interface {p1, p0}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/transfer/androidasync/w;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/transfer/androidasync/w;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public C(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/transsion/transfer/androidasync/w$l;

    .line 27
    .line 28
    iget v1, v1, Lcom/transsion/transfer/androidasync/w$l;->a:I

    .line 29
    .line 30
    if-lt v0, v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/w;->l:Ljava/nio/ByteOrder;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->u(Ljava/nio/ByteOrder;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/transsion/transfer/androidasync/w$l;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 48
    .line 49
    invoke-virtual {v0, p1, v1}, Lcom/transsion/transfer/androidasync/w$l;->a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)Lcom/transsion/transfer/androidasync/w$l;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/w;->m:Lcom/transsion/transfer/androidasync/ByteBufferList;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/transsion/transfer/androidasync/ByteBufferList;->f(Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method

.method public b(ILcom/transsion/transfer/androidasync/w$j;)Lcom/transsion/transfer/androidasync/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/transfer/androidasync/w$i;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/transsion/transfer/androidasync/w$i;-><init>(ILcom/transsion/transfer/androidasync/w$j;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public c(BLst/d;)Lcom/transsion/transfer/androidasync/w;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/w;->j:Ljava/util/LinkedList;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/transfer/androidasync/w$k;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/transsion/transfer/androidasync/w$k;-><init>(BLst/d;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
