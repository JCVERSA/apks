.class Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 2
    .line 3
    const-string v1, "plb_pre_render_enable"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;I)I

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 14
    .line 15
    const-string v1, "plb_pre_render_max_count"

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;I)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x4

    .line 40
    if-le v0, v1, :cond_1

    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 43
    .line 44
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;I)I

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 48
    .line 49
    const-string v1, "plb_pre_render_alive_time"

    .line 50
    .line 51
    const v2, 0x36ee80

    .line 52
    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;I)I

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-lez v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-le v0, v2, :cond_3

    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 78
    .line 79
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;I)I

    .line 80
    .line 81
    .line 82
    :cond_3
    return-void
.end method
