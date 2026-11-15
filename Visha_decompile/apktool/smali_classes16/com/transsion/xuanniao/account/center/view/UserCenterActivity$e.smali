.class public Lcom/transsion/xuanniao/account/center/view/UserCenterActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOppOp00/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;->G(Lcom/transsion/xuanniao/account/model/data/AccountRes;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;)V
    .locals 0

    const-string p0, "saveAvatar success 2"

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
