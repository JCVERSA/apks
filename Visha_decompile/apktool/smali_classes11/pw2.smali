.class public abstract Lpw2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpw2$a;
    }
.end annotation


# static fields
.field public static a:Lpw2$a; = null

.field public static b:Low2; = null

.field public static c:Z = false

.field public static d:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lpw2;->d:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lpw2;->a:Lpw2$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lpw2$a;->c(Z)V

    sget-object v0, Lpw2;->a:Lpw2$a;

    invoke-virtual {v0, v1}, Lpw2$a;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "EqVideoSetting"

    const-string v2, "end failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static b()Low2;
    .locals 2

    sget-object v0, Lpw2;->b:Low2;

    if-nez v0, :cond_0

    invoke-static {}, Low2;->a()Low2;

    move-result-object v0

    sput-object v0, Lpw2;->b:Low2;

    if-nez v0, :cond_0

    new-instance v0, Low2;

    invoke-direct {v0}, Low2;-><init>()V

    sput-object v0, Lpw2;->b:Low2;

    const-string v0, "EqVideoSetting"

    const-string v1, "getValues NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lpw2;->b:Low2;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lpp3;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lpw2;->b()Low2;

    move-result-object v0

    sput-object v0, Lpw2;->b:Low2;

    new-instance v0, Lpw2$a;

    invoke-direct {v0, p0}, Lpw2$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lpw2;->a:Lpw2$a;

    invoke-virtual {v0}, Lpw2$a;->a()Z

    move-result p0

    sput-boolean p0, Lpw2;->c:Z

    sget-object v0, Lpw2;->d:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    sget-boolean p0, Lpw2;->c:Z

    if-eqz p0, :cond_1

    sget-object p0, Lpw2;->b:Low2;

    iget p0, p0, Low2;->a:I

    invoke-static {p0}, Lpw2;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EqSetting exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EqVideoSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static d(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lpw2;->a:Lpw2$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpw2$a;->c(Z)V

    sget-object v0, Lpw2;->a:Lpw2$a;

    invoke-virtual {v0, p0}, Lpw2$a;->b(I)V

    sget-object v0, Lpw2;->b:Low2;

    iput p0, v0, Low2;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set eq setBandLevel Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EqVideoSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static e()V
    .locals 3

    sget-object v0, Lpw2;->a:Lpw2$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lpw2$a;->a()Z

    move-result v0

    sput-boolean v0, Lpw2;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lpw2;->b()Low2;

    move-result-object v0

    iget v0, v0, Low2;->a:I

    invoke-static {v0}, Lpw2;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "EqVideoSetting"

    const-string v2, "start getDsOn failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-boolean v0, Lpw2;->c:Z

    :cond_1
    :goto_0
    return-void
.end method
