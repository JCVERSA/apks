.class Lcom/transsion/audio/widgets/EqDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$1;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$1;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p1, p2}, Lcom/transsion/audio/widgets/EqDialog;->q0(Lcom/transsion/audio/widgets/EqDialog;Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$1;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p1}, Lcom/transsion/audio/widgets/EqDialog;->j0(Lcom/transsion/audio/widgets/EqDialog;)Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$1;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p1}, Lcom/transsion/audio/widgets/EqDialog;->j0(Lcom/transsion/audio/widgets/EqDialog;)Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;->g()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$1;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p1}, Lcom/transsion/audio/widgets/EqDialog;->j0(Lcom/transsion/audio/widgets/EqDialog;)Lcom/transsion/playercommon/adapter/EqPresetAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/adapter/EqPresetAdapter;->r(I)V

    invoke-static {v0}, Llc3;->a(S)V

    iget-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$1;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p1}, Lcom/transsion/audio/widgets/EqDialog;->r0(Lcom/transsion/audio/widgets/EqDialog;)V

    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object p1

    invoke-static {p1}, Lmc3;->c(Lmc3;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$1;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0}, Lcom/transsion/audio/widgets/EqDialog;->o0(Lcom/transsion/audio/widgets/EqDialog;)V

    invoke-static {p2}, Lry5;->c(Z)V

    return-void
.end method
