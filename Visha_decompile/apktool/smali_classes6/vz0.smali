.class public final Lvz0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvz0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Lipa;

.field public final f:Lxfb;

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Lvz0$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lvz0$a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvz0;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lvz0$a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvz0;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lvz0$a;->l()Z

    move-result v0

    iput-boolean v0, p0, Lvz0;->c:Z

    .line 6
    invoke-virtual {p1}, Lvz0$a;->f()Z

    move-result v0

    iput-boolean v0, p0, Lvz0;->d:Z

    .line 7
    invoke-virtual {p1}, Lvz0$a;->i()Lipa;

    move-result-object v0

    iput-object v0, p0, Lvz0;->e:Lipa;

    .line 8
    invoke-virtual {p1}, Lvz0$a;->j()Lxfb;

    move-result-object v0

    iput-object v0, p0, Lvz0;->f:Lxfb;

    .line 9
    invoke-virtual {p1}, Lvz0$a;->h()I

    move-result v0

    iput v0, p0, Lvz0;->g:I

    .line 10
    invoke-virtual {p1}, Lvz0$a;->e()Z

    move-result v0

    iput-boolean v0, p0, Lvz0;->h:Z

    .line 11
    invoke-virtual {p1}, Lvz0$a;->k()I

    move-result v0

    iput v0, p0, Lvz0;->i:I

    .line 12
    invoke-virtual {p1}, Lvz0$a;->g()I

    move-result v0

    iput v0, p0, Lvz0;->j:I

    .line 13
    invoke-virtual {p1}, Lvz0$a;->d()I

    move-result p1

    iput p1, p0, Lvz0;->k:I

    return-void
.end method

.method public synthetic constructor <init>(Lvz0$a;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lvz0;-><init>(Lvz0$a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvz0;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lvz0;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lvz0;->k:I

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lvz0;->h:Z

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lvz0;->d:Z

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lvz0;->j:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lvz0;->g:I

    return p0
.end method

.method public final h()Lipa;
    .locals 0

    iget-object p0, p0, Lvz0;->e:Lipa;

    return-object p0
.end method

.method public final i()Lxfb;
    .locals 0

    iget-object p0, p0, Lvz0;->f:Lxfb;

    return-object p0
.end method

.method public final j()I
    .locals 0

    iget p0, p0, Lvz0;->i:I

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lvz0;->c:Z

    return p0
.end method
