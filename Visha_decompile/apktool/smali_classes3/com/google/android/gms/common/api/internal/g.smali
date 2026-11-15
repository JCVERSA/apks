.class public Lcom/google/android/gms/common/api/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/g$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/f;

.field public final b:Lcom/google/android/gms/common/api/internal/h;

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/h;Ljava/lang/Runnable;Lr0e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g;->a:Lcom/google/android/gms/common/api/internal/f;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/g;->b:Lcom/google/android/gms/common/api/internal/h;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/g;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static a()Lcom/google/android/gms/common/api/internal/g$a;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/internal/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/g$a;-><init>(Lq0e;)V

    return-object v0
.end method
