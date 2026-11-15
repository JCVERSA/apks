.class public final Lh3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lejf;

    invoke-interface {p1}, Lejf;->zzK()Lz0f;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lz0f;->zzc()V

    :cond_0
    return-void
.end method
