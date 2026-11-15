.class public abstract Lyj/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Z

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 2

    .line 1
    sget-object v0, Lyj/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v1, "u should init first"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lyj/a;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lyj/a;->d:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sput-object p0, Lyj/a;->a:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/transsion/core/utils/f;->a(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lyj/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public static d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lyj/a;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lyj/a;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lyj/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public static f(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lyj/a;->b:Z

    .line 2
    .line 3
    return-void
.end method
