.class final Lretrofit2/a0$i;
.super Lretrofit2/a0;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:I

.field private final c:Lokhttp3/Headers;

.field private final d:Lretrofit2/k;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;ILokhttp3/Headers;Lretrofit2/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lretrofit2/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lretrofit2/a0$i;->a:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    iput p2, p0, Lretrofit2/a0$i;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lretrofit2/a0$i;->c:Lokhttp3/Headers;

    .line 9
    .line 10
    iput-object p4, p0, Lretrofit2/a0$i;->d:Lretrofit2/k;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method a(Lretrofit2/h0;Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lretrofit2/a0$i;->d:Lretrofit2/k;

    .line 5
    .line 6
    invoke-interface {v0, p2}, Lretrofit2/k;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lokhttp3/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    iget-object p2, p0, Lretrofit2/a0$i;->c:Lokhttp3/Headers;

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Lretrofit2/h0;->d(Lokhttp3/Headers;Lokhttp3/RequestBody;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p1

    .line 19
    iget-object v0, p0, Lretrofit2/a0$i;->a:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    iget v1, p0, Lretrofit2/a0$i;->b:I

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "Unable to convert "

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p2, " to RequestBody"

    .line 37
    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const/4 v2, 0x1

    .line 46
    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    aput-object p1, v2, v3

    .line 50
    .line 51
    invoke-static {v0, v1, p2, v2}, Lretrofit2/o0;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    throw p1
.end method
