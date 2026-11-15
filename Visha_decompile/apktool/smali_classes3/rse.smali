.class public final Lrse;
.super Ltte;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V
    .locals 7

    const-string v3, "vXYwSfgYAf7Qju1dl2aLGAb3jpSjakcmzbZlMMTwaIs="

    const/16 v6, 0x31

    const-string v2, "fKVfiHZPk3J/7s88V7DzlZpEiXT6V6JMDKZcc8OXmSTlXSMCJqbgkpAjwt4Hv42+"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ltte;-><init>(Lcom/google/android/gms/internal/ads/e0;Ljava/lang/String;Ljava/lang/String;Looe;II)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ltte;->e:Looe;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Looe;->U(I)Looe;

    :try_start_0
    iget-object v1, p0, Ltte;->f:Ljava/lang/reflect/Method;

    iget-object p0, p0, Ltte;->b:Lcom/google/android/gms/internal/ads/e0;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e0;->b()Landroid/content/Context;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v1, 0x1

    if-eq v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Looe;->U(I)Looe;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/provider/Settings$SettingNotFoundException;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    throw p0
.end method
