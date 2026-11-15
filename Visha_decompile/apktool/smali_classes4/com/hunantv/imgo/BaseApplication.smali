.class public Lcom/hunantv/imgo/BaseApplication;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field private final SDK_VERSION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0.5"

    iput-object v0, p0, Lcom/hunantv/imgo/BaseApplication;->SDK_VERSION:Ljava/lang/String;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/hunantv/imgo/BaseApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/hunantv/imgo/BaseApplication;->mContext:Landroid/content/Context;

    return-void
.end method
