.class public abstract Lcom/google/android/gms/common/api/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/d;

.field public final b:[Lcom/google/android/gms/common/Feature;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d;[Lcom/google/android/gms/common/Feature;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->a:Lcom/google/android/gms/common/api/internal/d;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/f;->b:[Lcom/google/android/gms/common/Feature;

    iput-boolean p3, p0, Lcom/google/android/gms/common/api/internal/f;->c:Z

    iput p4, p0, Lcom/google/android/gms/common/api/internal/f;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->a:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d;->a()V

    return-void
.end method

.method public b()Lcom/google/android/gms/common/api/internal/d$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->a:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/d;->b()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object p0

    return-object p0
.end method

.method public c()[Lcom/google/android/gms/common/Feature;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->b:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public abstract d(Lcom/google/android/gms/common/api/a$b;Lzda;)V
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/api/internal/f;->d:I

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/f;->c:Z

    return p0
.end method
