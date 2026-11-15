.class public final Limf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzsf;


# instance fields
.field public final a:Lzlf;

.field public b:Lakh;

.field public c:Lajh;

.field public d:Ld6g;

.field public e:Lryf;

.field public f:Lw2h;

.field public g:Lqtf;

.field public h:Lb1h;

.field public i:Lprf;

.field public j:Llbg;


# direct methods
.method public synthetic constructor <init>(Lzlf;Ldnf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Limf;->a:Lzlf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lprf;)Lzsf;
    .locals 0

    iput-object p1, p0, Limf;->i:Lprf;

    return-object p0
.end method

.method public final bridge synthetic d(Llbg;)Lzsf;
    .locals 0

    iput-object p1, p0, Limf;->j:Llbg;

    return-object p0
.end method

.method public final bridge synthetic e(Lb1h;)Lzsf;
    .locals 0

    iput-object p1, p0, Limf;->h:Lb1h;

    return-object p0
.end method

.method public final bridge synthetic f(Ld6g;)Lzsf;
    .locals 0

    iput-object p1, p0, Limf;->d:Ld6g;

    return-object p0
.end method

.method public final synthetic i(Lajh;)Lnyf;
    .locals 0

    iput-object p1, p0, Limf;->c:Lajh;

    return-object p0
.end method

.method public final bridge synthetic j(Lw2h;)Lzsf;
    .locals 0

    iput-object p1, p0, Limf;->f:Lw2h;

    return-object p0
.end method

.method public final bridge synthetic k(Lryf;)Lzsf;
    .locals 0

    iput-object p1, p0, Limf;->e:Lryf;

    return-object p0
.end method

.method public final synthetic m(Lakh;)Lnyf;
    .locals 0

    iput-object p1, p0, Limf;->b:Lakh;

    return-object p0
.end method

.method public final bridge synthetic p(Lqtf;)Lzsf;
    .locals 0

    iput-object p1, p0, Limf;->g:Lqtf;

    return-object p0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Limf;->zzk()Latf;

    move-result-object p0

    return-object p0
.end method

.method public final zzk()Latf;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Limf;->d:Ld6g;

    const-class v2, Ld6g;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Limf;->e:Lryf;

    const-class v2, Lryf;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Limf;->f:Lw2h;

    const-class v2, Lw2h;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Limf;->g:Lqtf;

    const-class v2, Lqtf;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Limf;->h:Lb1h;

    if-nez v1, :cond_0

    invoke-static {}, Ld1h;->a()Lb1h;

    move-result-object v1

    iput-object v1, v0, Limf;->h:Lb1h;

    :cond_0
    iget-object v1, v0, Limf;->i:Lprf;

    const-class v2, Lprf;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Limf;->j:Llbg;

    const-class v2, Llbg;

    invoke-static {v1, v2}, Lpyi;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v4, v0, Limf;->a:Lzlf;

    new-instance v1, Ljmf;

    iget-object v5, v0, Limf;->i:Lprf;

    iget-object v6, v0, Limf;->j:Llbg;

    new-instance v7, Livf;

    invoke-direct {v7}, Livf;-><init>()V

    new-instance v8, Lkoh;

    invoke-direct {v8}, Lkoh;-><init>()V

    new-instance v9, Lqxf;

    invoke-direct {v9}, Lqxf;-><init>()V

    new-instance v10, Lfng;

    invoke-direct {v10}, Lfng;-><init>()V

    iget-object v11, v0, Limf;->d:Ld6g;

    iget-object v12, v0, Limf;->e:Lryf;

    iget-object v13, v0, Limf;->h:Lb1h;

    iget-object v14, v0, Limf;->f:Lw2h;

    iget-object v15, v0, Limf;->g:Lqtf;

    iget-object v2, v0, Limf;->b:Lakh;

    iget-object v0, v0, Limf;->c:Lajh;

    const/16 v16, 0x0

    move-object v3, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Ljmf;-><init>(Lzlf;Lprf;Llbg;Livf;Lkoh;Lqxf;Lfng;Ld6g;Lryf;Lb1h;Lw2h;Lqtf;Lvmh;Lakh;Lajh;)V

    return-object v1
.end method
