.class Lcom/transsion/transfer/androidasync/http/n$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lst/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/n;->z(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;IZLst/b;)Lst/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lst/b;

.field final synthetic b:Z

.field final synthetic c:Lcom/transsion/transfer/androidasync/http/g$a;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:I

.field final synthetic f:Lcom/transsion/transfer/androidasync/http/n;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/n;Lst/b;ZLcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b;->f:Lcom/transsion/transfer/androidasync/http/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/n$b;->a:Lst/b;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/transfer/androidasync/http/n$b;->b:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/n$b;->c:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/n$b;->d:Landroid/net/Uri;

    .line 10
    .line 11
    iput p6, p0, Lcom/transsion/transfer/androidasync/http/n$b;->e:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b;->a:Lst/b;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lst/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/transfer/androidasync/http/n$b;->b:Z

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b;->f:Lcom/transsion/transfer/androidasync/http/n;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/n$b;->c:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/transsion/transfer/androidasync/http/n$b;->d:Landroid/net/Uri;

    .line 18
    .line 19
    iget v4, p0, Lcom/transsion/transfer/androidasync/http/n$b;->e:I

    .line 20
    .line 21
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/n$b;->a:Lst/b;

    .line 22
    .line 23
    move-object v1, p2

    .line 24
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/n;->E(Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILst/b;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b;->d:Landroid/net/Uri;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Lcom/transsion/transfer/androidasync/http/n$b;->e:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/n$b;->d:Landroid/net/Uri;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x3

    .line 49
    new-array v3, v3, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    aput-object v0, v3, v4

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    aput-object v1, v3, v0

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    aput-object v2, v3, v0

    .line 59
    .line 60
    const-string v0, "CONNECT %s:%s HTTP/1.1\r\nHost: %s\r\n\r\n"

    .line 61
    .line 62
    invoke-static {p1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b;->c:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "Proxying: "

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    new-instance v0, Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 95
    .line 96
    invoke-direct {v0, p0, p2}, Lcom/transsion/transfer/androidasync/http/n$b$a;-><init>(Lcom/transsion/transfer/androidasync/http/n$b;Lcom/transsion/transfer/androidasync/j;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p2, p1, v0}, Lcom/transsion/transfer/androidasync/a0;->h(Lcom/transsion/transfer/androidasync/s;[BLst/a;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method
