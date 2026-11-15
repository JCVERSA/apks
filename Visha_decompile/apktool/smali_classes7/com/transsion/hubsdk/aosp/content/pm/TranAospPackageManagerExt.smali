.class public Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$ITranPackageDeleteObserver;,
        Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt$TranAospPackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospPackageManagerExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/content/pm/TranAospPackageManagerExt;->mContext:Landroid/content/Context;

    return-void
.end method
