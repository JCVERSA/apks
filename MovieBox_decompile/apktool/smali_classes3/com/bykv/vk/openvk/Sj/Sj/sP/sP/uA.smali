.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$EjP;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

.field public final b:Ljava/util/List;

.field public final c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;Ljava/util/List;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->b:Ljava/util/List;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    sget-object v2, Lh6/a;->b:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-eqz v1, :cond_2

    .line 49
    .line 50
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 51
    .line 52
    invoke-static {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;Ljava/util/List;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-direct {v0, v1, p0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;Ljava/util/List;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    new-instance p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$EjP;

    .line 61
    .line 62
    const-string v0, "request line is null"

    .line 63
    .line 64
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$EjP;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Request{requestLine="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", headers="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->b:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", extra="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x7d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
