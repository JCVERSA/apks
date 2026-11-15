.class Lcom/bytedance/adsdk/sP/vS$12;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/vS;->Sj([[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:I

.field final synthetic sP:Lcom/bytedance/adsdk/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/adsdk/sP/vS$12;->Sj:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$12;->Sj:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$12;->Sj:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    if-ge p1, v0, :cond_0

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "--==--- inel enter, play anim end, endframe: "

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$12;->Sj:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, ", realFrame: "

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$12;->sP:Lcom/bytedance/adsdk/sP/vS;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->vS()V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method
