.class public final synthetic Lr7f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7i;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ln3f;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ln3f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr7f;->a:Ljava/lang/String;

    iput-object p2, p0, Lr7f;->b:Ln3f;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lim5;
    .locals 1

    check-cast p1, Lr6f;

    iget-object v0, p0, Lr7f;->a:Ljava/lang/String;

    iget-object p0, p0, Lr7f;->b:Ln3f;

    invoke-interface {p1, v0, p0}, Lr6f;->b(Ljava/lang/String;Ln3f;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/j8;->h(Ljava/lang/Object;)Lim5;

    move-result-object p0

    return-object p0
.end method
