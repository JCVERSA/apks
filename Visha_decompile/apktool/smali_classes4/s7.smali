.class public abstract Ls7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lt7;Lu7;)Ls7;
    .locals 1

    invoke-static {}, Lagd;->a()V

    const-string v0, "AdSessionConfiguration is null"

    invoke-static {p0, v0}, Lagd;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AdSessionContext is null"

    invoke-static {p1, v0}, Lagd;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le3d;

    invoke-direct {v0, p0, p1}, Le3d;-><init>(Lt7;Lu7;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
.end method

.method public abstract c()V
.end method

.method public abstract d(Landroid/view/View;)V
.end method

.method public abstract e()V
.end method
