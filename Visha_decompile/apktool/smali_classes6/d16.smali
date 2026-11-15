.class public abstract Ld16;
.super Lhb0;
.source "SourceFile"


# direct methods
.method public static b(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "white"

    return-object p0

    :cond_0
    const-string p0, "black"

    return-object p0

    :cond_1
    const-string p0, "custom"

    return-object p0
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "fox"

    return-object p0

    :cond_1
    const-string p0, "birthday"

    return-object p0

    :cond_2
    const-string p0, "beard"

    return-object p0

    :cond_3
    const-string p0, "pirate hat"

    return-object p0

    :cond_4
    const-string p0, "star"

    return-object p0

    :cond_5
    const-string p0, "oval"

    return-object p0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "default"

    return-object p0

    :pswitch_0
    const-string p0, "deepsealife"

    return-object p0

    :pswitch_1
    const-string p0, "emoji"

    return-object p0

    :pswitch_2
    const-string p0, "warrior"

    return-object p0

    :pswitch_3
    const-string p0, "pumpkin"

    return-object p0

    :pswitch_4
    const-string p0, "sealife"

    return-object p0

    :pswitch_5
    const-string p0, "animal"

    return-object p0

    :pswitch_6
    const-string p0, "chrismas"

    return-object p0

    :cond_0
    const-string p0, "custom"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "value_1"

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "skin_diy_edit_bg_object_cl"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static f(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "value"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "value_2"

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "skin_diy_edit_color_object_cl"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static h(Z)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "status"

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "skin_all_list_page_diy_cl"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static i(IILjava/lang/String;III)V
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {p0}, Ld16;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ld16;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "value_1"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value_2"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "value_3"

    invoke-virtual {v0, v5, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "value_4"

    invoke-virtual {v0, v6, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p5}, Ld16;->c(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value_5"

    invoke-virtual {v0, v8, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ld16;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-static {p1}, Ld16;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v2, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v5, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v6, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-static {p5}, Ld16;->c(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v8, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "skin_diy_apply"

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static j(IILjava/lang/String;II)V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {p0}, Ld16;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ld16;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "value_1"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value_2"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "value_3"

    invoke-virtual {v0, v5, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "value_4"

    invoke-virtual {v0, v6, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p0}, Ld16;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-static {p1}, Ld16;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v2, p2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v5, p3}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    invoke-virtual {v1, v6, p4}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "skin_diy_edit_ok"

    const-wide/16 p1, 0x246c

    invoke-static {v1, v0, p0, p1, p2}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static k(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "value"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static l(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    invoke-static {p0}, Ld16;->d(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ld16;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string p0, "skin_diy_edit_ps_object_cl"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method

.method public static m(I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v2, "value"

    invoke-virtual {v0, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, p0}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    const-string p0, "skin_diy_edit_ps_upload_frame_cl"

    const-wide/16 v2, 0x246c

    invoke-static {v1, v0, p0, v2, v3}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method
