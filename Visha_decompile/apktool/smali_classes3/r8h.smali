.class public final Lr8h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldeh;


# instance fields
.field public final a:Lorg/json/JSONObject;

.field public final b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr8h;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lr8h;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lr8h;->b:Lorg/json/JSONObject;

    check-cast p1, Lkyf;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lkyf;->b:Landroid/os/Bundle;

    const-string v0, "fwd_common_cld"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lkyf;

    iget-object p1, p1, Lkyf;->a:Landroid/os/Bundle;

    iget-object v0, p0, Lr8h;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "fwd_cld"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lr8h;->b:Lorg/json/JSONObject;

    if-eqz p0, :cond_1

    const-string v0, "fwd_common_cld"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
