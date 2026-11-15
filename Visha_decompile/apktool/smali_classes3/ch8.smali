.class public abstract Lch8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lch8;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch8;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lch8;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Z
    .locals 4

    sget-object v0, Lch8;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {}, Ld28;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v0, Landroid/os/Process;

    const-string v1, "isIsolated"

    const/4 v2, 0x0

    new-array v3, v2, [Lk1j;

    invoke-static {v0, v1, v3}, Le4j;->a(Ljava/lang/Class;Ljava/lang/String;[Lk1j;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "expected a non-null reference"

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/common/zzy;

    invoke-static {v2, v1}, Lhpj;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/common/zzy;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    sput-object v0, Lch8;->b:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
