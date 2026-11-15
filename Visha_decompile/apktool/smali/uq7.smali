.class public Luq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llf7;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    const-string p0, "com.palm.id.log"

    const-string p1, "startSmsRetriever onSuccess"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
