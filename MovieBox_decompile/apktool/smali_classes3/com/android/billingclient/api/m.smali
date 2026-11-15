.class public Lcom/android/billingclient/api/m;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/m$c;,
        Lcom/android/billingclient/api/m$a;,
        Lcom/android/billingclient/api/m$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/android/billingclient/api/m$c;

.field private e:Lcom/google/android/gms/internal/play_billing/zzaf;

.field private f:Ljava/util/ArrayList;

.field private g:Z


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/android/billingclient/api/m$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/m$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/m$a;-><init>(Lcom/android/billingclient/api/g0;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method static bridge synthetic j(Lcom/android/billingclient/api/m;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/m;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic k(Lcom/android/billingclient/api/m;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/m;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic l(Lcom/android/billingclient/api/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/m;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic m(Lcom/android/billingclient/api/m;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/m;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic n(Lcom/android/billingclient/api/m;Lcom/google/android/gms/internal/play_billing/zzaf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/m;->e:Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic o(Lcom/android/billingclient/api/m;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/m;->f:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic p(Lcom/android/billingclient/api/m;Lcom/android/billingclient/api/m$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/m;->d:Lcom/android/billingclient/api/m$c;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m;->d:Lcom/android/billingclient/api/m$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/m$c;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m;->d:Lcom/android/billingclient/api/m$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/m$c;->c()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m;->d:Lcom/android/billingclient/api/m$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/m$c;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m;->d:Lcom/android/billingclient/api/m$c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/m$c;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/billingclient/api/m;->f:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m;->e:Lcom/google/android/gms/internal/play_billing/zzaf;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/m;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method final r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/m;->b:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/billingclient/api/m;->c:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/billingclient/api/m;->d:Lcom/android/billingclient/api/m$c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/billingclient/api/m$c;->e()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/billingclient/api/m;->d:Lcom/android/billingclient/api/m$c;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/billingclient/api/m$c;->b()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/billingclient/api/m;->d:Lcom/android/billingclient/api/m$c;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/billingclient/api/m$c;->c()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/billingclient/api/m;->a:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/android/billingclient/api/m;->g:Z

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    return v0

    .line 43
    :cond_0
    const/4 v0, 0x1

    .line 44
    return v0
.end method
