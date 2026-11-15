.class public final Ljzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmxg;


# instance fields
.field public final a:Ljkg;


# direct methods
.method public constructor <init>(Ljkg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljzg;->a:Ljkg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)Lnxg;
    .locals 1

    iget-object p0, p0, Ljzg;->a:Ljkg;

    invoke-virtual {p0, p1, p2}, Ljkg;->c(Ljava/lang/String;Lorg/json/JSONObject;)Leoh;

    move-result-object p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzedw;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzedw;-><init>()V

    new-instance v0, Lnxg;

    invoke-direct {v0, p0, p2, p1}, Lnxg;-><init>(Ljava/lang/Object;Lx0g;Ljava/lang/String;)V

    return-object v0
.end method
