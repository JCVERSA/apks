.class public final Lwch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwch;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lwch;->a:Lqyi;

    check-cast p0, Luyf;

    invoke-virtual {p0}, Luyf;->a()Landroid/os/Bundle;

    move-result-object p0

    new-instance v0, Luch;

    invoke-direct {v0, p0}, Luch;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
