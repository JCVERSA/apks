.class public final Lcom/yandex/mobile/ads/impl/jw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/km;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/jw0$a;,
        Lcom/yandex/mobile/ads/impl/jw0$f;,
        Lcom/yandex/mobile/ads/impl/jw0$g;,
        Lcom/yandex/mobile/ads/impl/jw0$e;,
        Lcom/yandex/mobile/ads/impl/jw0$b;,
        Lcom/yandex/mobile/ads/impl/jw0$c;,
        Lcom/yandex/mobile/ads/impl/jw0$h;,
        Lcom/yandex/mobile/ads/impl/jw0$i;,
        Lcom/yandex/mobile/ads/impl/jw0$j;,
        Lcom/yandex/mobile/ads/impl/jw0$d;
    }
.end annotation


# static fields
.field public static final h:Lcom/yandex/mobile/ads/impl/km$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/km$a<",
            "Lcom/yandex/mobile/ads/impl/jw0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/yandex/mobile/ads/impl/jw0$g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lcom/yandex/mobile/ads/impl/jw0$e;

.field public final e:Lcom/yandex/mobile/ads/impl/mw0;

.field public final f:Lcom/yandex/mobile/ads/impl/jw0$c;

.field public final g:Lcom/yandex/mobile/ads/impl/jw0$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/jw0$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/jw0$d$a;-><init>(Lskd;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jw0$e$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jw0$e$a;-><init>()V

    sget-object v1, Lcom/yandex/mobile/ads/impl/jw0$h;->d:Lcom/yandex/mobile/ads/impl/jw0$h;

    new-instance v1, Lcom/yandex/mobile/ads/impl/jw0$c;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jw0$e$a;->a()Lcom/yandex/mobile/ads/impl/jw0$e;

    sget-object v0, Lcom/yandex/mobile/ads/impl/mw0;->H:Lcom/yandex/mobile/ads/impl/mw0;

    new-instance v0, Lokd;

    invoke-direct {v0}, Lokd;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/jw0;->h:Lcom/yandex/mobile/ads/impl/km$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$c;Lcom/yandex/mobile/ads/impl/jw0$g;Lcom/yandex/mobile/ads/impl/jw0$e;Lcom/yandex/mobile/ads/impl/mw0;Lcom/yandex/mobile/ads/impl/jw0$h;)V
    .locals 0
    .param p3    # Lcom/yandex/mobile/ads/impl/jw0$g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jw0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    .line 5
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/jw0;->d:Lcom/yandex/mobile/ads/impl/jw0$e;

    .line 6
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/jw0;->e:Lcom/yandex/mobile/ads/impl/mw0;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jw0;->f:Lcom/yandex/mobile/ads/impl/jw0$c;

    .line 8
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/jw0;->g:Lcom/yandex/mobile/ads/impl/jw0$h;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$c;Lcom/yandex/mobile/ads/impl/jw0$g;Lcom/yandex/mobile/ads/impl/jw0$e;Lcom/yandex/mobile/ads/impl/mw0;Lcom/yandex/mobile/ads/impl/jw0$h;Lskd;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/yandex/mobile/ads/impl/jw0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$c;Lcom/yandex/mobile/ads/impl/jw0$g;Lcom/yandex/mobile/ads/impl/jw0$e;Lcom/yandex/mobile/ads/impl/mw0;Lcom/yandex/mobile/ads/impl/jw0$h;)V

    return-void
.end method

