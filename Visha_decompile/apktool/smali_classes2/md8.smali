.class public abstract Lmd8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = null

.field public static c:I = 0x0

.field public static d:I = -0x1

.field public static e:Ljava/lang/String; = null

.field public static f:I = -0x1

.field public static g:I = -0x1

.field public static h:I = -0x1

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:I

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final s:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmd8;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmd8;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd8;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lmd8;->k:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd8;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmd8;->q:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd8;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lmd8;->e:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    sget-object v0, Lmd8;->i:Ljava/lang/String;

    sget-object v1, Lmd8;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->b(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmd8;->i:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    sget-object v0, Lmd8;->j:Ljava/lang/String;

    sget-object v1, Lmd8;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->b(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmd8;->j:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd8;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lmd8;->l:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static g()I
    .locals 1

    sget v0, Lmd8;->n:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->l()I

    move-result v0

    sput v0, Lmd8;->n:I

    :cond_0
    sget v0, Lmd8;->n:I

    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd8;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->n()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmd8;->m:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static i()I
    .locals 2

    sget v0, Lmd8;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lhm4;->b()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lmd8;->h:I

    :cond_0
    sget v0, Lmd8;->h:I

    return v0
.end method

.method public static j()I
    .locals 2

    sget v0, Lmd8;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lhm4;->g()I

    move-result v0

    sput v0, Lmd8;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sget v0, Lmd8;->g:I

    return v0
.end method

.method public static k()I
    .locals 2

    sget v0, Lmd8;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lhm4;->h()I

    move-result v0

    sput v0, Lmd8;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sget v0, Lmd8;->f:I

    return v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd8;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3.6.6.1"

    sput-object v0, Lmd8;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static m()I
    .locals 1

    sget v0, Lmd8;->c:I

    if-nez v0, :cond_0

    const v0, 0x59614

    sput v0, Lmd8;->c:I

    :cond_0
    sget v0, Lmd8;->c:I

    return v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd8;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->p()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmd8;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static o()I
    .locals 2

    sget v0, Lmd8;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lmd8;->d:I

    :cond_1
    sget v0, Lmd8;->d:I

    return v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd8;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lul4;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmd8;->p:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmd8;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lul4;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmd8;->o:Ljava/lang/String;

    :cond_0
    sget-object v0, Lmd8;->o:Ljava/lang/String;

    return-object v0
.end method
