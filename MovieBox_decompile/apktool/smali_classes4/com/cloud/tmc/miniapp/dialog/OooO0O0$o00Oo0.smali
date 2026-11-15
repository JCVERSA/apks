.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o00Oo0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

.field public final OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0;",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;->OooO0O0:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
