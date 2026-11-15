.class public abstract Lyda;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyda$a;
    }
.end annotation


# instance fields
.field public final a:[Lcom/google/android/gms/common/Feature;

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>([Lcom/google/android/gms/common/Feature;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyda;->a:[Lcom/google/android/gms/common/Feature;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lyda;->b:Z

    iput p3, p0, Lyda;->c:I

    return-void
.end method

.method public static a()Lyda$a;
    .locals 2

    new-instance v0, Lyda$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyda$a;-><init>(Lu0e;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Lcom/google/android/gms/common/api/a$b;Lzda;)V
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lyda;->b:Z

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lyda;->c:I

    return p0
.end method

.method public final e()[Lcom/google/android/gms/common/Feature;
    .locals 0

    iget-object p0, p0, Lyda;->a:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method
