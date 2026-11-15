.class public final Lcom/google/android/gms/tasks/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmhj;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lxh1;

.field public final c:Leoj;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lxh1;Leoj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/b;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/b;->b:Lxh1;

    iput-object p3, p0, Lcom/google/android/gms/tasks/b;->c:Leoj;

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/android/gms/tasks/b;)Lxh1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/b;->b:Lxh1;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/android/gms/tasks/b;)Leoj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/b;->c:Leoj;

    return-object p0
.end method


# virtual methods
.method public final c(Lxda;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tasks/zzc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tasks/zzc;-><init>(Lcom/google/android/gms/tasks/b;Lxda;)V

    iget-object p0, p0, Lcom/google/android/gms/tasks/b;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
