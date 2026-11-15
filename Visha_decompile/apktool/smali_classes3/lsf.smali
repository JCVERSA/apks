.class public final Llsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lasf;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lasf;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llsf;->a:Lasf;

    iput-object p2, p0, Llsf;->b:Lqyi;

    return-void
.end method

.method public static a(Lasf;Lltf;)Li8g;
    .locals 1

    new-instance p0, Li8g;

    sget-object v0, Lzef;->f:Lg8i;

    invoke-direct {p0, p1, v0}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llsf;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lltf;

    iget-object p0, p0, Llsf;->a:Lasf;

    invoke-static {p0, v0}, Llsf;->a(Lasf;Lltf;)Li8g;

    move-result-object p0

    return-object p0
.end method
