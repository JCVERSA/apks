.class public final Lorh;
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

    iput-object p1, p0, Lorh;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lkrh;
    .locals 1

    iget-object p0, p0, Lorh;->a:Lqyi;

    check-cast p0, Ltyi;

    invoke-virtual {p0}, Ltyi;->b()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    new-instance v0, Lkrh;

    invoke-direct {v0, p0}, Lkrh;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorh;->a()Lkrh;

    move-result-object p0

    return-object p0
.end method
