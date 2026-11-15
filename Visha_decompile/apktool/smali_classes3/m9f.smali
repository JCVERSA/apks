.class public final Lm9f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lo9f;


# direct methods
.method public constructor <init>(Lo9f;)V
    .locals 0

    iput-object p1, p0, Lm9f;->b:Lo9f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lm9f;->b:Lo9f;

    invoke-virtual {p0}, Lo9f;->i()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p0}, Lo9f;->h(Lo9f;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzU(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
