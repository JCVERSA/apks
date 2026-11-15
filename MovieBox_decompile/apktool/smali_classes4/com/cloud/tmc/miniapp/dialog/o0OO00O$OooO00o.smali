.class public final Lcom/cloud/tmc/miniapp/dialog/o0OO00O$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o0OO00O;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/o0OO00O;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o0OO00O;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0OO00O$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o0OO00O;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o0OO00O$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o0OO00O;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/dialog/o0OO00O;->OooO00o:Lcom/cloud/tmc/integration/callback/LocalAuthPermissionWithNotShowAgainCallback;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/LocalAuthPermissionCallback;->onDenied()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
