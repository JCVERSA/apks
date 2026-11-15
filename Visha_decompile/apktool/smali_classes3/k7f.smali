.class public final Lk7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liff;


# instance fields
.field public final synthetic a:Lm6f;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Leff;

.field public final synthetic d:Ln7f;


# direct methods
.method public constructor <init>(Ln7f;Lm6f;Ljava/lang/Object;Leff;)V
    .locals 0

    iput-object p2, p0, Lk7f;->a:Lm6f;

    iput-object p3, p0, Lk7f;->b:Ljava/lang/Object;

    iput-object p4, p0, Lk7f;->c:Leff;

    iput-object p1, p0, Lk7f;->d:Ln7f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lr6f;

    const-string v0, "callJs > getEngine: Promise fulfilled"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lk7f;->b:Ljava/lang/Object;

    iget-object v1, p0, Lk7f;->c:Leff;

    iget-object v2, p0, Lk7f;->d:Ln7f;

    iget-object p0, p0, Lk7f;->a:Lm6f;

    invoke-static {v2, p0, p1, v0, v1}, Ln7f;->b(Ln7f;Lm6f;Lr6f;Ljava/lang/Object;Leff;)V

    return-void
.end method
