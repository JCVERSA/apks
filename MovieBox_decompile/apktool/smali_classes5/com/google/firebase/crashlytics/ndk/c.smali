.class Lcom/google/firebase/crashlytics/ndk/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lqb/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/ndk/c$a;
    }
.end annotation


# static fields
.field private static e:Lcom/google/firebase/crashlytics/ndk/c;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/ndk/a;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/google/firebase/crashlytics/ndk/c$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/ndk/a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/a;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/ndk/c;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/crashlytics/ndk/c;Ljava/lang/String;Ljava/lang/String;JLub/e;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/crashlytics/ndk/c;->g(Ljava/lang/String;Ljava/lang/String;JLub/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static f(Landroid/content/Context;Z)Lcom/google/firebase/crashlytics/ndk/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/ndk/a;

    .line 2
    .line 3
    new-instance v1, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lxb/g;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Lxb/g;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/crashlytics/ndk/a;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/ndk/e;Lxb/g;)V

    .line 14
    .line 15
    .line 16
    new-instance p0, Lcom/google/firebase/crashlytics/ndk/c;

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/crashlytics/ndk/c;-><init>(Lcom/google/firebase/crashlytics/ndk/a;Z)V

    .line 19
    .line 20
    .line 21
    sput-object p0, Lcom/google/firebase/crashlytics/ndk/c;->e:Lcom/google/firebase/crashlytics/ndk/c;

    .line 22
    .line 23
    return-object p0
.end method

.method private synthetic g(Ljava/lang/String;Ljava/lang/String;JLub/e;)V
    .locals 8

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
    const-string v2, "Initializing native session: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    iget-object v2, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/a;

    .line 26
    .line 27
    move-object v3, p1

    .line 28
    move-object v4, p2

    .line 29
    move-wide v5, p3

    .line 30
    move-object v7, p5

    .line 31
    invoke-virtual/range {v2 .. v7}, Lcom/google/firebase/crashlytics/ndk/a;->k(Ljava/lang/String;Ljava/lang/String;JLub/e;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lqb/g;->f()Lqb/g;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    new-instance p3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string p4, "Failed to initialize Crashlytics NDK for session "

    .line 47
    .line 48
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p2, p1}, Lqb/g;->k(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lqb/h;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/ndk/g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/a;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/ndk/a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/ndk/g;-><init>(Lcom/google/firebase/crashlytics/ndk/f;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/ndk/c;->d(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;JLub/e;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/c;->c:Ljava/lang/String;

    .line 3
    .line 4
    new-instance v7, Lcom/google/firebase/crashlytics/ndk/b;

    .line 5
    .line 6
    move-object v0, v7

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-wide v4, p3

    .line 11
    move-object v6, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/crashlytics/ndk/b;-><init>(Lcom/google/firebase/crashlytics/ndk/c;Ljava/lang/String;Ljava/lang/String;JLub/e;)V

    .line 13
    .line 14
    .line 15
    iput-object v7, p0, Lcom/google/firebase/crashlytics/ndk/c;->d:Lcom/google/firebase/crashlytics/ndk/c$a;

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/google/firebase/crashlytics/ndk/c;->b:Z

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-interface {v7}, Lcom/google/firebase/crashlytics/ndk/c$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/ndk/a;->j(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
