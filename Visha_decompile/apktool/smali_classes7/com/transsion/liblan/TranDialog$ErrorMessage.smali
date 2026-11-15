.class public Lcom/transsion/liblan/TranDialog$ErrorMessage;
.super Lcom/transsion/liblan/TranDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorMessage"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/liblan/TranDialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lzwa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranDialog$ErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
