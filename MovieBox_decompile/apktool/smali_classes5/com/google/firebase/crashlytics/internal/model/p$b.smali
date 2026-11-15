.class final Lcom/google/firebase/crashlytics/internal/model/p$b;
.super Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;

.field private d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

.field private e:I

.field private f:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;
    .locals 9

    .line 1
    iget-byte v0, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->f:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->a:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v3, :cond_1

    .line 9
    .line 10
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->c:Ljava/util/List;

    .line 11
    .line 12
    if-nez v5, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/p;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->b:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v6, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    .line 20
    .line 21
    iget v7, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->e:I

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    move-object v2, v0

    .line 25
    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/crashlytics/internal/model/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;ILcom/google/firebase/crashlytics/internal/model/p$a;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->a:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v2, :cond_2

    .line 37
    .line 38
    const-string v2, " type"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->c:Ljava/util/List;

    .line 44
    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    const-string v2, " frames"

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-byte v2, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->f:B

    .line 53
    .line 54
    and-int/2addr v1, v2

    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    const-string v1, " overflowCount"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v3, "Missing required properties:"

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c$a;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->c:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null frames"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public d(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->e:I

    .line 2
    .line 3
    iget-byte p1, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->f:B

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    int-to-byte p1, p1

    .line 8
    iput-byte p1, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->f:B

    .line 9
    .line 10
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c$a;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/p$b;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null type"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method
