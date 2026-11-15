.class final Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

.field b:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

.field c:Ljava/net/Socket;

.field d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;


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
.method a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    .line 2
    .line 3
    return-object p0
.end method

.method b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;
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

.method c(Ljava/net/Socket;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->c:Ljava/net/Socket;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v0, "socket == null"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method d()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method
