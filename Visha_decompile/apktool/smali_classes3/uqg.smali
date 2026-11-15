.class public final Luqg;
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

    iput-object p1, p0, Luqg;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Luqg;->a:Lqyi;

    check-cast p0, Lgsg;

    invoke-virtual {p0}, Lgsg;->a()Lfsg;

    move-result-object p0

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    new-instance v1, Li8g;

    invoke-direct {v1, p0, v0}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
