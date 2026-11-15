.class public final Lbyf;
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

    iput-object p1, p0, Lbyf;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbyf;->a:Lqyi;

    check-cast p0, Lrrf;

    invoke-virtual {p0}, Lrrf;->a()Lcom/google/android/gms/internal/ads/i4;

    move-result-object p0

    return-object p0
.end method
