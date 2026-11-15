.class public Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/widget/photoview/OooO0O0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public OooO00o(FFFFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 8
    .line 9
    iget v2, v1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO0o0:F

    .line 10
    .line 11
    cmpg-float v0, v0, v2

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    cmpg-float v0, p1, v0

    .line 18
    .line 19
    if-gez v0, :cond_2

    .line 20
    .line 21
    :cond_0
    iget-object v0, v1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOo0o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOO0;->OooO00o(FFF)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooOOO:Landroid/graphics/Matrix;

    .line 38
    .line 39
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/widget/photoview/OooOOOO;->OooO00o()V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method
