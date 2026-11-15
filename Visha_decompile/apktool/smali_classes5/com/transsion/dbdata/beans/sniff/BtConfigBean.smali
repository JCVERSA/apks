.class public Lcom/transsion/dbdata/beans/sniff/BtConfigBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLOSE:I = 0x0

.field public static final OPEN:I = 0x1


# instance fields
.field public switch_status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwitch_status()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/BtConfigBean;->switch_status:I

    return p0
.end method

.method public isOpen()Z
    .locals 1

    iget p0, p0, Lcom/transsion/dbdata/beans/sniff/BtConfigBean;->switch_status:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSwitch_status(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/sniff/BtConfigBean;->switch_status:I

    return-void
.end method
