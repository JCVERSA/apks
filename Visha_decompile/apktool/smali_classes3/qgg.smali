.class public final synthetic Lqgg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqgg;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfg;

    new-instance v0, Lvgg;

    iget-object p0, p0, Lqgg;->a:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lvgg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbfg;)V

    return-object v0
.end method
