.class public Lkc3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/CustomOsSeekbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkc3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkc3;


# direct methods
.method public constructor <init>(Lkc3;)V
    .locals 0

    iput-object p1, p0, Lkc3$c;->a:Lkc3;

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

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "EQ_REVERB"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v4, "EQ_3D"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v4, "EQ_5"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, p2

    goto :goto_0

    :sswitch_3
    const-string v4, "EQ_4"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, p3

    goto :goto_0

    :sswitch_4
    const-string v4, "EQ_3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_0

    :sswitch_5
    const-string v4, "EQ_2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_0

    :sswitch_6
    const-string v4, "EQ_1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lkc3$c;->a:Lkc3;

    invoke-static {p0}, Lkc3;->g(Lkc3;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Ljrb;->h(S)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lkc3$c;->a:Lkc3;

    invoke-static {p0}, Lkc3;->f(Lkc3;)Lcom/transsion/playercommon/widgets/CustomOsSeekbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/playercommon/widgets/CustomOsSeekbar;->getProgress()I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Ljrb;->j(S)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lkc3$c;->a:Lkc3;

    invoke-static {p0, p4, p2}, Lkc3;->j(Lkc3;ZI)V

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lkc3$c;->a:Lkc3;

    invoke-static {p0, p4, p3}, Lkc3;->j(Lkc3;ZI)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lkc3$c;->a:Lkc3;

    invoke-static {p0, p4, v0}, Lkc3;->j(Lkc3;ZI)V

    goto :goto_1

    :pswitch_5
    iget-object p0, p0, Lkc3$c;->a:Lkc3;

    invoke-static {p0, p4, v1}, Lkc3;->j(Lkc3;ZI)V

    goto :goto_1

    :pswitch_6
    iget-object p0, p0, Lkc3$c;->a:Lkc3;

    invoke-static {p0, p4, v2}, Lkc3;->j(Lkc3;ZI)V

    :goto_1
    const-string p0, "visha_EqDialog"

    const-string p1, "onProgressChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

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

.method public onStartTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 0

    const-string p0, "visha_EqDialog"

    const-string p1, "onStopTrackingTouch"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopTrackingTouch(Lcom/transsion/playercommon/widgets/CustomOsSeekbar;)V
    .locals 0

    const-string p0, "visha_EqDialog"

    const-string p1, "onStopTrackingTouch"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljrb;->e()Lkrb;

    move-result-object p0

    invoke-static {p0}, Lkrb;->c(Lkrb;)V

    return-void
.end method
