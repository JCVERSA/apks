.class public final Lcom/google/android/gms/tasks/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llf7;
.implements Lre7;
.implements Lne7;
.implements Lmhj;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lq6a;

.field public final c:Leoj;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lq6a;Leoj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tasks/h;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/tasks/h;->b:Lq6a;

    iput-object p3, p0, Lcom/google/android/gms/tasks/h;->c:Leoj;

    return-void
.end method

.method public static bridge synthetic d(Lcom/google/android/gms/tasks/h;)Lq6a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/h;->b:Lq6a;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/h;->c:Leoj;

    invoke-virtual {p0, p1}, Leoj;->s(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/h;->c:Leoj;

    invoke-virtual {p0}, Leoj;->u()Z

    return-void
.end method

.method public final c(Lxda;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tasks/zzo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tasks/zzo;-><init>(Lcom/google/android/gms/tasks/h;Lxda;)V

    iget-object p0, p0, Lcom/google/android/gms/tasks/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/tasks/h;->c:Leoj;

    invoke-virtual {p0, p1}, Leoj;->t(Ljava/lang/Object;)V

    return-void
.end method
