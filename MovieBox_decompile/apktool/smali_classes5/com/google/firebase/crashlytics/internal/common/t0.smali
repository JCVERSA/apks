.class public final synthetic Lcom/google/firebase/crashlytics/internal/common/t0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/internal/common/w0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/common/w0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/t0;->a:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/t0;->a:Lcom/google/firebase/crashlytics/internal/common/w0;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/w0;->b(Lcom/google/firebase/crashlytics/internal/common/w0;Lcom/google/android/gms/tasks/Task;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
