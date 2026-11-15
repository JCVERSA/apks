.class public abstract Lcom/bytedance/sdk/component/sP/Sj/Ym;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;
    }
.end annotation


# instance fields
.field public EjP:J

.field public HiB:Ljava/util/concurrent/TimeUnit;

.field public Jcg:Ljava/util/concurrent/TimeUnit;

.field public Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/sP/Sj/Dq;",
            ">;"
        }
    .end annotation
.end field

.field public TKC:Ljava/util/concurrent/TimeUnit;

.field public sP:J

.field public vS:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->sP:J

    .line 7
    .line 8
    iget-wide v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->EjP:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->EjP:J

    .line 11
    .line 12
    iget-wide v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->vS:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->vS:J

    .line 15
    .line 16
    iget-object v0, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj:Ljava/util/List;

    .line 17
    .line 18
    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->TKC:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->HiB:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->HiB:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Jcg:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Jcg:Ljava/util/concurrent/TimeUnit;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj:Ljava/util/List;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public abstract Sj()Lcom/bytedance/sdk/component/sP/Sj/EjP;
.end method

.method public abstract Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;
.end method

.method public sP()Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
