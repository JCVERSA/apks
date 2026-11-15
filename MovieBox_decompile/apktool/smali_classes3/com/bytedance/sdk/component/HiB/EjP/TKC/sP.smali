.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/Zq;


# instance fields
.field private volatile Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)Lcom/bytedance/sdk/component/HiB/Zq;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;-><init>()V

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->sP(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)V

    return-object v0
.end method

.method private sP(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "ImageLoader"

    .line 6
    .line 7
    const-string v1, "already init!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    if-nez p2, :cond_1

    .line 13
    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/HiB;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;
    .locals 2

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/uvD;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->Sj()Lcom/bytedance/sdk/component/HiB/TzV;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/HiB/Sj;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 10
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p2

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->sP()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/HiB/TKC;

    .line 13
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/HiB/TKC;->Sj(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_4
    return-object v1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 16
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 18
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/uvD;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/sP;->Sj:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TKC;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/HiB/Sj;->sP(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method
