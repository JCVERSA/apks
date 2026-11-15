.class public Lcom/bytedance/sdk/component/HiB/sP/TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/vS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/HiB/vS;"
    }
.end annotation


# instance fields
.field private EjP:Ljava/lang/String;

.field private HiB:Lcom/bytedance/sdk/component/HiB/Jcg;

.field Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private sP:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->sP:I

    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->TKC:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->EjP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/sP/TKC;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p4, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->Sj:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public EjP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->EjP:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public HiB()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->Sj:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()Lcom/bytedance/sdk/component/HiB/Jcg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/Jcg;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/Jcg;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/Jcg;

    return-void
.end method

.method public TKC()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->TKC:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/sP/TKC;->sP:I

    .line 2
    .line 3
    return v0
.end method
