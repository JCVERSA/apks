.class public final synthetic Lcfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Lefh;


# direct methods
.method public synthetic constructor <init>(Lefh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfh;->a:Lefh;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcfh;->a:Lefh;

    check-cast p1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-static {p0, p1}, Lefh;->a(Lefh;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Lffh;

    move-result-object p0

    return-object p0
.end method
