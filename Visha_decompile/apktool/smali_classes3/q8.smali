.class public final synthetic Lq8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# instance fields
.field public final synthetic a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;


# direct methods
.method public synthetic constructor <init>(Lcom/hisavana/admoblibrary/excuter/AdmobNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq8;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    return-void
.end method


# virtual methods
.method public final onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V
    .locals 0

    iget-object p0, p0, Lq8;->a:Lcom/hisavana/admoblibrary/excuter/AdmobNative;

    invoke-virtual {p0, p1}, Lcom/hisavana/admoblibrary/excuter/AdmobNative;->a(Lcom/google/android/gms/ads/AdValue;)V

    return-void
.end method
