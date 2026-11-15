.class public Lcom/google/firebase/crashlytics/internal/common/k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/firebase/sessions/api/SessionSubscriber;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/internal/common/d0;

.field private final b:Lcom/google/firebase/crashlytics/internal/common/j;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/d0;Lxb/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->a:Lcom/google/firebase/crashlytics/internal/common/d0;

    .line 5
    .line 6
    new-instance p1, Lcom/google/firebase/crashlytics/internal/common/j;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Lcom/google/firebase/crashlytics/internal/common/j;-><init>(Lxb/g;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/k;->b:Lcom/google/firebase/crashlytics/internal/common/j;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->a:Lcom/google/firebase/crashlytics/internal/common/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/d0;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b()Lcom/google/firebase/sessions/api/SessionSubscriber$Name;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/api/SessionSubscriber$Name;->CRASHLYTICS:Lcom/google/firebase/sessions/api/SessionSubscriber$Name;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/google/firebase/sessions/api/SessionSubscriber$a;)V
    .locals 3

    .line 1
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "App Quality Sessions session changed: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lqb/g;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->b:Lcom/google/firebase/crashlytics/internal/common/j;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/firebase/sessions/api/SessionSubscriber$a;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/j;->h(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->b:Lcom/google/firebase/crashlytics/internal/common/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/j;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/k;->b:Lcom/google/firebase/crashlytics/internal/common/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/j;->i(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
