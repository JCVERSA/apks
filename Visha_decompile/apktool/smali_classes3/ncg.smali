.class public final Lncg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lncg;->a:Lqyi;

    iput-object p2, p0, Lncg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lncg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lncg;->b:Lqyi;

    check-cast p0, Lquf;

    invoke-virtual {p0}, Lquf;->a()Lhmh;

    move-result-object p0

    new-instance v1, Lk8g;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v1, v0, v2, p0}, Lk8g;-><init>(Landroid/content/Context;Ljava/util/Set;Lhmh;)V

    return-object v1
.end method
