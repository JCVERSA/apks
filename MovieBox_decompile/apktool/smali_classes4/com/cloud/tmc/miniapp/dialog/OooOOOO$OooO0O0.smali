.class public final Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO0O0;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooOOOO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO0O0"
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOOO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooOOOO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOOO;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$f;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    .line 1
    const-string p2, "bottomSheet"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1

    .line 1
    const-string v0, "bottomSheet"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooOOOO$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooOOOO;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/cloud/tmc/miniapp/dialog/OooOOOO;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
