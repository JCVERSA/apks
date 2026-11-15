.class public final Lkzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk08$a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lozd;


# direct methods
.method public constructor <init>(Lozd;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Lkzd;->b:Lozd;

    iput-object p2, p0, Lkzd;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iget-object p1, p0, Lkzd;->b:Lozd;

    invoke-static {p1}, Lozd;->a(Lozd;)Ljava/util/Map;

    move-result-object p1

    iget-object p0, p0, Lkzd;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
