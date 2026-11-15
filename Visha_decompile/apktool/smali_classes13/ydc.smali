.class public abstract Lydc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = false

.field public static d:I = -0x1

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()I
    .locals 2

    sget v0, Lydc;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/b;->b()I

    move-result v0

    sput v0, Lydc;->d:I

    :cond_0
    sget v0, Lydc;->d:I

    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lydc;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/b;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lydc;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lydc;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lydc;->b:Z

    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lydc;->a:Z

    return-void
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lydc;->b:Z

    return v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lydc;->c:Z

    return v0
.end method

.method public static g()Z
    .locals 1

    sget-boolean v0, Lydc;->a:Z

    return v0
.end method

.method public static h(Z)V
    .locals 0

    sput-boolean p0, Lydc;->c:Z

    return-void
.end method
