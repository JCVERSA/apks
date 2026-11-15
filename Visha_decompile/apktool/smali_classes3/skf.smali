.class public final Lskf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lokf;


# direct methods
.method public constructor <init>(Lokf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lskf;->a:Lokf;

    return-void
.end method

.method public static b(Lokf;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0}, Lokf;->b()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lpyi;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lskf;->a:Lokf;

    invoke-static {p0}, Lskf;->b(Lokf;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lskf;->a:Lokf;

    invoke-static {p0}, Lskf;->b(Lokf;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
