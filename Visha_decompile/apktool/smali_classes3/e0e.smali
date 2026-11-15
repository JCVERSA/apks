.class public final Le0e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxd;

.field public final b:Lcom/google/android/gms/common/Feature;


# direct methods
.method public synthetic constructor <init>(Lxd;Lcom/google/android/gms/common/Feature;Ld0e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le0e;->a:Lxd;

    iput-object p2, p0, Le0e;->b:Lcom/google/android/gms/common/Feature;

    return-void
.end method

.method public static bridge synthetic a(Le0e;)Lcom/google/android/gms/common/Feature;
    .locals 0

    iget-object p0, p0, Le0e;->b:Lcom/google/android/gms/common/Feature;

    return-object p0
.end method

.method public static bridge synthetic b(Le0e;)Lxd;
    .locals 0

    iget-object p0, p0, Le0e;->a:Lxd;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Le0e;

    if-eqz v1, :cond_0

    check-cast p1, Le0e;

    iget-object v1, p0, Le0e;->a:Lxd;

    iget-object v2, p1, Le0e;->a:Lxd;

    invoke-static {v1, v2}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Le0e;->b:Lcom/google/android/gms/common/Feature;

    iget-object p1, p1, Le0e;->b:Lcom/google/android/gms/common/Feature;

    invoke-static {p0, p1}, Ljc7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Le0e;->a:Lxd;

    iget-object p0, p0, Le0e;->b:Lcom/google/android/gms/common/Feature;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljc7;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Ljc7;->c(Ljava/lang/Object;)Ljc7$a;

    move-result-object v0

    const-string v1, "key"

    iget-object v2, p0, Le0e;->a:Lxd;

    invoke-virtual {v0, v1, v2}, Ljc7$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljc7$a;

    move-result-object v0

    const-string v1, "feature"

    iget-object p0, p0, Le0e;->b:Lcom/google/android/gms/common/Feature;

    invoke-virtual {v0, v1, p0}, Ljc7$a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljc7$a;

    move-result-object p0

    invoke-virtual {p0}, Ljc7$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
