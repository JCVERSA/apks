.class public Lcom/transsion/xuanniao/account/model/data/AddressesListRes;
.super Lcom/transsion/xuanniao/account/model/data/EncryptRes;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;
    }
.end annotation


# instance fields
.field public addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/model/data/EncryptRes;-><init>()V

    return-void
.end method
