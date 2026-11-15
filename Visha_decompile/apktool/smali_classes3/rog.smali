.class public final Lrog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrog;->a:Lqyi;

    return-void
.end method

.method public static a(Lqog;Ljava/util/concurrent/Executor;)Li8g;
    .locals 1

    new-instance v0, Li8g;

    invoke-direct {v0, p0, p1}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lrog;->a:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqog;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    invoke-static {p0, v0}, Lrog;->a(Lqog;Ljava/util/concurrent/Executor;)Li8g;

    move-result-object p0

    return-object p0
.end method
