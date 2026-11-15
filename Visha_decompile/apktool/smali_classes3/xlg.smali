.class public final Lxlg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxlg;->a:Lqyi;

    iput-object p2, p0, Lxlg;->b:Lqyi;

    iput-object p3, p0, Lxlg;->c:Lqyi;

    iput-object p4, p0, Lxlg;->d:Lqyi;

    iput-object p5, p0, Lxlg;->e:Lqyi;

    iput-object p6, p0, Lxlg;->f:Lqyi;

    iput-object p7, p0, Lxlg;->g:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lxlg;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lxlg;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lynh;

    iget-object v0, p0, Lxlg;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lsmg;

    iget-object v0, p0, Lxlg;->d:Lqyi;

    check-cast v0, Lwuf;

    invoke-virtual {v0}, Lwuf;->a()Lvmh;

    move-result-object v5

    iget-object v0, p0, Lxlg;->e:Lqyi;

    check-cast v0, Lquf;

    invoke-virtual {v0}, Lquf;->a()Lhmh;

    move-result-object v6

    iget-object v0, p0, Lxlg;->f:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldwg;

    iget-object p0, p0, Lxlg;->g:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Ljava/lang/String;

    new-instance p0, Lwlg;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lwlg;-><init>(Landroid/content/Context;Lynh;Lsmg;Lvmh;Lhmh;Ldwg;Ljava/lang/String;)V

    return-object p0
.end method
