.class public Lcom/transsion/hubsdk/core/app/TranThubActionBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/app/ITranActionBarAdapter;


# instance fields
.field private mActionBar:Lcom/transsion/hubsdk/app/TranActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranActionBarImpl()Lcom/transsion/hubsdk/app/TranActionBar;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActionBar;->mActionBar:Lcom/transsion/hubsdk/app/TranActionBar;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/app/TranActionBar;

    invoke-direct {v0}, Lcom/transsion/hubsdk/app/TranActionBar;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActionBar;->mActionBar:Lcom/transsion/hubsdk/app/TranActionBar;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActionBar;->mActionBar:Lcom/transsion/hubsdk/app/TranActionBar;

    return-object p0
.end method


# virtual methods
.method public setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/app/TranThubActionBar;->getTranActionBarImpl()Lcom/transsion/hubsdk/app/TranActionBar;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/app/TranActionBar;->setShowHideAnimationEnabled(Landroid/app/ActionBar;Z)V

    return-void
.end method
