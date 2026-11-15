.class Lcom/transsion/transfer/androidasync/http/n$b$a$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/transfer/androidasync/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/n$b$a;->g(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/transsion/transfer/androidasync/http/n$b$a;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/n$b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->b:Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->b:Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/n$b$a;->b:Lcom/transsion/transfer/androidasync/http/n$b;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/n$b;->c:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/g$e;->b:Lcom/transsion/transfer/androidasync/http/j;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->a:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->a:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "HTTP/1.\\d 2\\d\\d .*"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->b:Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 34
    .line 35
    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->b:Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 41
    .line 42
    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->b:Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/n$b$a;->b:Lcom/transsion/transfer/androidasync/http/n$b;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/n$b;->a:Lst/b;

    .line 50
    .line 51
    new-instance v0, Ljava/io/IOException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "non 2xx status line: "

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->a:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->b:Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 76
    .line 77
    iget-object v1, v1, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 78
    .line 79
    invoke-interface {p1, v0, v1}, Lst/b;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/j;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->b:Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 96
    .line 97
    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->b:Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 103
    .line 104
    invoke-interface {p1, v1}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/n$b$a$a;->b:Lcom/transsion/transfer/androidasync/http/n$b$a;

    .line 108
    .line 109
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/n$b$a;->b:Lcom/transsion/transfer/androidasync/http/n$b;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/transsion/transfer/androidasync/http/n$b;->f:Lcom/transsion/transfer/androidasync/http/n;

    .line 112
    .line 113
    iget-object v2, p1, Lcom/transsion/transfer/androidasync/http/n$b$a;->a:Lcom/transsion/transfer/androidasync/j;

    .line 114
    .line 115
    iget-object v3, v0, Lcom/transsion/transfer/androidasync/http/n$b;->c:Lcom/transsion/transfer/androidasync/http/g$a;

    .line 116
    .line 117
    iget-object v4, v0, Lcom/transsion/transfer/androidasync/http/n$b;->d:Landroid/net/Uri;

    .line 118
    .line 119
    iget v5, v0, Lcom/transsion/transfer/androidasync/http/n$b;->e:I

    .line 120
    .line 121
    iget-object v6, v0, Lcom/transsion/transfer/androidasync/http/n$b;->a:Lst/b;

    .line 122
    .line 123
    invoke-virtual/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/n;->E(Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILst/b;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_0
    return-void
.end method
