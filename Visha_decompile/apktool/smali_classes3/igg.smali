.class public final synthetic Ligg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2i;


# instance fields
.field public final synthetic a:Logg;

.field public final synthetic b:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Logg;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ligg;->a:Logg;

    iput-object p2, p0, Ligg;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ligg;->a:Logg;

    iget-object p0, p0, Ligg;->b:Lorg/json/JSONObject;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Logg;->a(Logg;Lorg/json/JSONObject;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzbfd;

    move-result-object p0

    return-object p0
.end method
