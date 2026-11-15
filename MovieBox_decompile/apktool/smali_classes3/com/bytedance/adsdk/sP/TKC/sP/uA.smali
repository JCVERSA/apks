.class public Lcom/bytedance/adsdk/sP/TKC/sP/uA;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/sP/TKC/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;
    }
.end annotation


# instance fields
.field private final Sj:Ljava/lang/String;

.field private final TKC:Z

.field private final sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->Sj:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->TKC:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;
    .locals 0

    .line 2
    new-instance p1, Lcom/bytedance/adsdk/sP/Sj/Sj/aa;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/aa;-><init>(Lcom/bytedance/adsdk/sP/TKC/sP/uA;)V

    return-object p1
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->TKC:Z

    .line 2
    .line 3
    return v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MergePaths{mode="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
