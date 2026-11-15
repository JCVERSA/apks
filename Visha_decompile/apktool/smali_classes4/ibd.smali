.class public Libd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv1d;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1d;

    invoke-direct {v0, p1}, Lv1d;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Libd;->a:Lv1d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Libd;->b:Ljava/lang/String;

    iput-object p2, p0, Libd;->c:Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;

    iput-object p3, p0, Libd;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Libd;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b()Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;
    .locals 0

    iget-object p0, p0, Libd;->c:Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;

    return-object p0
.end method

.method public c()Lv1d;
    .locals 0

    iget-object p0, p0, Libd;->a:Lv1d;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Libd;->b:Ljava/lang/String;

    return-object p0
.end method
