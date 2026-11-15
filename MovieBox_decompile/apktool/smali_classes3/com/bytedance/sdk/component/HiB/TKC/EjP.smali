.class public Lcom/bytedance/sdk/component/HiB/TKC/EjP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/Ym;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/HiB/Ym;"
    }
.end annotation


# instance fields
.field private Dq:Z

.field private EjP:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private HiB:I

.field private Jcg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Sj:Ljava/lang/String;

.field private TEQ:Lcom/bytedance/sdk/component/HiB/Jcg;

.field private TKC:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private Ym:I

.field private sP:Ljava/lang/String;

.field private uA:Z

.field private vS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public EjP()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->Jcg:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public HiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->Dq:Z

    .line 2
    .line 3
    return v0
.end method

.method public Jcg()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->Ym:I

    .line 2
    .line 3
    return v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;Ljava/lang/Object;)Lcom/bytedance/sdk/component/HiB/TKC/EjP;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/HiB/TKC/TKC;",
            "TT;)",
            "Lcom/bytedance/sdk/component/HiB/TKC/EjP;"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->TKC:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TEQ()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->Sj:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->sP:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sP()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->HiB:I

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TKC()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->vS:I

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Zq()Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->uA:Z

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uvD()Lcom/bytedance/sdk/component/HiB/Jcg;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->TEQ:Lcom/bytedance/sdk/component/HiB/Jcg;

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->dNu()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->Ym:I

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/HiB/TKC/EjP;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/HiB/TKC/TKC;",
            "TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/bytedance/sdk/component/HiB/TKC/EjP;"
        }
    .end annotation

    .line 9
    iput-object p3, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->Jcg:Ljava/util/Map;

    .line 10
    iput-boolean p4, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->Dq:Z

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;Ljava/lang/Object;)Lcom/bytedance/sdk/component/HiB/TKC/EjP;

    move-result-object p1

    return-object p1
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(Ljava/lang/Object;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->TKC:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->EjP:Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->TKC:Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->EjP:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->TKC:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public vS()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/EjP;->uA:Z

    .line 2
    .line 3
    return v0
.end method
