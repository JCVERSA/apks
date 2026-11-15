.class public abstract Lzdc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x1

.field public static b:I = 0x2

.field public static volatile c:I = 0x3

.field public static volatile d:Z = false

.field public static volatile e:Z = false

.field public static volatile f:Z = true

.field public static volatile g:Z = true

.field public static volatile h:Z = true

.field public static volatile i:Z = false

.field public static volatile j:Z = true

.field public static volatile k:Z = false

.field public static volatile l:Z = false

.field public static volatile m:Z = false

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:I

.field public static x:Z

.field public static y:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzdc;->o:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lzdc;->o:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzdc;->n:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lzdc;->n:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzdc;->p:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lzdc;->p:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzdc;->r:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lzdc;->r:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzdc;->v:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lzdc;->v:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static f()I
    .locals 1

    sget v0, Lzdc;->w:I

    return v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzdc;->t:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lzdc;->t:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzdc;->u:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lzdc;->u:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzdc;->s:Ljava/lang/String;

    invoke-static {v0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Lzdc;->s:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static j(Landroid/app/Application;)V
    .locals 0

    sput-object p0, Lzdc;->y:Landroid/app/Application;

    invoke-static {p0}, Lzdc;->k(Landroid/content/Context;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 3

    const-string v0, "simultaneous_download_mode"

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lzdc;->c:I

    const-string v0, "allow_mobile_data"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lzdc;->d:Z

    const-string v0, "allow_mobile_data_play"

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lzdc;->e:Z

    const-string v0, "break_point_mode_switch"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lzdc;->f:Z

    const-string v0, "allow_show_history"

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lzdc;->g:Z

    const-string v0, "allow_stream_auto_play"

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lzdc;->h:Z

    const-string v0, "private_browsing"

    invoke-static {p0, v0, v1}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lzdc;->k:Z

    const-string v0, "show_private_room"

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lzdc;->l:Z

    const-string v0, "search_lrc_save_title_artist"

    invoke-static {p0, v0, v2}, Lw6c;->c(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lzdc;->x:Z

    const-string v0, "visha_last_play_state"

    invoke-static {p0, v0, v1}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lzdc;->w:I

    invoke-static {p0}, Lqqb;->d(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lzdc;->m:Z

    return-void
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lzdc;->x:Z

    return v0
.end method

.method public static m(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lzdc;->o:Ljava/lang/String;

    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lzdc;->n:Ljava/lang/String;

    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lzdc;->p:Ljava/lang/String;

    return-void
.end method

.method public static p(Z)V
    .locals 2

    sput-boolean p0, Lzdc;->x:Z

    sget-object v0, Lzdc;->y:Landroid/app/Application;

    const-string v1, "search_lrc_save_title_artist"

    invoke-static {v0, v1, p0}, Lw6c;->r(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lzdc;->r:Ljava/lang/String;

    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lzdc;->q:Ljava/lang/String;

    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lzdc;->v:Ljava/lang/String;

    return-void
.end method

.method public static t(I)V
    .locals 2

    sput p0, Lzdc;->w:I

    sget-object v0, Lzdc;->y:Landroid/app/Application;

    const-string v1, "visha_last_play_state"

    invoke-static {v0, v1, p0}, Lw6c;->t(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lzdc;->t:Ljava/lang/String;

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lzdc;->u:Ljava/lang/String;

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lzdc;->s:Ljava/lang/String;

    return-void
.end method
