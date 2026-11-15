.class public final Lb2g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2g;->a:Lqyi;

    iput-object p2, p0, Lb2g;->b:Lqyi;

    iput-object p3, p0, Lb2g;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lb2g;->a:Lqyi;

    check-cast v0, Ltyi;

    invoke-virtual {v0}, Ltyi;->b()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lb2g;->b:Lqyi;

    check-cast v1, Lquf;

    invoke-virtual {v1}, Lquf;->a()Lhmh;

    move-result-object v1

    iget-object p0, p0, Lb2g;->c:Lqyi;

    check-cast p0, Lwuf;

    invoke-virtual {p0}, Lwuf;->a()Lvmh;

    move-result-object p0

    new-instance v2, La2g;

    invoke-direct {v2, v0, v1, p0}, La2g;-><init>(Ljava/util/Set;Lhmh;Lvmh;)V

    return-object v2
.end method
