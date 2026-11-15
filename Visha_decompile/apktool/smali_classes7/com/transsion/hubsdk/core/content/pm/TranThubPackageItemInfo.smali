.class public Lcom/transsion/hubsdk/core/content/pm/TranThubPackageItemInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranPackageItemInfo;


# instance fields
.field private mTranPackageItemInfo:Lcom/transsion/hubsdk/content/pm/TranPackageItemInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageItemInfo;->mTranPackageItemInfo:Lcom/transsion/hubsdk/content/pm/TranPackageItemInfo;

    new-instance v0, Lcom/transsion/hubsdk/content/pm/TranPackageItemInfo;

    invoke-direct {v0}, Lcom/transsion/hubsdk/content/pm/TranPackageItemInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageItemInfo;->mTranPackageItemInfo:Lcom/transsion/hubsdk/content/pm/TranPackageItemInfo;

    return-void
.end method


# virtual methods
.method public loadSafeLabel(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubPackageItemInfo;->mTranPackageItemInfo:Lcom/transsion/hubsdk/content/pm/TranPackageItemInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/content/pm/TranPackageItemInfo;->loadSafeLabel(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
