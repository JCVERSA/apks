.class final Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

.field d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

.field e:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

.field f:Ljava/util/List;

.field g:I

.field h:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

.field i:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;

.field j:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a(I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->g:I

    .line 2
    .line 3
    return-object p0
.end method

.method b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "cache == null"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method c(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "urls is empty"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->i:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;

    .line 2
    .line 3
    return-object p0
.end method

.method e(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    const-string v0, "db == null"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->h:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 2
    .line 3
    return-object p0
.end method

.method g(Ljava/lang/Object;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->j:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method h(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "rawKey == null"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method i(Ljava/util/List;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method k(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->b:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "key == null"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method
