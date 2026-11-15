.class public final Lgt7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uri"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lft7;->c(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "ott_play"

    return-object p0
.end method
