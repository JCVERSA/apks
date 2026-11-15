.class public Lcom/transsion/xuanniao/account/api/PalmInitialize;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/transsion/palmsdk/account/XNManager;->g()Lcom/transsion/palmsdk/account/XNManager;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/api/PalmInitialize$a;

    invoke-direct {v1}, Lcom/transsion/xuanniao/account/api/PalmInitialize$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/transsion/palmsdk/account/XNManager;->m(Lcom/transsion/palmsdk/account/XNManager$a;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
