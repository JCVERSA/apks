.class public final Lpag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lw9g;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lw9g;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpag;->a:Lw9g;

    iput-object p2, p0, Lpag;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lpag;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lpag;->a:Lw9g;

    invoke-virtual {p0, v0}, Lw9g;->d(Ljava/util/concurrent/Executor;)Li8g;

    move-result-object p0

    return-object p0
.end method
