.class public final synthetic Lbye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3i;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbye;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcye;->a:Lqxe;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Laye;

    move-result-object v0

    iget-object p0, p0, Lbye;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Laye;->d(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method
