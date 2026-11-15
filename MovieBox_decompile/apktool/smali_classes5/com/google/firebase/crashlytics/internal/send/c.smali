.class public final synthetic Lcom/google/firebase/crashlytics/internal/send/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lt8/j;


# instance fields
.field public final synthetic a:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

.field public final synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/firebase/crashlytics/internal/common/a0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/send/ReportQueue;Lcom/google/android/gms/tasks/TaskCompletionSource;ZLcom/google/firebase/crashlytics/internal/common/a0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/send/c;->a:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/send/c;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/firebase/crashlytics/internal/send/c;->c:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/send/c;->d:Lcom/google/firebase/crashlytics/internal/common/a0;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/send/c;->a:Lcom/google/firebase/crashlytics/internal/send/ReportQueue;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/send/c;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/google/firebase/crashlytics/internal/send/c;->c:Z

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/send/c;->d:Lcom/google/firebase/crashlytics/internal/common/a0;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/crashlytics/internal/send/ReportQueue;->a(Lcom/google/firebase/crashlytics/internal/send/ReportQueue;Lcom/google/android/gms/tasks/TaskCompletionSource;ZLcom/google/firebase/crashlytics/internal/common/a0;Ljava/lang/Exception;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
