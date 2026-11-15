.class public abstract Lx6e;
.super Lcom/google/android/gms/common/api/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/d;


# static fields
.field public static final k:Lcom/google/android/gms/common/api/a$g;

.field public static final l:Lcom/google/android/gms/common/api/a$a;

.field public static final m:Lcom/google/android/gms/common/api/a;

.field public static final n:Lnq5;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lx6e;->k:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lfnj;

    invoke-direct {v1}, Lfnj;-><init>()V

    sput-object v1, Lx6e;->l:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "GoogleAuthService.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lx6e;->m:Lcom/google/android/gms/common/api/a;

    const-string v0, "GoogleAuthServiceClient"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4g;->a([Ljava/lang/String;)Lnq5;

    move-result-object v0

    sput-object v0, Lx6e;->n:Lnq5;

    return-void
.end method

.method public static bridge synthetic v(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljea;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lzda;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lx6e;->n:Lnq5;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "The task is already complete."

    invoke-virtual {p0, p2, p1}, Lnq5;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
