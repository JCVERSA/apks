.class public final synthetic Lcom/google/android/gms/internal/ads/zzbxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    sget-object p0, Lzcf;->l:Ljava/util/List;

    const-string p0, "Pinged SB successfully."

    invoke-static {p0}, Lcdf;->a(Ljava/lang/String;)V

    return-void
.end method
