.class public final synthetic Lcom/google/firebase/remoteconfig/internal/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic a:Lcom/google/firebase/remoteconfig/internal/e;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/firebase/remoteconfig/internal/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/e;ZLcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/d;->a:Lcom/google/firebase/remoteconfig/internal/e;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/firebase/remoteconfig/internal/d;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/d;->c:Lcom/google/firebase/remoteconfig/internal/f;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/d;->a:Lcom/google/firebase/remoteconfig/internal/e;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/google/firebase/remoteconfig/internal/d;->b:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/d;->c:Lcom/google/firebase/remoteconfig/internal/f;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Void;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/remoteconfig/internal/e;->a(Lcom/google/firebase/remoteconfig/internal/e;ZLcom/google/firebase/remoteconfig/internal/f;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
