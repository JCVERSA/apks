.class public final Lkbg;
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


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkbg;->a:Lqyi;

    iput-object p2, p0, Lkbg;->b:Lqyi;

    iput-object p3, p0, Lkbg;->c:Lqyi;

    iput-object p4, p0, Lkbg;->d:Lqyi;

    iput-object p5, p0, Lkbg;->e:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lkbg;->a:Lqyi;

    check-cast v0, Llyi;

    invoke-virtual {v0}, Llyi;->c()Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map;

    iget-object v0, p0, Lkbg;->b:Lqyi;

    check-cast v0, Llyi;

    invoke-virtual {v0}, Llyi;->c()Ljava/util/Map;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget-object v0, p0, Lkbg;->c:Lqyi;

    check-cast v0, Llyi;

    invoke-virtual {v0}, Llyi;->c()Ljava/util/Map;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    iget-object v0, p0, Lkbg;->e:Lqyi;

    check-cast v0, Lobg;

    invoke-virtual {v0}, Lobg;->a()Lsdg;

    move-result-object v6

    iget-object v5, p0, Lkbg;->d:Lqyi;

    new-instance p0, Ljbg;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Ljbg;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lvyi;Lsdg;)V

    return-object p0
.end method