.method private static a(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/jw0;
    .locals 10

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/yandex/mobile/ads/impl/jw0$e;->g:Lcom/yandex/mobile/ads/impl/jw0$e;

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 7
    :cond_0
    sget-object v2, Lcom/yandex/mobile/ads/impl/jw0$e;->h:Lcom/yandex/mobile/ads/impl/km$a;

    invoke-interface {v2, v0}, Lcom/yandex/mobile/ads/impl/km$a;->fromBundle(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/km;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jw0$e;

    goto :goto_0

    :goto_1
    const/4 v0, 0x2

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    sget-object v0, Lcom/yandex/mobile/ads/impl/mw0;->H:Lcom/yandex/mobile/ads/impl/mw0;

    :goto_2
    move-object v8, v0

    goto :goto_3

    .line 11
    :cond_1
    sget-object v2, Lcom/yandex/mobile/ads/impl/mw0;->I:Lcom/yandex/mobile/ads/impl/km$a;

    invoke-interface {v2, v0}, Lcom/yandex/mobile/ads/impl/km$a;->fromBundle(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/km;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/mw0;

    goto :goto_2

    :goto_3
    const/4 v0, 0x3

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 14
    sget-object v0, Lcom/yandex/mobile/ads/impl/jw0$c;->h:Lcom/yandex/mobile/ads/impl/jw0$c;

    :goto_4
    move-object v5, v0

    goto :goto_5

    .line 15
    :cond_2
    sget-object v2, Lcom/yandex/mobile/ads/impl/jw0$b;->g:Lcom/yandex/mobile/ads/impl/km$a;

    invoke-interface {v2, v0}, Lcom/yandex/mobile/ads/impl/km$a;->fromBundle(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/km;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/jw0$c;

    goto :goto_4

    :goto_5
    const/4 v0, 0x4

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_3

    .line 18
    sget-object p0, Lcom/yandex/mobile/ads/impl/jw0$h;->d:Lcom/yandex/mobile/ads/impl/jw0$h;

    :goto_6
    move-object v9, p0

    goto :goto_7

    .line 19
    :cond_3
    sget-object v0, Lcom/yandex/mobile/ads/impl/jw0$h;->e:Lcom/yandex/mobile/ads/impl/km$a;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/km$a;->fromBundle(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/km;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/jw0$h;

    goto :goto_6

    .line 20
    :goto_7
    new-instance p0, Lcom/yandex/mobile/ads/impl/jw0;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/yandex/mobile/ads/impl/jw0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$c;Lcom/yandex/mobile/ads/impl/jw0$g;Lcom/yandex/mobile/ads/impl/jw0$e;Lcom/yandex/mobile/ads/impl/mw0;Lcom/yandex/mobile/ads/impl/jw0$h;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/jw0;
    .locals 17

    .line 21
    new-instance v0, Lcom/yandex/mobile/ads/impl/jw0$b$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jw0$b$a;-><init>()V

    .line 22
    new-instance v1, Lcom/yandex/mobile/ads/impl/jw0$d$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/impl/jw0$d$a;-><init>(Lskd;)V

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 24
    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v9

    .line 25
    sget-object v16, Lcom/yandex/mobile/ads/impl/jw0$h;->d:Lcom/yandex/mobile/ads/impl/jw0$h;

    if-nez p0, :cond_0

    move-object v4, v2

    goto :goto_0

    .line 26
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_1

    .line 27
    new-instance v1, Lcom/yandex/mobile/ads/impl/jw0$g;

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    .line 28
    invoke-direct/range {v3 .. v11}, Lcom/yandex/mobile/ads/impl/jw0$g;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$d;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/kk0;Ljava/lang/Object;Lskd;)V

    move-object v13, v1

    goto :goto_1

    :cond_1
    move-object v13, v2

    .line 29
    :goto_1
    new-instance v1, Lcom/yandex/mobile/ads/impl/jw0;

    .line 30
    new-instance v12, Lcom/yandex/mobile/ads/impl/jw0$c;

    invoke-direct {v12, v0, v2}, Lcom/yandex/mobile/ads/impl/jw0$c;-><init>(Lcom/yandex/mobile/ads/impl/jw0$b$a;Lskd;)V

    .line 31
    new-instance v14, Lcom/yandex/mobile/ads/impl/jw0$e;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const v10, -0x800001

    const v11, -0x800001

    move-object v3, v14

    .line 32
    invoke-direct/range {v3 .. v11}, Lcom/yandex/mobile/ads/impl/jw0$e;-><init>(JJJFF)V

    .line 33
    sget-object v15, Lcom/yandex/mobile/ads/impl/mw0;->H:Lcom/yandex/mobile/ads/impl/mw0;

    const-string v11, ""

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lcom/yandex/mobile/ads/impl/jw0;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$c;Lcom/yandex/mobile/ads/impl/jw0$g;Lcom/yandex/mobile/ads/impl/jw0$e;Lcom/yandex/mobile/ads/impl/mw0;Lcom/yandex/mobile/ads/impl/jw0$h;)V

    return-object v1
.end method

.method public static synthetic b(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/jw0;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/jw0;->a(Landroid/os/Bundle;)Lcom/yandex/mobile/ads/impl/jw0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/jw0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/jw0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jw0;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/jw0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jw0;->f:Lcom/yandex/mobile/ads/impl/jw0$c;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/jw0;->f:Lcom/yandex/mobile/ads/impl/jw0$c;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/jw0$b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jw0;->d:Lcom/yandex/mobile/ads/impl/jw0$e;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/jw0;->d:Lcom/yandex/mobile/ads/impl/jw0$e;

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jw0;->e:Lcom/yandex/mobile/ads/impl/mw0;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/jw0;->e:Lcom/yandex/mobile/ads/impl/mw0;

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jw0;->g:Lcom/yandex/mobile/ads/impl/jw0$h;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jw0;->g:Lcom/yandex/mobile/ads/impl/jw0$h;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jw0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jw0;->c:Lcom/yandex/mobile/ads/impl/jw0$g;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/jw0$f;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jw0;->d:Lcom/yandex/mobile/ads/impl/jw0$e;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/jw0$e;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jw0;->f:Lcom/yandex/mobile/ads/impl/jw0$c;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/jw0$b;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/jw0;->e:Lcom/yandex/mobile/ads/impl/mw0;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/mw0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jw0;->g:Lcom/yandex/mobile/ads/impl/jw0$h;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jw0$h;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
