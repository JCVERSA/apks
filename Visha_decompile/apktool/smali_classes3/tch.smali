.class public final Ltch;
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

    iput-object p1, p0, Ltch;->a:Lqyi;

    iput-object p2, p0, Ltch;->b:Lqyi;

    iput-object p3, p0, Ltch;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lrch;
    .locals 3

    iget-object v0, p0, Ltch;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Ltch;->b:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Ltch;->c:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lrch;

    invoke-direct {v2, v0, v1, p0}, Lrch;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ltch;->a()Lrch;

    move-result-object p0

    return-object p0
.end method
