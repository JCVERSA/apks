.class public final Lgwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zza;


# instance fields
.field public final b:Lkwf;

.field public final c:Lenh;


# direct methods
.method public constructor <init>(Lkwf;Lenh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgwf;->b:Lkwf;

    iput-object p2, p0, Lgwf;->c:Lenh;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lgwf;->c:Lenh;

    iget-object p0, p0, Lgwf;->b:Lkwf;

    iget-object v0, v0, Lenh;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lkwf;->c(Ljava/lang/String;)V

    return-void
.end method
