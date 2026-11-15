.class public Lcom/bytedance/sdk/component/Sj/TEQ;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field Dq:Z

.field EjP:Lcom/bytedance/sdk/component/Sj/Dq;

.field final Fmk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field HiB:Landroid/content/Context;

.field Jcg:Z

.field Sj:Landroid/webkit/WebView;

.field TEQ:Lcom/bytedance/sdk/component/Sj/sef;

.field TKC:Ljava/lang/String;

.field Ym:Ljava/lang/String;

.field Zq:Z

.field final aa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sP:Lcom/bytedance/sdk/component/Sj/Sj;

.field sef:Z

.field uA:Lcom/bytedance/sdk/component/Sj/Fmk;

.field uvD:Lcom/bytedance/sdk/component/Sj/Ym$Sj;

.field vS:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC:Ljava/lang/String;

    .line 9
    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Ym:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->aa:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Fmk:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC:Ljava/lang/String;

    .line 3
    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Ym:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->aa:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Fmk:Ljava/util/Set;

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    return-void
.end method

.method private TKC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->sef:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Sj:Landroid/webkit/WebView;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->EjP:Lcom/bytedance/sdk/component/Sj/Dq;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v1, "Requested arguments aren\'t set properly when building JsBridge."

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Zq:Z

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/Sj/Sj;)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/Sj/aa;)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/Dq;->Sj(Lcom/bytedance/sdk/component/Sj/aa;)Lcom/bytedance/sdk/component/Sj/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->EjP:Lcom/bytedance/sdk/component/Sj/Dq;

    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->vS:Z

    return-object p0
.end method

.method public sP(Z)Lcom/bytedance/sdk/component/Sj/TEQ;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Sj/TEQ;->Jcg:Z

    return-object p0
.end method

.method public sP()Lcom/bytedance/sdk/component/Sj/dNu;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/TEQ;->TKC()V

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/Sj/dNu;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Sj/dNu;-><init>(Lcom/bytedance/sdk/component/Sj/TEQ;)V

    return-object v0
.end method
