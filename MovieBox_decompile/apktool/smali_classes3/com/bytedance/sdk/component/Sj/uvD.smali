.class public Lcom/bytedance/sdk/component/Sj/uvD;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Sj/uvD$Sj;
    }
.end annotation


# instance fields
.field public final Dq:Ljava/lang/String;

.field public final EjP:Ljava/lang/String;

.field public final HiB:Ljava/lang/String;

.field public final Jcg:Ljava/lang/String;

.field public final Sj:I

.field public final TKC:Ljava/lang/String;

.field public final sP:Ljava/lang/String;

.field public final vS:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/Sj/uvD$Sj;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->Sj(Lcom/bytedance/sdk/component/Sj/uvD$Sj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->sP:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->sP(Lcom/bytedance/sdk/component/Sj/uvD$Sj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->TKC:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->TKC(Lcom/bytedance/sdk/component/Sj/uvD$Sj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->EjP:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->EjP(Lcom/bytedance/sdk/component/Sj/uvD$Sj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->HiB:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->HiB(Lcom/bytedance/sdk/component/Sj/uvD$Sj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->vS:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->vS(Lcom/bytedance/sdk/component/Sj/uvD$Sj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->Jcg:Ljava/lang/String;

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->Sj:I

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;->Jcg(Lcom/bytedance/sdk/component/Sj/uvD$Sj;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/uvD;->Dq:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/Sj/uvD$Sj;Lcom/bytedance/sdk/component/Sj/uvD$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Sj/uvD;-><init>(Lcom/bytedance/sdk/component/Sj/uvD$Sj;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->sP:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->TKC:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->EjP:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->HiB:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/uvD;->vS:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->Jcg:Ljava/lang/String;

    .line 9
    iput p2, p0, Lcom/bytedance/sdk/component/Sj/uvD;->Sj:I

    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->Dq:Ljava/lang/String;

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/component/Sj/uvD$Sj;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/Sj/uvD$Sj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Sj/uvD$Sj;-><init>(Lcom/bytedance/sdk/component/Sj/uvD$1;)V

    return-object v0
.end method

.method public static Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/component/Sj/uvD;
    .locals 1

    .line 2
    new-instance v0, Lcom/bytedance/sdk/component/Sj/uvD;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/component/Sj/uvD;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Sj/uvD;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 3
    iget v1, p0, Lcom/bytedance/sdk/component/Sj/uvD;->Sj:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uvD;->EjP:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/bytedance/sdk/component/Sj/uvD;->HiB:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "methodName: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uvD;->EjP:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", params: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uvD;->HiB:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", callbackId: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uvD;->vS:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", type: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uvD;->TKC:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", version: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/uvD;->sP:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
