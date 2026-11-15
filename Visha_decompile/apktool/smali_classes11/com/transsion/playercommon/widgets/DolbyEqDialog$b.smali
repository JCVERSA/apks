.class public Lcom/transsion/playercommon/widgets/DolbyEqDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/DolbyEqDialog;->initValue(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/DolbyEqDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/DolbyEqDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog$b;->b:Lcom/transsion/playercommon/widgets/DolbyEqDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    sget-boolean p1, Lmw2;->c:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog$b;->b:Lcom/transsion/playercommon/widgets/DolbyEqDialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lraa;->i(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onItemClick: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "visha_EqDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 p1, p3, 0x1

    iget-object p2, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog$b;->b:Lcom/transsion/playercommon/widgets/DolbyEqDialog;

    invoke-static {p2}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->g0(Lcom/transsion/playercommon/widgets/DolbyEqDialog;)Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;->r(I)V

    invoke-static {p1}, Lmw2;->g(I)V

    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Lmw2;->b()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/transsion/playercommon/widgets/DolbyEqDialog$b;->b:Lcom/transsion/playercommon/widgets/DolbyEqDialog;

    invoke-static {p1, p2}, Lmw2;->c(II)I

    move-result v0

    invoke-static {v0}, Llw2;->g(I)I

    move-result v0

    invoke-static {p3, p2, v0}, Lcom/transsion/playercommon/widgets/DolbyEqDialog;->h0(Lcom/transsion/playercommon/widgets/DolbyEqDialog;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lmw2;->d()Llw2;

    move-result-object p0

    invoke-static {p0}, Llw2;->l(Llw2;)V

    invoke-static {p1}, Lry5;->d(I)V

    return-void
.end method
