.class public final Lvhj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvhj;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lerj;Lhvg;)Lygj;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lkfh;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    iget v1, p1, Lerj;->F:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v2, p0, Lvhj;->a:Landroid/content/Context;

    iget-object v3, p0, Lvhj;->b:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_3

    invoke-static {v2}, Lfnf;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "offloadVariableRateSupported"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "offloadVariableRateSupported=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lvhj;->b:Ljava/lang/Boolean;

    goto :goto_1

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lvhj;->b:Ljava/lang/Boolean;

    :goto_1
    iget-object p0, p0, Lvhj;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_2
    iget-object v2, p1, Lerj;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lerj;->k:Ljava/lang/String;

    invoke-static {v2, v3}, Lbue;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v2}, Lkfh;->C(I)I

    move-result v3

    if-ge v0, v3, :cond_4

    goto :goto_4

    :cond_4
    iget p1, p1, Lerj;->E:I

    invoke-static {p1}, Lkfh;->D(I)I

    move-result p1

    if-eqz p1, :cond_9

    :try_start_0
    invoke-static {v1, p1, v2}, Lkfh;->S(III)Landroid/media/AudioFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_7

    invoke-virtual {p2}, Lhvg;->a()Ljgf;

    move-result-object p2

    iget-object p2, p2, Ljgf;->a:Landroid/media/AudioAttributes;

    invoke-static {p1, p2}, Lzz1;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    if-nez p1, :cond_5

    sget-object p0, Lygj;->d:Lygj;

    goto :goto_3

    :cond_5
    new-instance p2, Lugj;

    invoke-direct {p2}, Lugj;-><init>()V

    const/16 v1, 0x20

    if-le v0, v1, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p2, v5}, Lugj;->a(Z)Lugj;

    invoke-virtual {p2, v4}, Lugj;->b(Z)Lugj;

    invoke-virtual {p2, p0}, Lugj;->c(Z)Lugj;

    invoke-virtual {p2}, Lugj;->d()Lygj;

    move-result-object p0

    goto :goto_3

    :cond_7
    invoke-virtual {p2}, Lhvg;->a()Ljgf;

    move-result-object p2

    iget-object p2, p2, Ljgf;->a:Landroid/media/AudioAttributes;

    invoke-static {p1, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p0, Lygj;->d:Lygj;

    goto :goto_3

    :cond_8
    new-instance p1, Lugj;

    invoke-direct {p1}, Lugj;-><init>()V

    invoke-virtual {p1, v5}, Lugj;->a(Z)Lugj;

    invoke-virtual {p1, p0}, Lugj;->c(Z)Lugj;

    invoke-virtual {p1}, Lugj;->d()Lygj;

    move-result-object p0

    :goto_3
    return-object p0

    :catch_0
    sget-object p0, Lygj;->d:Lygj;

    return-object p0

    :cond_9
    sget-object p0, Lygj;->d:Lygj;

    return-object p0

    :cond_a
    :goto_4
    sget-object p0, Lygj;->d:Lygj;

    return-object p0

    :cond_b
    :goto_5
    sget-object p0, Lygj;->d:Lygj;

    return-object p0
.end method
