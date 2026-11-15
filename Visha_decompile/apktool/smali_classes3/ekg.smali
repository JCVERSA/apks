.class public final Lekg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Ldkg;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lekg;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lekg;->a:Lqyi;

    check-cast p0, Lckg;

    invoke-virtual {p0}, Lckg;->a()Lbkg;

    move-result-object p0

    new-instance v0, Li8g;

    sget-object v1, Lzef;->f:Lg8i;

    invoke-direct {v0, p0, v1}, Li8g;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
