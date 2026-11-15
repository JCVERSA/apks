.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private b:I

.field private c:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->a:Ljava/io/OutputStream;

    .line 5
    .line 6
    iput p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method a([BII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->a:Ljava/io/OutputStream;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;-><init>(Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw p2

    .line 21
    :cond_0
    return-void
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->b:I

    .line 2
    .line 3
    return v0
.end method

.method d([BII)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->a:Ljava/io/OutputStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->b:I

    .line 7
    .line 8
    add-int/2addr p1, p3

    .line 9
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw p2
.end method
