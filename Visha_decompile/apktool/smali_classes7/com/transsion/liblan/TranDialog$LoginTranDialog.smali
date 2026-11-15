.class public Lcom/transsion/liblan/TranDialog$LoginTranDialog;
.super Lcom/transsion/liblan/TranDialog$IdTranDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginTranDialog"
.end annotation


# instance fields
.field private final mAskStore:Z

.field private final mDefaultUsername:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/transsion/liblan/TranDialog$IdTranDialog;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p5, p0, Lcom/transsion/liblan/TranDialog$LoginTranDialog;->mDefaultUsername:Ljava/lang/String;

    .line 4
    iput-boolean p6, p0, Lcom/transsion/liblan/TranDialog$LoginTranDialog;->mAskStore:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLzwa;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/transsion/liblan/TranDialog$LoginTranDialog;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private native nativePostLogin(JLjava/lang/String;Ljava/lang/String;Z)V
.end method


# virtual methods
.method public asksStore()Z
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-boolean p0, p0, Lcom/transsion/liblan/TranDialog$LoginTranDialog;->mAskStore:Z

    return p0
.end method

.method public bridge synthetic dismiss()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-super {p0}, Lcom/transsion/liblan/TranDialog$IdTranDialog;->dismiss()V

    return-void
.end method

.method public getDefaultUsername()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object p0, p0, Lcom/transsion/liblan/TranDialog$LoginTranDialog;->mDefaultUsername:Ljava/lang/String;

    return-object p0
.end method

.method public postLogin(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-wide v1, p0, Lcom/transsion/liblan/TranDialog$IdTranDialog;->mId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v1, v6

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/liblan/TranDialog$LoginTranDialog;->nativePostLogin(JLjava/lang/String;Ljava/lang/String;Z)V

    iput-wide v6, p0, Lcom/transsion/liblan/TranDialog$IdTranDialog;->mId:J

    :cond_0
    return-void
.end method
