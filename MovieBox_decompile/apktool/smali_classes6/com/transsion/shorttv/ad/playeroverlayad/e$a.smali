.class public final Lcom/transsion/shorttv/ad/playeroverlayad/e$a;
.super Lg7/e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ad/playeroverlayad/e;->k(Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/transsion/shorttv/ad/playeroverlayad/e;

.field final synthetic g:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

.field final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;Lkotlin/jvm/functions/Function0;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->f:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->g:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->h:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    const-wide/16 p1, 0x3e8

    .line 8
    .line 9
    invoke-direct {p0, p4, p5, p1, p2}, Lg7/e;-><init>(JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->f:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->h:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->e(Lcom/transsion/shorttv/ad/playeroverlayad/e;Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(J)V
    .locals 2

    .line 1
    long-to-float p1, p1

    .line 2
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 3
    .line 4
    div-float/2addr p1, p2

    .line 5
    float-to-double p1, p1

    .line 6
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    double-to-float p1, p1

    .line 11
    float-to-long p1, p1

    .line 12
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->f:Lcom/transsion/shorttv/ad/playeroverlayad/e;

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/transsion/shorttv/ad/playeroverlayad/e;->d(Lcom/transsion/shorttv/ad/playeroverlayad/e;Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsion/shorttv/ad/playeroverlayad/e$a;->g:Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/shorttv/ad/playeroverlayad/ShortTvPlayerOverlayAdContainer;->getCountdownView()Landroid/widget/TextView;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, "s"

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
