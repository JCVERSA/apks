.class public final Lrwh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:I = 0x1


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lxda;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lxda;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrwh;->a:Landroid/content/Context;

    iput-object p2, p0, Lrwh;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lrwh;->c:Lxda;

    iput-boolean p4, p0, Lrwh;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lrwh;
    .locals 2

    new-instance v0, Lzda;

    invoke-direct {v0}, Lzda;-><init>()V

    if-eqz p2, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmp;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfmp;-><init>(Landroid/content/Context;Lzda;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfmq;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfmq;-><init>(Lzda;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    new-instance v1, Lrwh;

    invoke-virtual {v0}, Lzda;->a()Lxda;

    move-result-object v0

    invoke-direct {v1, p0, p1, v0, p2}, Lrwh;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lxda;Z)V

    return-object v1
.end method

.method public static g(I)V
    .locals 0

    sput p0, Lrwh;->e:I

    return-void
.end method


# virtual methods
.method public final b(ILjava/lang/String;)Lxda;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lrwh;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final c(IJLjava/lang/Exception;)Lxda;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lrwh;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final d(IJ)Lxda;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v7}, Lrwh;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final e(IJLjava/lang/String;)Lxda;
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lrwh;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final f(IJLjava/lang/String;Ljava/util/Map;)Lxda;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v7}, Lrwh;->h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lxda;

    move-result-object p0

    return-object p0
.end method

.method public final h(IJLjava/lang/Exception;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lxda;
    .locals 1

    iget-boolean p6, p0, Lrwh;->d:Z

    if-nez p6, :cond_0

    iget-object p1, p0, Lrwh;->c:Lxda;

    iget-object p0, p0, Lrwh;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lpwh;

    invoke-direct {p2}, Lpwh;-><init>()V

    invoke-virtual {p1, p0, p2}, Lxda;->i(Ljava/util/concurrent/Executor;Lxh1;)Lxda;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p6, p0, Lrwh;->a:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/ads/g;->b0()Lboe;

    move-result-object v0

    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Lboe;->v(Ljava/lang/String;)Lboe;

    invoke-virtual {v0, p2, p3}, Lboe;->z(J)Lboe;

    sget p2, Lrwh;->e:I

    invoke-virtual {v0, p2}, Lboe;->B(I)Lboe;

    if-eqz p4, :cond_1

    sget-object p2, Ln3i;->a:Ljava/lang/Object;

    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    new-instance p3, Ljava/io/PrintWriter;

    invoke-direct {p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p4, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lboe;->A(Ljava/lang/String;)Lboe;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lboe;->y(Ljava/lang/String;)Lboe;

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {v0, p7}, Lboe;->w(Ljava/lang/String;)Lboe;

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {v0, p5}, Lboe;->x(Ljava/lang/String;)Lboe;

    :cond_3
    iget-object p2, p0, Lrwh;->c:Lxda;

    iget-object p0, p0, Lrwh;->b:Ljava/util/concurrent/Executor;

    new-instance p3, Lqwh;

    invoke-direct {p3, v0, p1}, Lqwh;-><init>(Lboe;I)V

    invoke-virtual {p2, p0, p3}, Lxda;->i(Ljava/util/concurrent/Executor;Lxh1;)Lxda;

    move-result-object p0

    return-object p0
.end method
