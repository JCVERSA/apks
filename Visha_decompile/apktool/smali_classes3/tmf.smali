.class public final Ltmf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxag;


# instance fields
.field public final a:Lzlf;

.field public b:Lakh;

.field public c:Lajh;

.field public d:Ld6g;

.field public e:Lryf;

.field public f:Lw2h;


# direct methods
.method public synthetic constructor <init>(Lzlf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltmf;->a:Lzlf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic h(Ld6g;)Lxag;
    .locals 0

    iput-object p1, p0, Ltmf;->d:Ld6g;

    return-object p0
.end method

.method public final synthetic i(Lajh;)Lnyf;
    .locals 0

    iput-object p1, p0, Ltmf;->c:Lajh;

    return-object p0
.end method

.method public final bridge synthetic l(Lw2h;)Lxag;
    .locals 0

    iput-object p1, p0, Ltmf;->f:Lw2h;

    return-object p0
.end method

.method public final synthetic m(Lakh;)Lnyf;
    .locals 0

    iput-object p1, p0, Ltmf;->b:Lakh;

    return-object p0
.end method

.method public final bridge synthetic o(Lryf;)Lxag;
    .locals 0

    iput-object p1, p0, Ltmf;->e:Lryf;

    return-object p0
.end method

.method public final zzf()Lyag;
    .locals 15

    iget-object v0, p0, Ltmf;->d:Ld6g;

    const-class v1, Ld6g;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Ltmf;->e:Lryf;

    const-class v1, Lryf;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Ltmf;->f:Lw2h;

    const-class v1, Lw2h;

    invoke-static {v0, v1}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lumf;

    new-instance v4, Livf;

    invoke-direct {v4}, Livf;-><init>()V

    new-instance v5, Lkoh;

    invoke-direct {v5}, Lkoh;-><init>()V

    new-instance v6, Lqxf;

    invoke-direct {v6}, Lqxf;-><init>()V

    new-instance v7, Lfng;

    invoke-direct {v7}, Lfng;-><init>()V

    iget-object v8, p0, Ltmf;->d:Ld6g;

    iget-object v9, p0, Ltmf;->e:Lryf;

    invoke-static {}, Ld1h;->a()Lb1h;

    move-result-object v10

    iget-object v11, p0, Ltmf;->f:Lw2h;

    iget-object v13, p0, Ltmf;->b:Lakh;

    iget-object v14, p0, Ltmf;->c:Lajh;

    iget-object v3, p0, Ltmf;->a:Lzlf;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lumf;-><init>(Lzlf;Livf;Lkoh;Lqxf;Lfng;Ld6g;Lryf;Lb1h;Lw2h;Lvmh;Lakh;Lajh;)V

    return-object v0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ltmf;->zzf()Lyag;

    move-result-object p0

    return-object p0
.end method
