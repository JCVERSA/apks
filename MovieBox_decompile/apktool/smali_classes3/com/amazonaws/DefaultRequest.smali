.class public Lcom/amazonaws/DefaultRequest;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/amazonaws/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/Request<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private e:Ljava/net/URI;

.field private f:Ljava/lang/String;

.field private final g:Lcom/amazonaws/AmazonWebServiceRequest;

.field private h:Lcom/amazonaws/http/HttpMethodName;

.field private i:Ljava/io/InputStream;

.field private j:I

.field private k:Lcom/amazonaws/util/AWSRequestMetrics;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amazonaws/DefaultRequest;->b:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/amazonaws/DefaultRequest;->c:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/amazonaws/DefaultRequest;->d:Ljava/util/Map;

    .line 20
    .line 21
    sget-object v0, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/amazonaws/DefaultRequest;->h:Lcom/amazonaws/http/HttpMethodName;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/amazonaws/DefaultRequest;->f:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->g:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->i:Ljava/io/InputStream;

    .line 2
    .line 3
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Lcom/amazonaws/util/AWSRequestMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->k:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amazonaws/DefaultRequest;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amazonaws/DefaultRequest;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->i:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Lcom/amazonaws/util/AWSRequestMetrics;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->k:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->k:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "AWSRequestMetrics has already been set on this request"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public i(Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->d:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/DefaultRequest;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Lcom/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->g:Lcom/amazonaws/AmazonWebServiceRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Lcom/amazonaws/http/HttpMethodName;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->h:Lcom/amazonaws/http/HttpMethodName;

    .line 2
    .line 3
    return-object v0
.end method

.method public n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/DefaultRequest;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public o(Lcom/amazonaws/http/HttpMethodName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->h:Lcom/amazonaws/http/HttpMethodName;

    .line 2
    .line 3
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(Ljava/util/Map;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->c:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public r()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/DefaultRequest;->e:Ljava/net/URI;

    .line 2
    .line 3
    return-object v0
.end method

.method public s(Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/DefaultRequest;->e:Ljava/net/URI;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->m()Lcom/amazonaws/http/HttpMethodName;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->r()Ljava/net/URI;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->p()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "/"

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const-string v2, ") "

    .line 64
    .line 65
    const-string v3, ", "

    .line 66
    .line 67
    const-string v4, ": "

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    const-string v1, "Parameters: ("

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getParameters()Ljava/util/Map;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_5

    .line 135
    .line 136
    const-string v1, "Headers: ("

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-eqz v5, :cond_4

    .line 158
    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    check-cast v5, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/amazonaws/DefaultRequest;->getHeaders()Ljava/util/Map;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    check-cast v6, Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    return-object v0
.end method
