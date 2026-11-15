.class public final Lmcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lhcg;


# direct methods
.method public constructor <init>(Lhcg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmcg;->a:Lhcg;

    return-void
.end method

.method public static b(Lhcg;)Lhig;
    .locals 0

    invoke-virtual {p0}, Lhcg;->a()Lhig;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a()Lhig;
    .locals 0

    iget-object p0, p0, Lmcg;->a:Lhcg;

    invoke-static {p0}, Lmcg;->b(Lhcg;)Lhig;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmcg;->a:Lhcg;

    invoke-static {p0}, Lmcg;->b(Lhcg;)Lhig;

    move-result-object p0

    return-object p0
.end method
