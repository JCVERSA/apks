.class public final Lcsf;
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

    iput-object p1, p0, Lcsf;->a:Lasf;

    return-void
.end method

.method public static b(Lasf;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lasf;->a()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcsf;->a:Lasf;

    invoke-static {p0}, Lcsf;->b(Lasf;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcsf;->a:Lasf;

    invoke-static {p0}, Lcsf;->b(Lasf;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
