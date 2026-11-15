.class public final Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooOO0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    check-cast p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;ILandroid/view/KeyEvent;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 18
    return p1
.end method
