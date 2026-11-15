.class final Lcom/google/firebase/crashlytics/internal/model/n$b;
.super Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

.field private c:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

.field private d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

.field private e:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b;
    .locals 8

    .line 1
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    .line 2
    .line 3
    if-eqz v4, :cond_1

    .line 4
    .line 5
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->e:Ljava/util/List;

    .line 6
    .line 7
    if-nez v5, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v7, Lcom/google/firebase/crashlytics/internal/model/n;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->a:Ljava/util/List;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->c:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v0, v7

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/crashlytics/internal/model/n;-><init>(Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/n$a;)V

    .line 21
    .line 22
    .line 23
    return-object v7

    .line 24
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    const-string v1, " signal"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->e:Ljava/util/List;

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, " binaries"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "Missing required properties:"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1
.end method

.method public b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->c:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->e:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null binaries"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public d(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->b:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->d:Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$d;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null signal"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public f(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/n$b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
