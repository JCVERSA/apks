.class Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;
.super Lcom/transsion/transfer/androidasync/http/l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->u(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

.field final synthetic r:Lcom/transsion/transfer/androidasync/http/j;

.field final synthetic s:Lut/a;

.field final synthetic t:Lcom/transsion/transfer/androidasync/http/g$g;

.field final synthetic u:I

.field final synthetic v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lcom/transsion/transfer/androidasync/http/j;Lut/a;Lcom/transsion/transfer/androidasync/http/g$g;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->s:Lut/a;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->t:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 10
    .line 11
    iput p7, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->u:I

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/transsion/transfer/androidasync/http/l;-><init>(Lcom/transsion/transfer/androidasync/http/j;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic U(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->W(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->X(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic W(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->d(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic X(Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 2
    .line 3
    add-int/lit8 p2, p2, 0x1

    .line 4
    .line 5
    invoke-static {v0, p1, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->d(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected M(Ljava/lang/Exception;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 4
    .line 5
    const-string v1, "exception during response"

    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/transsion/transfer/androidasync/http/j;->s(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/transsion/transfer/androidasync/AsyncSSLException;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 24
    .line 25
    const-string v1, "SSL Exception"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/transsion/transfer/androidasync/http/j;->s(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/transsion/transfer/androidasync/AsyncSSLException;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lcom/transsion/transfer/androidasync/http/j;->v(Lcom/transsion/transfer/androidasync/AsyncSSLException;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncSSLException;->getIgnore()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/l;->socket()Lcom/transsion/transfer/androidasync/j;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/http/l;->M(Ljava/lang/Exception;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/l;->e()Lcom/transsion/transfer/androidasync/http/Headers;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 74
    .line 75
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 76
    .line 77
    iget-object v6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->s:Lut/a;

    .line 78
    .line 79
    const/4 v4, 0x0

    .line 80
    move-object v3, p1

    .line 81
    invoke-static/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->k(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->t:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 85
    .line 86
    iput-object p1, v0, Lcom/transsion/transfer/androidasync/http/g$g;->k:Ljava/lang/Exception;

    .line 87
    .line 88
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 89
    .line 90
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lcom/transsion/transfer/androidasync/http/g;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->t:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 109
    .line 110
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/http/g;->b(Lcom/transsion/transfer/androidasync/http/g$g;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    return-void
.end method

.method public N(Lcom/transsion/transfer/androidasync/p;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->t:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/transsion/transfer/androidasync/http/g$b;->j:Lcom/transsion/transfer/androidasync/p;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/transsion/transfer/androidasync/http/g;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->t:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/http/g;->d(Lcom/transsion/transfer/androidasync/http/g$b;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->t:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/g$b;->j:Lcom/transsion/transfer/androidasync/p;

    .line 34
    .line 35
    invoke-super {p0, p1}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/transsion/transfer/androidasync/http/g;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->t:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/http/g;->h(Lcom/transsion/transfer/androidasync/http/g$h;)Lcom/transsion/transfer/androidasync/http/j;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 67
    .line 68
    iget-wide v0, p1, Lcom/transsion/transfer/androidasync/http/j;->l:J

    .line 69
    .line 70
    iput-wide v0, v4, Lcom/transsion/transfer/androidasync/http/j;->l:J

    .line 71
    .line 72
    iget v0, p1, Lcom/transsion/transfer/androidasync/http/j;->k:I

    .line 73
    .line 74
    iput v0, v4, Lcom/transsion/transfer/androidasync/http/j;->k:I

    .line 75
    .line 76
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/j;->j:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v0, v4, Lcom/transsion/transfer/androidasync/http/j;->j:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/j;->h:Ljava/lang/String;

    .line 81
    .line 82
    iput-object v0, v4, Lcom/transsion/transfer/androidasync/http/j;->h:Ljava/lang/String;

    .line 83
    .line 84
    iget p1, p1, Lcom/transsion/transfer/androidasync/http/j;->i:I

    .line 85
    .line 86
    iput p1, v4, Lcom/transsion/transfer/androidasync/http/j;->i:I

    .line 87
    .line 88
    invoke-static {v4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->n(Lcom/transsion/transfer/androidasync/http/j;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 92
    .line 93
    const-string v0, "Response intercepted by middleware"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/j;->t(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string p1, "Request initiated by middleware intercept by middleware"

    .line 99
    .line 100
    invoke-virtual {v4, p1}, Lcom/transsion/transfer/androidasync/http/j;->t(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 106
    .line 107
    iget v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->u:I

    .line 108
    .line 109
    iget-object v6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 110
    .line 111
    iget-object v7, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->s:Lut/a;

    .line 112
    .line 113
    new-instance v0, Lcom/transsion/transfer/androidasync/http/d;

    .line 114
    .line 115
    move-object v2, v0

    .line 116
    move-object v3, p0

    .line 117
    invoke-direct/range {v2 .. v7}, Lcom/transsion/transfer/androidasync/http/d;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 121
    .line 122
    .line 123
    new-instance p1, Lst/d$a;

    .line 124
    .line 125
    invoke-direct {p1}, Lst/d$a;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->F(Lst/d;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/l;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/l;->b()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const/16 v1, 0x12d

    .line 139
    .line 140
    if-eq v0, v1, :cond_3

    .line 141
    .line 142
    const/16 v1, 0x12e

    .line 143
    .line 144
    if-eq v0, v1, :cond_3

    .line 145
    .line 146
    const/16 v1, 0x133

    .line 147
    .line 148
    if-ne v0, v1, :cond_6

    .line 149
    .line 150
    :cond_3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/j;->g()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    .line 158
    const-string v0, "Location"

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    if-nez v1, :cond_4

    .line 173
    .line 174
    new-instance v0, Ljava/net/URL;

    .line 175
    .line 176
    new-instance v1, Ljava/net/URL;

    .line 177
    .line 178
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 179
    .line 180
    invoke-virtual {v2}, Lcom/transsion/transfer/androidasync/http/j;->p()Landroid/net/Uri;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 199
    .line 200
    .line 201
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_1

    .line 203
    :catch_0
    move-exception p1

    .line 204
    move-object v2, p1

    .line 205
    goto :goto_3

    .line 206
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/http/j;->j()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    const-string v1, "HEAD"

    .line 213
    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_5

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_5
    const-string v1, "GET"

    .line 222
    .line 223
    :goto_2
    new-instance v4, Lcom/transsion/transfer/androidasync/http/j;

    .line 224
    .line 225
    invoke-direct {v4, v0, v1}, Lcom/transsion/transfer/androidasync/http/j;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 229
    .line 230
    iget-wide v0, p1, Lcom/transsion/transfer/androidasync/http/j;->l:J

    .line 231
    .line 232
    iput-wide v0, v4, Lcom/transsion/transfer/androidasync/http/j;->l:J

    .line 233
    .line 234
    iget v0, p1, Lcom/transsion/transfer/androidasync/http/j;->k:I

    .line 235
    .line 236
    iput v0, v4, Lcom/transsion/transfer/androidasync/http/j;->k:I

    .line 237
    .line 238
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/j;->j:Ljava/lang/String;

    .line 239
    .line 240
    iput-object v0, v4, Lcom/transsion/transfer/androidasync/http/j;->j:Ljava/lang/String;

    .line 241
    .line 242
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/j;->h:Ljava/lang/String;

    .line 243
    .line 244
    iput-object v0, v4, Lcom/transsion/transfer/androidasync/http/j;->h:Ljava/lang/String;

    .line 245
    .line 246
    iget p1, p1, Lcom/transsion/transfer/androidasync/http/j;->i:I

    .line 247
    .line 248
    iput p1, v4, Lcom/transsion/transfer/androidasync/http/j;->i:I

    .line 249
    .line 250
    invoke-static {v4}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->n(Lcom/transsion/transfer/androidasync/http/j;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 254
    .line 255
    const-string v0, "User-Agent"

    .line 256
    .line 257
    invoke-static {p1, v4, v0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->l(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 261
    .line 262
    const-string v0, "Range"

    .line 263
    .line 264
    invoke-static {p1, v4, v0}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->l(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/j;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 268
    .line 269
    const-string v0, "Redirecting"

    .line 270
    .line 271
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/j;->t(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    const-string p1, "Redirected"

    .line 275
    .line 276
    invoke-virtual {v4, p1}, Lcom/transsion/transfer/androidasync/http/j;->t(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 280
    .line 281
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 282
    .line 283
    iget v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->u:I

    .line 284
    .line 285
    iget-object v6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 286
    .line 287
    iget-object v7, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->s:Lut/a;

    .line 288
    .line 289
    new-instance v0, Lcom/transsion/transfer/androidasync/http/e;

    .line 290
    .line 291
    move-object v2, v0

    .line 292
    move-object v3, p0

    .line 293
    invoke-direct/range {v2 .. v7}, Lcom/transsion/transfer/androidasync/http/e;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;Lcom/transsion/transfer/androidasync/http/j;ILcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Lut/a;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    .line 297
    .line 298
    .line 299
    new-instance p1, Lst/d$a;

    .line 300
    .line 301
    invoke-direct {p1}, Lst/d$a;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0, p1}, Lcom/transsion/transfer/androidasync/q;->F(Lst/d;)V

    .line 305
    .line 306
    .line 307
    return-void

    .line 308
    :goto_3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 309
    .line 310
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 311
    .line 312
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 313
    .line 314
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->s:Lut/a;

    .line 315
    .line 316
    move-object v3, p0

    .line 317
    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->k(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V

    .line 318
    .line 319
    .line 320
    return-void

    .line 321
    :cond_6
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 322
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v1, "Final (post cache response) headers:\n"

    .line 329
    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/l;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 348
    .line 349
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 350
    .line 351
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 352
    .line 353
    iget-object v6, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->s:Lut/a;

    .line 354
    .line 355
    const/4 v3, 0x0

    .line 356
    move-object v4, p0

    .line 357
    invoke-static/range {v1 .. v6}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->k(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V

    .line 358
    .line 359
    .line 360
    return-void
.end method

.method protected P()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/transfer/androidasync/http/l;->P()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->h:Ljava/lang/Runnable;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Received headers:\n"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/l;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/transsion/transfer/androidasync/http/g;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->t:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 71
    .line 72
    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/http/g;->g(Lcom/transsion/transfer/androidasync/http/g$d;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method

.method protected R(Ljava/lang/Exception;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->s:Lut/a;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v2, p1

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->k(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/l;Lcom/transsion/transfer/androidasync/http/j;Lut/a;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 18
    .line 19
    const-string v0, "request completed"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/j;->u(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/future/n;->isCancelled()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 34
    .line 35
    iget-object v0, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->h:Ljava/lang/Runnable;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/l;->j:Lcom/transsion/transfer/androidasync/http/Headers;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/future/a;->cancel()Z

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->q:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->e:Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 53
    .line 54
    iget-object v1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->h:Ljava/lang/Runnable;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 57
    .line 58
    invoke-static {v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->m(Lcom/transsion/transfer/androidasync/http/j;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/transfer/androidasync/AsyncServer;->E(Ljava/lang/Runnable;J)Lcom/transsion/transfer/androidasync/future/a;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$h;->g:Lcom/transsion/transfer/androidasync/future/a;

    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->v:Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->a:Ljava/util/List;

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/transsion/transfer/androidasync/http/g;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->t:Lcom/transsion/transfer/androidasync/http/g$g;

    .line 89
    .line 90
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/http/g;->c(Lcom/transsion/transfer/androidasync/http/g$f;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    return-void
.end method

.method public w()Lcom/transsion/transfer/androidasync/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$b;->r:Lcom/transsion/transfer/androidasync/http/j;

    .line 2
    .line 3
    const-string v1, "Detaching socket"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/j;->r(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/l;->socket()Lcom/transsion/transfer/androidasync/j;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->B(Lst/j;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/s;->i(Lst/a;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->h(Lst/a;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/transsion/transfer/androidasync/p;->F(Lst/d;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/transsion/transfer/androidasync/http/l;->S(Lcom/transsion/transfer/androidasync/j;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method
