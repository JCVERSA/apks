.class public abstract Lcom/blankj/utilcode/util/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/Utils$b;,
        Lcom/blankj/utilcode/util/Utils$a;,
        Lcom/blankj/utilcode/util/Utils$c;,
        Lcom/blankj/utilcode/util/Utils$Task;
    }
.end annotation


# static fields
.field public static a:Landroid/app/Application;


# direct methods
.method public static a()Landroid/app/Application;
    .locals 2

    sget-object v0, Lcom/blankj/utilcode/util/Utils;->a:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/h;->k()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/Utils;->b(Landroid/app/Application;)V

    sget-object v0, Lcom/blankj/utilcode/util/Utils;->a:Landroid/app/Application;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/h;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reflect app success."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/blankj/utilcode/util/Utils;->a:Landroid/app/Application;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "reflect failed."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/app/Application;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "Utils"

    const-string v0, "app is null."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/Utils;->a:Landroid/app/Application;

    if-nez v0, :cond_1

    sput-object p0, Lcom/blankj/utilcode/util/Utils;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/blankj/utilcode/util/h;->u(Landroid/app/Application;)V

    invoke-static {}, Lcom/blankj/utilcode/util/h;->G()V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/blankj/utilcode/util/Utils;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/blankj/utilcode/util/h;->M(Landroid/app/Application;)V

    sput-object p0, Lcom/blankj/utilcode/util/Utils;->a:Landroid/app/Application;

    invoke-static {p0}, Lcom/blankj/utilcode/util/h;->u(Landroid/app/Application;)V

    return-void
.end method
