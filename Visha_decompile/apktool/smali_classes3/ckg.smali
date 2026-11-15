.class public final Lckg;
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

    iput-object p1, p0, Lckg;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lbkg;
    .locals 1

    iget-object p0, p0, Lckg;->a:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lejf;

    new-instance v0, Lbkg;

    invoke-direct {v0, p0}, Lbkg;-><init>(Lejf;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lckg;->a()Lbkg;

    move-result-object p0

    return-object p0
.end method
