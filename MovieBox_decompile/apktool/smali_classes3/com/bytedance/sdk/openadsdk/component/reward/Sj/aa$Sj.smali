.class abstract Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Sj"
.end annotation


# instance fields
.field private Sj:I

.field private sP:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;-><init>()V

    return-void
.end method


# virtual methods
.method abstract Sj(II)V
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->Sj:I

    .line 4
    .line 5
    if-ne p4, p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->sP:I

    .line 8
    .line 9
    if-eq p5, p1, :cond_1

    .line 10
    .line 11
    :cond_0
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->Sj:I

    .line 12
    .line 13
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->sP:I

    .line 14
    .line 15
    invoke-virtual {p0, p4, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa$Sj;->Sj(II)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method
