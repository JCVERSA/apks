.class public abstract Lerh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lim5;


# instance fields
.field public final a:Lg8i;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lfrh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object v0

    sput-object v0, Lerh;->d:Lim5;

    return-void
.end method

.method public constructor <init>(Lg8i;Ljava/util/concurrent/ScheduledExecutorService;Lfrh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lerh;->a:Lg8i;

    iput-object p2, p0, Lerh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lerh;->c:Lfrh;

    return-void
.end method

.method public static bridge synthetic c(Lerh;)Lfrh;
    .locals 0

    iget-object p0, p0, Lerh;->c:Lfrh;

    return-object p0
.end method

.method public static bridge synthetic d()Lim5;
    .locals 1

    sget-object v0, Lerh;->d:Lim5;

    return-object v0
.end method

.method public static bridge synthetic e(Lerh;)Lg8i;
    .locals 0

    iget-object p0, p0, Lerh;->a:Lg8i;

    return-object p0
.end method

.method public static bridge synthetic g(Lerh;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lerh;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Lim5;)Lvqh;
    .locals 2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lvqh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lvqh;-><init>(Lerh;Ljava/lang/Object;Ljava/util/List;Ldrh;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Lim5;)Lcrh;
    .locals 9

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v8, Lcrh;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcrh;-><init>(Lerh;Ljava/lang/Object;Ljava/lang/String;Lim5;Ljava/util/List;Lim5;Ldrh;)V

    return-object v8
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/String;
.end method
