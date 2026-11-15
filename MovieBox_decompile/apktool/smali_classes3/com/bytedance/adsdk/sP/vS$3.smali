.class Lcom/bytedance/adsdk/sP/vS$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/vS;->sef()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/adsdk/sP/vS;

.field final synthetic Sj:I

.field final synthetic TKC:I

.field final synthetic sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/adsdk/sP/vS$3;->Sj:I

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/adsdk/sP/vS$3;->sP:I

    .line 6
    .line 7
    iput p4, p0, Lcom/bytedance/adsdk/sP/vS$3;->TKC:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$3;->Sj:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    if-lt p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget v0, p0, Lcom/bytedance/adsdk/sP/vS$3;->Sj:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x2

    .line 22
    .line 23
    if-ge p1, v0, :cond_1

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "--==--- enter timer point, frame: "

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->getFrame()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/sP/vS;->sP(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 44
    .line 45
    .line 46
    iget p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->sP:I

    .line 47
    .line 48
    if-ltz p1, :cond_0

    .line 49
    .line 50
    iget p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->TKC:I

    .line 51
    .line 52
    if-ltz p1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/bytedance/adsdk/sP/vS;->Zq(Lcom/bytedance/adsdk/sP/vS;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/sP/vS$3;->EjP:Lcom/bytedance/adsdk/sP/vS;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/bytedance/adsdk/sP/vS;->vS()V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method
