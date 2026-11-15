.class public abstract Lfq5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "Logan"

.field public static b:Lef7; = null

.field public static c:Lcom/transsion/log/common/a; = null

.field public static d:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lyb9;)V
    .locals 1

    sget-object v0, Lfq5;->c:Lcom/transsion/log/common/a;

    if-nez v0, :cond_0

    sget-object p0, Lfq5;->a:Ljava/lang/String;

    const-string v0, "Please initialize Logan first"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/transsion/log/common/a;->g(Lyb9;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lfq5;->c:Lcom/transsion/log/common/a;

    if-nez v0, :cond_0

    sget-object v0, Lfq5;->a:Ljava/lang/String;

    const-string v1, "Please initialize Logan first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lfq5;->c:Lcom/transsion/log/common/a;

    invoke-virtual {v0, p0}, Lcom/transsion/log/common/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c()Ljava/util/List;
    .locals 3

    sget-object v0, Lfq5;->c:Lcom/transsion/log/common/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lfq5;->a:Ljava/lang/String;

    const-string v2, "Please initialize Logan first"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/log/common/a;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public static d()Lsr3;
    .locals 2

    sget-object v0, Lfq5;->c:Lcom/transsion/log/common/a;

    if-nez v0, :cond_0

    sget-object v0, Lfq5;->a:Ljava/lang/String;

    const-string v1, "Please initialize Logan first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/log/common/a;->d()Lsr3;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lwdb;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/log/common/a;->f(Lwdb;)Lcom/transsion/log/common/a;

    move-result-object p0

    sput-object p0, Lfq5;->c:Lcom/transsion/log/common/a;

    return-void
.end method

.method public static f(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lfq5;->b:Lef7;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lef7;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lfq5;->c:Lcom/transsion/log/common/a;

    if-nez v0, :cond_0

    sget-object p0, Lfq5;->a:Ljava/lang/String;

    const-string p1, "Please initialize Logan first"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/transsion/log/common/a;->h(Ljava/lang/String;I)V

    return-void
.end method
