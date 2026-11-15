.class public final Lwlf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpbg;


# instance fields
.field public final a:Lzlf;

.field public b:Lakh;

.field public c:Lajh;

.field public d:Ld6g;

.field public e:Lryf;

.field public f:Llbg;

.field public g:Lprf;


# direct methods
.method public synthetic constructor <init>(Lzlf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwlf;->a:Lzlf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lprf;)Lpbg;
    .locals 0

    iput-object p1, p0, Lwlf;->g:Lprf;

    return-object p0
.end method

.method public final bridge synthetic d(Llbg;)Lpbg;
    .locals 0

    iput-object p1, p0, Lwlf;->f:Llbg;

    return-object p0
.end method

.method public final bridge synthetic g(Ld6g;)Lpbg;
    .locals 0

    iput-object p1, p0, Lwlf;->d:Ld6g;

    return-object p0
.end method

.method public final synthetic i(Lajh;)Lnyf;
    .locals 0

    iput-object p1, p0, Lwlf;->c:Lajh;

    return-object p0
.end method

.method public final synthetic m(Lakh;)Lnyf;
    .locals 0

    iput-object p1, p0, Lwlf;->b:Lakh;

    return-object p0
.end method

.method public final bridge synthetic n(Lryf;)Lpbg;
    .locals 0

    iput-object p1, p0, Lwlf;->e:Lryf;

    return-object p0
.end method

.method public final zzg()Lubg;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lwlf;->d:Ld6g;

    const-class v2, Ld6g;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lwlf;->e:Lryf;

    const-class v2, Lryf;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lwlf;->f:Llbg;

    const-class v2, Llbg;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lwlf;->g:Lprf;

    const-class v2, Lprf;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Lxlf;

    iget-object v5, v0, Lwlf;->g:Lprf;

    iget-object v6, v0, Lwlf;->f:Llbg;

    new-instance v7, Livf;

    invoke-direct {v7}, Livf;-><init>()V

    new-instance v8, Lkoh;

    invoke-direct {v8}, Lkoh;-><init>()V

    new-instance v9, Lqxf;

    invoke-direct {v9}, Lqxf;-><init>()V

    new-instance v10, Lfng;

    invoke-direct {v10}, Lfng;-><init>()V

    iget-object v11, v0, Lwlf;->d:Ld6g;

    iget-object v12, v0, Lwlf;->e:Lryf;

    invoke-static {}, Ld1h;->a()Lb1h;

    move-result-object v13

    iget-object v15, v0, Lwlf;->b:Lakh;

    iget-object v2, v0, Lwlf;->c:Lajh;

    iget-object v4, v0, Lwlf;->a:Lzlf;

    const/4 v14, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v16}, Lxlf;-><init>(Lzlf;Lprf;Llbg;Livf;Lkoh;Lqxf;Lfng;Ld6g;Lryf;Lb1h;Lvmh;Lakh;Lajh;)V

    return-object v1
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lwlf;->zzg()Lubg;

    move-result-object p0

    return-object p0
.end method
