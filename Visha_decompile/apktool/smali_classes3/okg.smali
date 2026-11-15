.class public final Lokg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# direct methods
.method public constructor <init>(Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object p0

    new-instance v0, Llkg;

    invoke-direct {v0, p0}, Llkg;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
