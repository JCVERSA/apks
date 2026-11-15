.class Lcom/transsion/audio/widgets/EqDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/widgets/EqDialog;->initValue(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/audio/widgets/EqDialog;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/widgets/EqDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$2;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object p1

    iget-boolean p1, p1, Lmc3;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$2;->this$0:Lcom/transsion/audio/widgets/EqDialog;

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
    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$2;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p1}, Lcom/transsion/audio/widgets/EqDialog;->j0(Lcom/transsion/audio/widgets/EqDialog;)Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;->r(I)V

    int-to-short p1, p3

    invoke-static {p1}, Llc3;->a(S)V

    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Llc3;->e()S

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/transsion/audio/widgets/EqDialog$2;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p2}, Lcom/transsion/audio/widgets/EqDialog;->m0(Lcom/transsion/audio/widgets/EqDialog;)[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-static {p1}, Llc3;->b(S)S

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->setProgress(F)V

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    goto :goto_0

    :cond_1
    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object p0

    invoke-static {p0}, Lmc3;->c(Lmc3;)V

    invoke-static {p3}, Lry5;->d(I)V

    return-void
.end method
