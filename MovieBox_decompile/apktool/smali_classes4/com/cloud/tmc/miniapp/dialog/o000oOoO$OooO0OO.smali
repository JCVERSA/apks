.class public final Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO0OO;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o000oOoO;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/dialog/o000oOoO;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/dialog/o000oOoO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o000oOoO;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/o000oOoO$OooO0OO;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o000oOoO;

    .line 2
    .line 3
    sget v1, Lcom/cloud/tmc/miniapp/R$id;->tv_download_size:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    return-object v0
.end method
