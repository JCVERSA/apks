.class Lcom/mgtv/thirdsdk/playcore/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/thirdsdk/playcore/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/thirdsdk/playcore/c;


# direct methods
.method public constructor <init>(Lcom/mgtv/thirdsdk/playcore/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0, p1}, Lcom/mgtv/thirdsdk/playcore/c;->a(Lcom/mgtv/thirdsdk/playcore/c;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2
    const-string v0, "110108"

    const/4 v1, 0x0

    invoke-static {}, Lcom/mgtv/thirdsdk/playcore/c;->H()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onerror:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/hunantv/imgo/log/e;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v2, "1"

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v4, v3

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "199999"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "170005"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "170004"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "170003"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "170002"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "170001"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "150503"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "150502"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "150501"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "130108"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "130107"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "130106"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_c
    const-string v4, "130105"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_d
    const-string v4, "130104"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_e
    const-string v4, "130101"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_f
    const-string v4, "120101"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_10
    const-string v4, "120100"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_11
    const-string v4, "110110"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v4, 0x8

    goto :goto_1

    :sswitch_12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_13
    const-string v4, "110107"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_14
    const-string v4, "110106"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_15
    const-string v4, "110105"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_16
    const-string v4, "110104"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_17
    const-string v4, "110103"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_18
    const-string v5, "110102"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    goto/16 :goto_0

    :sswitch_19
    const-string v4, "110101"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_0

    :cond_18
    move v4, v1

    :cond_19
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->d(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 5
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->d(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;

    move-result-object p1

    invoke-interface {p1, p2, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;->onAuthResult(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6
    :pswitch_1
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->e(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 7
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->e(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    move-result-object p1

    const-string p2, "0103"

    invoke-interface {p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoDefinitionChanged(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8
    :pswitch_2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->h(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/e/e;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 9
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->h(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/e/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/e/e;->b()V

    goto :goto_2

    .line 10
    :pswitch_3
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->e(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 11
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->e(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;

    move-result-object p1

    const-string p2, "0104"

    invoke-interface {p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$VideoListener;->onVideoDefinitionChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :pswitch_4
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :pswitch_5
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/c;->f(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p2

    iget-boolean p2, p2, Lcom/mgtv/thirdsdk/playcore/e;->ai:Z

    if-nez p2, :cond_1b

    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/c;->g(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 14
    iget-object p2, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p2}, Lcom/mgtv/thirdsdk/playcore/c;->g(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$ErrorListener;->onError(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :pswitch_6
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/c;->d(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 16
    iget-object v3, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v3}, Lcom/mgtv/thirdsdk/playcore/c;->d(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;

    move-result-object v3

    invoke-interface {v3, v0, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;->onAuthResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1a
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object p2

    invoke-virtual {p2, v2, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :pswitch_7
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :pswitch_8
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c;->d(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 20
    iget-object v0, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {v0}, Lcom/mgtv/thirdsdk/playcore/c;->d(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mgtv/thirdsdk/playcore/callback/MgtvPlayerListener$AuthResultListener;->onAuthResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_1b
    :goto_2
    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->i(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p1}, Lcom/mgtv/thirdsdk/playcore/c;->i(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 22
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-static {p0}, Lcom/mgtv/thirdsdk/playcore/c;->i(Lcom/mgtv/thirdsdk/playcore/c;)Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/view/MgtvPlayerView;->getVideoPlayer()Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/mgtv/thirdsdk/playcore/view/ImgoPlayerView;->setIsChangeDefinition(Z)V

    :cond_1c
    return-void

    :sswitch_data_0
    .sparse-switch
        0x566685e2 -> :sswitch_19
        0x566685e3 -> :sswitch_18
        0x566685e4 -> :sswitch_17
        0x566685e5 -> :sswitch_16
        0x566685e6 -> :sswitch_15
        0x566685e7 -> :sswitch_14
        0x566685e8 -> :sswitch_13
        0x566685e9 -> :sswitch_12
        0x56668600 -> :sswitch_11
        0x56749d62 -> :sswitch_10
        0x56749d63 -> :sswitch_f
        0x5682b4e4 -> :sswitch_e
        0x5682b4e7 -> :sswitch_d
        0x5682b4e8 -> :sswitch_c
        0x5682b4e9 -> :sswitch_b
        0x5682b4ea -> :sswitch_a
        0x5682b4eb -> :sswitch_9
        0x569ef2ea -> :sswitch_8
        0x569ef2eb -> :sswitch_7
        0x569ef2ec -> :sswitch_6
        0x56bb0f27 -> :sswitch_5
        0x56bb0f28 -> :sswitch_4
        0x56bb0f29 -> :sswitch_3
        0x56bb0f2a -> :sswitch_2
        0x56bb0f2b -> :sswitch_1
        0x56db7868 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public a()Z
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/c$3;->a:Lcom/mgtv/thirdsdk/playcore/c;

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/playcore/c;->w()Z

    move-result p0

    return p0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
