.class public Lcom/mgmi/net/bean/PlusSdkBootDataItem;
.super Lcom/mgmi/net/bean/BootDataItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mgmi/net/bean/BootDataItem;"
    }
.end annotation


# instance fields
.field public bootAdBean:Lcom/mgmi/net/bean/BootAdBean;

.field public nativeADDataRef:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private secondParsed:Z


# direct methods
.method public constructor <init>(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 0

    invoke-direct {p0}, Lcom/mgmi/net/bean/BootDataItem;-><init>()V

    iput-object p1, p0, Lcom/mgmi/net/bean/PlusSdkBootDataItem;->bootAdBean:Lcom/mgmi/net/bean/BootAdBean;

    return-void
.end method


# virtual methods
.method public isSecondParsed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/net/bean/PlusSdkBootDataItem;->secondParsed:Z

    return p0
.end method

.method public setNativeADDataRef(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgmi/net/bean/PlusSdkBootDataItem;->nativeADDataRef:Ljava/lang/Object;

    return-void
.end method

.method public setSecondParsed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgmi/net/bean/PlusSdkBootDataItem;->secondParsed:Z

    return-void
.end method
