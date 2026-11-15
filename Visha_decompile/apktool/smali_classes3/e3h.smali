.class public final Le3h;
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

    iput-object p1, p0, Le3h;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Ld3h;
    .locals 1

    iget-object p0, p0, Le3h;->a:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyag;

    new-instance v0, Ld3h;

    invoke-direct {v0, p0}, Ld3h;-><init>(Lyag;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le3h;->a()Ld3h;

    move-result-object p0

    return-object p0
.end method
