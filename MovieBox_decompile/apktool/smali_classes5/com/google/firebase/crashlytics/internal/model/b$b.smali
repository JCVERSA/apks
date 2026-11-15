.class final Lcom/google/firebase/crashlytics/internal/model/b$b;
.super Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

.field private k:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

.field private l:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

.field private m:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->l()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->c:I

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->d:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->h:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->i:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->n()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->j:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->k()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->k:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->c()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->l:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    const/4 p1, 0x1

    .line 16
    iput-byte p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->m:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Lcom/google/firebase/crashlytics/internal/model/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/model/b$b;-><init>(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-byte v1, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->m:B

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->a:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->b:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->d:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->h:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->i:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Lcom/google/firebase/crashlytics/internal/model/b;

    .line 30
    .line 31
    iget-object v4, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->a:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v5, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->b:Ljava/lang/String;

    .line 34
    .line 35
    iget v6, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->c:I

    .line 36
    .line 37
    iget-object v7, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->d:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v8, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->e:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v9, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->f:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v10, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->g:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v11, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->h:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v12, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->i:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v13, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->j:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    .line 50
    .line 51
    iget-object v14, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->k:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    .line 52
    .line 53
    iget-object v15, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->l:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    .line 54
    .line 55
    const/16 v16, 0x0

    .line 56
    .line 57
    move-object v3, v1

    .line 58
    invoke-direct/range {v3 .. v16}, Lcom/google/firebase/crashlytics/internal/model/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;Lcom/google/firebase/crashlytics/internal/model/b$a;)V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v3, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->a:Ljava/lang/String;

    .line 68
    .line 69
    if-nez v3, :cond_2

    .line 70
    .line 71
    const-string v3, " sdkVersion"

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_2
    iget-object v3, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->b:Ljava/lang/String;

    .line 77
    .line 78
    if-nez v3, :cond_3

    .line 79
    .line 80
    const-string v3, " gmpAppId"

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-byte v3, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->m:B

    .line 86
    .line 87
    and-int/2addr v2, v3

    .line 88
    if-nez v2, :cond_4

    .line 89
    .line 90
    const-string v2, " platform"

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->d:Ljava/lang/String;

    .line 96
    .line 97
    if-nez v2, :cond_5

    .line 98
    .line 99
    const-string v2, " installationUuid"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :cond_5
    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->h:Ljava/lang/String;

    .line 105
    .line 106
    if-nez v2, :cond_6

    .line 107
    .line 108
    const-string v2, " buildVersion"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_6
    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/model/b$b;->i:Ljava/lang/String;

    .line 114
    .line 115
    if-nez v2, :cond_7

    .line 116
    .line 117
    const-string v2, " displayVersion"

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 123
    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v4, "Missing required properties:"

    .line 130
    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v2
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->l:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->h:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null buildVersion"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->i:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null displayVersion"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null gmpAppId"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public i(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->d:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null installationUuid"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public j(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->k:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public k(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->c:I

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->m:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->m:B

    .line 9
    .line 10
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null sdkVersion"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public m(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/b$b;->j:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    .line 2
    .line 3
    return-object p0
.end method
