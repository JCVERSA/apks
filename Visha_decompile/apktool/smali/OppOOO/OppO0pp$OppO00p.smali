.class public LOppOOO/OppO0pp$OppO00p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOppOOO/OppO0pp;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OppO00p:LOppOOO/OppO0pp;


# direct methods
.method public constructor <init>(LOppOOO/OppO0pp;)V
    .locals 0

    iput-object p1, p0, LOppOOO/OppO0pp$OppO00p;->OppO00p:LOppOOO/OppO0pp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LOppOOO/OppO0pp$OppO00p;->OppO00p:LOppOOO/OppO0pp;

    iget-object v0, v0, LOppOOO/OppO0pp;->b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->u:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->fullScroll(I)Z

    iget-object p0, p0, LOppOOO/OppO0pp$OppO00p;->OppO00p:LOppOOO/OppO0pp;

    iget-object p0, p0, LOppOOO/OppO0pp;->b:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->u:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    return-void
.end method
