.class public abstract Lmw2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmw2$a;
    }
.end annotation


# static fields
.field public static a:Lmw2$a;

.field public static b:Llw2;

.field public static c:Z


# direct methods
.method public static a()V
    .locals 3

    sget-object v0, Lmw2;->a:Lmw2$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lmw2$a;->a()Z

    move-result v0

    sput-boolean v0, Lmw2;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lmw2;->a:Lmw2$a;

    sget-object v1, Llw2;->d:[I

    invoke-virtual {v0, v1}, Lmw2$a;->b([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "DolbyAudioSetting"

    const-string v2, "end getDsOn failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-boolean v0, Lmw2;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static b()I
    .locals 1

    sget-object v0, Lmw2;->b:Llw2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Llw2;->c:[I

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static c(II)I
    .locals 4

    const-string v0, "DolbyAudioSetting"

    :try_start_0
    sget-object v1, Lmw2;->b:Llw2;

    if-eqz v1, :cond_0

    iget-object v1, v1, Llw2;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    if-ltz p0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    sget-object v1, Lmw2;->b:Llw2;

    iget-object v2, v1, Llw2;->c:[I

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    array-length v2, v2

    if-ge p1, v2, :cond_0

    iget-object v1, v1, Llw2;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmw2;->f(Ljava/lang/Object;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lmw2;->b:Llw2;

    iget-object v2, v2, Llw2;->c:[I

    aget v2, v2, p1

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget p0, v1, v2

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameters for getPresetBandGains, which: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", index: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set eq getBandLevel Exception:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static d()Llw2;
    .locals 2

    sget-object v0, Lmw2;->b:Llw2;

    if-nez v0, :cond_0

    invoke-static {}, Llw2;->c()Llw2;

    move-result-object v0

    sput-object v0, Lmw2;->b:Llw2;

    if-nez v0, :cond_0

    new-instance v0, Llw2;

    invoke-direct {v0}, Llw2;-><init>()V

    sput-object v0, Lmw2;->b:Llw2;

    const-string v0, "DolbyAudioSetting"

    const-string v1, "getValues NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lmw2;->b:Llw2;

    return-object v0
.end method

.method public static e()V
    .locals 3

    :try_start_0
    invoke-static {}, Lmw2;->d()Llw2;

    move-result-object v0

    sput-object v0, Lmw2;->b:Llw2;

    new-instance v0, Lmw2$a;

    invoke-direct {v0}, Lmw2$a;-><init>()V

    sput-object v0, Lmw2;->a:Lmw2$a;

    invoke-virtual {v0}, Lmw2$a;->a()Z

    move-result v0

    sput-boolean v0, Lmw2;->c:Z

    sget-object v0, Llc3;->h:Landroidx/lifecycle/MutableLiveData;

    sget-boolean v1, Lmw2;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-boolean v0, Lmw2;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lmw2;->b:Llw2;

    invoke-virtual {v0}, Llw2;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lmw2;->b:Llw2;

    invoke-virtual {v0}, Llw2;->a()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lmw2;->g(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EqSetting exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbyAudioSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static f(Ljava/lang/Object;)[I
    .locals 7

    const/4 v0, 0x0

    const-string v1, "DolbyAudioSetting"

    if-nez p0, :cond_0

    const-string p0, "Object is null in safeGetIntArray"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    instance-of v2, p0, [I

    if-eqz v2, :cond_1

    check-cast p0, [I

    return-object p0

    :cond_1
    instance-of v2, p0, Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    :try_start_0
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [I

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-numeric item in ArrayList at index "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully converted ArrayList to int[] with size: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert ArrayList to int[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported object type in safeGetIntArray: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static g(I)V
    .locals 3

    const-string v0, "DolbyAudioSetting"

    :try_start_0
    sget-object v1, Lmw2;->b:Llw2;

    if-eqz v1, :cond_1

    iget-object v1, v1, Llw2;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    if-ltz p0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    sget-object v1, Lmw2;->b:Llw2;

    iget-object v1, v1, Llw2;->b:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lmw2;->f(Ljava/lang/Object;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lmw2;->a:Lmw2$a;

    invoke-virtual {v2, v1}, Lmw2$a;->b([I)V

    sget-object v1, Lmw2;->b:Llw2;

    invoke-virtual {v1, p0}, Llw2;->m(I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get valid gains array for index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameters for setGeqBandGains, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set eq setBandLevel Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static h()V
    .locals 4

    sget-object v0, Lmw2;->a:Lmw2$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lmw2$a;->a()Z

    move-result v0

    sput-boolean v0, Lmw2;->c:Z

    sget-object v0, Llc3;->h:Landroidx/lifecycle/MutableLiveData;

    sget-boolean v2, Lmw2;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-boolean v0, Lmw2;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lmw2;->b:Llw2;

    invoke-virtual {v0}, Llw2;->a()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lmw2;->b:Llw2;

    invoke-virtual {v0}, Llw2;->a()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lmw2;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v2, "DolbyAudioSetting"

    const-string v3, "start getDsOn failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v1, Lmw2;->c:Z

    :cond_2
    :goto_1
    return-void
.end method
