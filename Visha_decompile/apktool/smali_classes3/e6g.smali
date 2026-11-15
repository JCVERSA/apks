.class public final Le6g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Ld6g;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Ld6g;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6g;->a:Ld6g;

    iput-object p2, p0, Le6g;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le6g;->b:Lqyi;

    check-cast v0, Ltyi;

    invoke-virtual {v0}, Ltyi;->b()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object p0, p0, Le6g;->a:Ld6g;

    invoke-virtual {p0, v0}, Ld6g;->a(Ljava/util/Set;)Lmzf;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
