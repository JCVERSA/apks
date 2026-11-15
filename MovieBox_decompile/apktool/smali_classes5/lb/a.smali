.class public abstract Llb/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static volatile a:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Llb/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Lcom/google/firebase/c;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Llb/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 7
    .line 8
    if-nez p0, :cond_1

    .line 9
    .line 10
    sget-object p0, Llb/a;->b:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    sget-object v0, Llb/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/google/firebase/c;->a:Lcom/google/firebase/c;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/firebase/l;->a(Lcom/google/firebase/c;)Lcom/google/firebase/f;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/firebase/f;->k()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Llb/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    monitor-exit p0

    .line 39
    throw v0

    .line 40
    :cond_1
    :goto_2
    sget-object p0, Llb/a;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method
