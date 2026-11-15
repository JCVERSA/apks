.class public final Lcom/google/android/exoplayer2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n$j;,
        Lcom/google/android/exoplayer2/n$e;,
        Lcom/google/android/exoplayer2/n$d;,
        Lcom/google/android/exoplayer2/n$k;,
        Lcom/google/android/exoplayer2/n$l;,
        Lcom/google/android/exoplayer2/n$g;,
        Lcom/google/android/exoplayer2/n$i;,
        Lcom/google/android/exoplayer2/n$h;,
        Lcom/google/android/exoplayer2/n$b;,
        Lcom/google/android/exoplayer2/n$f;,
        Lcom/google/android/exoplayer2/n$c;
    }
.end annotation


# static fields
.field public static final j:Lcom/google/android/exoplayer2/n;

.field public static final k:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/exoplayer2/n$h;

.field public final d:Lcom/google/android/exoplayer2/n$i;

.field public final e:Lcom/google/android/exoplayer2/n$g;

.field public final f:Lcom/google/android/exoplayer2/o;

.field public final g:Lcom/google/android/exoplayer2/n$d;

.field public final h:Lcom/google/android/exoplayer2/n$e;

.field public final i:Lcom/google/android/exoplayer2/n$j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/n$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$c;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$c;->a()Lcom/google/android/exoplayer2/n;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/n;->j:Lcom/google/android/exoplayer2/n;

    new-instance v0, Lag6;

    invoke-direct {v0}, Lag6;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/n;->k:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/n$e;Lcom/google/android/exoplayer2/n$i;Lcom/google/android/exoplayer2/n$g;Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/n$j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/n;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/n;->d:Lcom/google/android/exoplayer2/n$i;

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    .line 7
    iput-object p5, p0, Lcom/google/android/exoplayer2/n;->f:Lcom/google/android/exoplayer2/o;

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/n$d;

    .line 9
    iput-object p2, p0, Lcom/google/android/exoplayer2/n;->h:Lcom/google/android/exoplayer2/n$e;

    .line 10
    iput-object p6, p0, Lcom/google/android/exoplayer2/n;->i:Lcom/google/android/exoplayer2/n$j;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/n$e;Lcom/google/android/exoplayer2/n$i;Lcom/google/android/exoplayer2/n$g;Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/n$j;Lcom/google/android/exoplayer2/n$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/n;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/n$e;Lcom/google/android/exoplayer2/n$i;Lcom/google/android/exoplayer2/n$g;Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/n$j;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n;
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/n$g;->g:Lcom/google/android/exoplayer2/n$g;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/n$g;->h:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/n$g;

    goto :goto_0

    :goto_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/o;->H:Lcom/google/android/exoplayer2/o;

    :goto_2
    move-object v6, v0

    goto :goto_3

    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/o;->I:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/o;

    goto :goto_2

    :goto_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/exoplayer2/n$e;->i:Lcom/google/android/exoplayer2/n$e;

    :goto_4
    move-object v3, v0

    goto :goto_5

    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/n$d;->h:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/n$e;

    goto :goto_4

    :goto_5
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/google/android/exoplayer2/n$j;->e:Lcom/google/android/exoplayer2/n$j;

    :goto_6
    move-object v7, p0

    goto :goto_7

    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/n$j;->f:Lcom/google/android/exoplayer2/e$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/e$a;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/e;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/n$j;

    goto :goto_6

    :goto_7
    new-instance p0, Lcom/google/android/exoplayer2/n;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/n;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/n$e;Lcom/google/android/exoplayer2/n$i;Lcom/google/android/exoplayer2/n$g;Lcom/google/android/exoplayer2/o;Lcom/google/android/exoplayer2/n$j;)V

    return-object p0
.end method

.method public static d(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/n$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/n$c;->i(Landroid/net/Uri;)Lcom/google/android/exoplayer2/n$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n$c;->a()Lcom/google/android/exoplayer2/n;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Lcom/google/android/exoplayer2/n;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/n$c;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/n$c;->j(Ljava/lang/String;)Lcom/google/android/exoplayer2/n$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n$c;->a()Lcom/google/android/exoplayer2/n;

    move-result-object p0

    return-object p0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/n$c;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/n$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/n$c;-><init>(Lcom/google/android/exoplayer2/n;Lcom/google/android/exoplayer2/n$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/n;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/n;

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/n;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/n$d;

    iget-object v3, p1, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/n$d;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/n$d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    iget-object v3, p1, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    invoke-static {v1, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    iget-object v3, p1, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    invoke-static {v1, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->f:Lcom/google/android/exoplayer2/o;

    iget-object v3, p1, Lcom/google/android/exoplayer2/n;->f:Lcom/google/android/exoplayer2/o;

    invoke-static {v1, v3}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/n;->i:Lcom/google/android/exoplayer2/n$j;

    iget-object p1, p1, Lcom/google/android/exoplayer2/n;->i:Lcom/google/android/exoplayer2/n$j;

    invoke-static {p0, p1}, Lblb;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/n;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->c:Lcom/google/android/exoplayer2/n$h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n$h;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n$g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/n$d;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n$d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/n;->f:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/o;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/n;->i:Lcom/google/android/exoplayer2/n$j;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n$j;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->e:Lcom/google/android/exoplayer2/n$g;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n$g;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->f:Lcom/google/android/exoplayer2/o;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/o;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/n;->g:Lcom/google/android/exoplayer2/n$d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n$d;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/n;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/n;->i:Lcom/google/android/exoplayer2/n$j;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n$j;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
