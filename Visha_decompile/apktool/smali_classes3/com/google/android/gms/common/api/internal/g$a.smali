.class public Lcom/google/android/gms/common/api/internal/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Las8;

.field public b:Las8;

.field public c:Ljava/lang/Runnable;

.field public d:Lcom/google/android/gms/common/api/internal/d;

.field public e:[Lcom/google/android/gms/common/Feature;

.field public f:Z

.field public g:I


# direct methods
.method public synthetic constructor <init>(Lq0e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/google/android/gms/common/api/internal/zacj;->zaa:Lcom/google/android/gms/common/api/internal/zacj;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->c:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Z

    return-void
.end method

.method public static bridge synthetic f(Lcom/google/android/gms/common/api/internal/g$a;)Las8;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/g$a;->a:Las8;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/google/android/gms/common/api/internal/g$a;)Las8;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/g$a;->b:Las8;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/internal/g;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->a:Las8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Must set register function"

    invoke-static {v0, v3}, Lwd8;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->b:Las8;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "Must set unregister function"

    invoke-static {v0, v3}, Lwd8;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->d:Lcom/google/android/gms/common/api/internal/d;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "Must set holder"

    invoke-static {v1, v0}, Lwd8;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/g$a;->d:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/d;->b()Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    const-string v1, "Key must not be null"

    invoke-static {v0, v1}, Lwd8;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/d$a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/g;

    new-instance v8, Lcom/google/android/gms/common/api/internal/o;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/g$a;->d:Lcom/google/android/gms/common/api/internal/d;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/g$a;->e:[Lcom/google/android/gms/common/Feature;

    iget-boolean v6, p0, Lcom/google/android/gms/common/api/internal/g$a;->f:Z

    iget v7, p0, Lcom/google/android/gms/common/api/internal/g$a;->g:I

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/common/api/internal/o;-><init>(Lcom/google/android/gms/common/api/internal/g$a;Lcom/google/android/gms/common/api/internal/d;[Lcom/google/android/gms/common/Feature;ZI)V

    new-instance v2, Lcom/google/android/gms/common/api/internal/p;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/common/api/internal/p;-><init>(Lcom/google/android/gms/common/api/internal/g$a;Lcom/google/android/gms/common/api/internal/d$a;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/g$a;->c:Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-direct {v1, v8, v2, p0, v0}, Lcom/google/android/gms/common/api/internal/g;-><init>(Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/internal/h;Ljava/lang/Runnable;Lr0e;)V

    return-object v1
.end method

.method public b(Las8;)Lcom/google/android/gms/common/api/internal/g$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->a:Las8;

    return-object p0
.end method

.method public c(I)Lcom/google/android/gms/common/api/internal/g$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->g:I

    return-object p0
.end method

.method public d(Las8;)Lcom/google/android/gms/common/api/internal/g$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->b:Las8;

    return-object p0
.end method

.method public e(Lcom/google/android/gms/common/api/internal/d;)Lcom/google/android/gms/common/api/internal/g$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/g$a;->d:Lcom/google/android/gms/common/api/internal/d;

    return-object p0
.end method
