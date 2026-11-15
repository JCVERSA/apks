.class public abstract Ltte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/e0;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Looe;

.field public f:Ljava/lang/reflect/Method;

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    iput-object p2, p0, Ltte;->c:Ljava/lang/String;

    iput-object p3, p0, Ltte;->d:Ljava/lang/String;

    iput-object p4, p0, Ltte;->e:Looe;

    iput p5, p0, Ltte;->g:I

    iput p6, p0, Ltte;->h:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 11

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    iget-object v3, p0, Ltte;->c:Ljava/lang/String;

    iget-object v4, p0, Ltte;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/e0;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Ltte;->f:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltte;->a()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/e0;->d()Lcom/google/android/gms/internal/ads/d0;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v6, p0, Ltte;->g:I

    const/high16 v2, -0x80000000

    if-eq v6, v2, :cond_1

    iget v5, p0, Ltte;->h:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long v7, v2, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/d0;->c(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
