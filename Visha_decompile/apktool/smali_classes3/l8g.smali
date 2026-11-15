.class public final Ll8g;
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

    iput-object p1, p0, Ll8g;->a:Lqyi;

    iput-object p2, p0, Ll8g;->b:Lqyi;

    iput-object p3, p0, Ll8g;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ll8g;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ll8g;->b:Lqyi;

    check-cast v1, Ltyi;

    invoke-virtual {v1}, Ltyi;->b()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object p0, p0, Ll8g;->c:Lqyi;

    check-cast p0, Lquf;

    invoke-virtual {p0}, Lquf;->a()Lhmh;

    move-result-object p0

    new-instance v2, Lk8g;

    invoke-direct {v2, v0, v1, p0}, Lk8g;-><init>(Landroid/content/Context;Ljava/util/Set;Lhmh;)V

    return-object v2
.end method
