.class public Lk7/c;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:I = 0x0

.field private static d:I = -0x1

.field private static e:Ljava/lang/String; = null

.field private static f:I = -0x1

.field private static g:I = -0x1

.field private static h:I = -0x1

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:I

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final s:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lk7/c;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lk7/c;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk7/c;->k:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lk7/c;->k:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lk7/c;->k:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk7/c;->q:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->c()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lk7/c;->q:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lk7/c;->q:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk7/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lk7/c;->e:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lk7/c;->e:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lk7/c;->i:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lk7/c;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->b(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->l()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x3

    .line 27
    if-lt v1, v2, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lk7/c;->i:Ljava/lang/String;

    .line 35
    .line 36
    :cond_0
    sget-object v0, Lk7/c;->i:Ljava/lang/String;

    .line 37
    .line 38
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lk7/c;->j:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lk7/c;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->b(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->l()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x3

    .line 27
    if-lt v1, v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lk7/c;->j:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    sget-object v0, Lk7/c;->j:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk7/c;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lk7/c;->l:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lk7/c;->l:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static g()I
    .locals 1

    .line 1
    sget v0, Lk7/c;->n:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->k()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lk7/c;->n:I

    .line 10
    .line 11
    :cond_0
    sget v0, Lk7/c;->n:I

    .line 12
    .line 13
    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk7/c;->m:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->m()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lk7/c;->m:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lk7/c;->m:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public static i()I
    .locals 2

    .line 1
    sget v0, Lk7/c;->h:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->b()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    float-to-int v0, v0

    .line 11
    sput v0, Lk7/c;->h:I

    .line 12
    .line 13
    :cond_0
    sget v0, Lk7/c;->h:I

    .line 14
    .line 15
    return v0
.end method

.method public static j()I
    .locals 2

    .line 1
    sget v0, Lk7/c;->g:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput v0, Lk7/c;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    :catchall_0
    :cond_0
    sget v0, Lk7/c;->g:I

    .line 13
    .line 14
    return v0
.end method

.method public static k()I
    .locals 2

    .line 1
    sget v0, Lk7/c;->f:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->g()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput v0, Lk7/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    :catchall_0
    :cond_0
    sget v0, Lk7/c;->f:I

    .line 13
    .line 14
    return v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk7/c;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "3.5.9.1"

    .line 10
    .line 11
    sput-object v0, Lk7/c;->b:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lk7/c;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static m()I
    .locals 1

    .line 1
    sget v0, Lk7/c;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const v0, 0x57abc

    .line 6
    .line 7
    .line 8
    sput v0, Lk7/c;->c:I

    .line 9
    .line 10
    :cond_0
    sget v0, Lk7/c;->c:I

    .line 11
    .line 12
    return v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk7/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lk7/c;->a:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lk7/c;->a:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public static o()I
    .locals 2

    .line 1
    sget v0, Lk7/c;->d:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->q()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    sput v0, Lk7/c;->d:I

    .line 16
    .line 17
    :cond_1
    sget v0, Lk7/c;->d:I

    .line 18
    .line 19
    return v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk7/c;->p:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->e()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lk7/c;->p:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lk7/c;->p:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lk7/c;->o:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->f()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lk7/c;->o:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lk7/c;->o:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method
