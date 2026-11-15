.class public final Ldsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lasf;


# direct methods
.method public constructor <init>(Lasf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldsf;->a:Lasf;

    return-void
.end method

.method public static b(Lasf;)Limh;
    .locals 0

    invoke-virtual {p0}, Lasf;->e()Limh;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a()Limh;
    .locals 0

    iget-object p0, p0, Ldsf;->a:Lasf;

    invoke-static {p0}, Ldsf;->b(Lasf;)Limh;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldsf;->a:Lasf;

    invoke-static {p0}, Ldsf;->b(Lasf;)Limh;

    move-result-object p0

    return-object p0
.end method
