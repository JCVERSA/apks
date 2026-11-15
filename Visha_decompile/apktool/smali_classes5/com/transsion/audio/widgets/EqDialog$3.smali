.class Lcom/transsion/audio/widgets/EqDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/widgets/EqDialog;
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

    iput-object p1, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;IFZ)V
    .locals 5

    const/4 p2, 0x4

    const/4 p3, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visha_EqDialog"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v4, "EQ_5"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, p2

    goto :goto_0

    :pswitch_1
    const-string v4, "EQ_4"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v3, p3

    goto :goto_0

    :pswitch_2
    const-string v4, "EQ_3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_0

    :pswitch_3
    const-string v4, "EQ_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_0

    :pswitch_4
    const-string v4, "EQ_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_5
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0, p4, p2}, Lcom/transsion/audio/widgets/EqDialog;->p0(Lcom/transsion/audio/widgets/EqDialog;ZI)V

    goto :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0, p4, p3}, Lcom/transsion/audio/widgets/EqDialog;->p0(Lcom/transsion/audio/widgets/EqDialog;ZI)V

    goto :goto_1

    :pswitch_7
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0, p4, v0}, Lcom/transsion/audio/widgets/EqDialog;->p0(Lcom/transsion/audio/widgets/EqDialog;ZI)V

    goto :goto_1

    :pswitch_8
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0, p4, v1}, Lcom/transsion/audio/widgets/EqDialog;->p0(Lcom/transsion/audio/widgets/EqDialog;ZI)V

    goto :goto_1

    :pswitch_9
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0, p4, v2}, Lcom/transsion/audio/widgets/EqDialog;->p0(Lcom/transsion/audio/widgets/EqDialog;ZI)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20995e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onStartTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 0

    const-string p0, "visha_EqDialog"

    const-string p1, "onStartTrackingTouch"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 7

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "visha_EqDialog"

    const-string v6, "onStopTrackingTouch"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "EQ_REVERB"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_1
    const-string v6, "EQ_3D"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_2
    const-string v6, "EQ_5"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v0

    goto :goto_0

    :sswitch_3
    const-string v6, "EQ_4"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v1

    goto :goto_0

    :sswitch_4
    const-string v6, "EQ_3"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v5, v2

    goto :goto_0

    :sswitch_5
    const-string v6, "EQ_2"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v5, v3

    goto :goto_0

    :sswitch_6
    const-string v6, "EQ_1"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0}, Lcom/transsion/audio/widgets/EqDialog;->l0(Lcom/transsion/audio/widgets/EqDialog;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Llc3;->l(S)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0}, Lcom/transsion/audio/widgets/EqDialog;->k0(Lcom/transsion/audio/widgets/EqDialog;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Llc3;->o(S)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0}, Lcom/transsion/audio/widgets/EqDialog;->m0(Lcom/transsion/audio/widgets/EqDialog;)[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p0

    int-to-short p0, p0

    invoke-static {v0, p0}, Llc3;->k(SS)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0}, Lcom/transsion/audio/widgets/EqDialog;->m0(Lcom/transsion/audio/widgets/EqDialog;)[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p0

    int-to-short p0, p0

    invoke-static {v1, p0}, Llc3;->k(SS)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0}, Lcom/transsion/audio/widgets/EqDialog;->m0(Lcom/transsion/audio/widgets/EqDialog;)[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p0

    int-to-short p0, p0

    invoke-static {v2, p0}, Llc3;->k(SS)V

    goto :goto_1

    :pswitch_5
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0}, Lcom/transsion/audio/widgets/EqDialog;->m0(Lcom/transsion/audio/widgets/EqDialog;)[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p0

    int-to-short p0, p0

    invoke-static {v3, p0}, Llc3;->k(SS)V

    goto :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/transsion/audio/widgets/EqDialog$3;->this$0:Lcom/transsion/audio/widgets/EqDialog;

    invoke-static {p0}, Lcom/transsion/audio/widgets/EqDialog;->m0(Lcom/transsion/audio/widgets/EqDialog;)[Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p0

    aget-object p0, p0, v4

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p0

    int-to-short p0, p0

    invoke-static {v4, p0}, Llc3;->k(SS)V

    :goto_1
    invoke-static {}, Llc3;->f()Lmc3;

    move-result-object p0

    invoke-static {p0}, Lmc3;->c(Lmc3;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20995e -> :sswitch_6
        0x20995f -> :sswitch_5
        0x209960 -> :sswitch_4
        0x209961 -> :sswitch_3
        0x209962 -> :sswitch_2
        0x3f292e4 -> :sswitch_1
        0x602f8c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
