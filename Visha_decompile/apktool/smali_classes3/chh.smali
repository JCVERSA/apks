.class public final Lchh;
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
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lchh;->a:Lqyi;

    iput-object p2, p0, Lchh;->b:Lqyi;

    iput-object p3, p0, Lchh;->c:Lqyi;

    iput-object p6, p0, Lchh;->d:Lqyi;

    iput-object p7, p0, Lchh;->e:Lqyi;

    iput-object p8, p0, Lchh;->f:Lqyi;

    iput-object p9, p0, Lchh;->g:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lchh;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lqef;

    iget-object v0, p0, Lchh;->b:Lqyi;

    check-cast v0, Lsgh;

    invoke-virtual {v0}, Lsgh;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v0, p0, Lchh;->c:Lqyi;

    check-cast v0, Ltgh;

    invoke-virtual {v0}, Ltgh;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Ljof;->a()Lfef;

    move-result-object v5

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v6

    iget-object v0, p0, Lchh;->d:Lqyi;

    check-cast v0, Lpgh;

    invoke-virtual {v0}, Lpgh;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lchh;->e:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lchh;->f:Lqyi;

    check-cast v0, Lvgh;

    invoke-virtual {v0}, Lvgh;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object p0, p0, Lchh;->g:Lqyi;

    check-cast p0, Lwgh;

    invoke-virtual {p0}, Lwgh;->a()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    new-instance p0, Lahh;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lahh;-><init>(Lqef;ZZLfef;Lg8i;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;II)V

    return-object p0
.end method
