.class public final Lxd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/common/api/a;

.field public final c:Lcom/google/android/gms/common/api/a$d;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd;->b:Lcom/google/android/gms/common/api/a;

    iput-object p2, p0, Lxd;->c:Lcom/google/android/gms/common/api/a$d;

    iput-object p3, p0, Lxd;->d:Ljava/lang/String;

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljc7;->b([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lxd;->a:I

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lxd;
    .locals 1

    new-instance v0, Lxd;

    invoke-direct {v0, p0, p1, p2}, Lxd;-><init>(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lxd;->b:Lcom/google/android/gms/common/api/a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/a;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lxd;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lxd;

    iget-object v2, p0, Lxd;->b:Lcom/google/android/gms/common/api/a;

    iget-object v3, p1, Lxd;->b:Lcom/google/android/gms/common/api/a;

    invoke-static {v2, v3}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lxd;->c:Lcom/google/android/gms/common/api/a$d;

    iget-object v3, p1, Lxd;->c:Lcom/google/android/gms/common/api/a$d;

    invoke-static {v2, v3}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lxd;->d:Ljava/lang/String;

    iget-object p1, p1, Lxd;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lxd;->a:I

    return p0
.end method
